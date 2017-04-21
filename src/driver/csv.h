using namespace std;

typedef istream_iterator<string> CSVIterator;

class CSV
{
private:
	vector<string> row_data;
	const bool read_file;
public:
    ofstream ofs;
	ifstream ifs;
    const string separator;
public:
    CSV( const string filename, const bool read = true, const string separator = "," ) : ofs(), separator(separator), read_file(read){
        if(!read_file){
			ofs.exceptions(ios::failbit | ios::badbit);
			ofs.open(filename, ios_base::app);
		} else {
			ifs.exceptions(ios::failbit | ios::badbit);
			ifs.open(filename);
		}
    }

    ~CSV(){
        flush();
        ofs.close();
    }

    void flush(){ ofs.flush(); }

    void endrow(){ ofs << endl; }

    CSV& operator << ( CSV& (* val)(CSV&)){ return val(*this); }

    CSV& operator << (const char * val){
        ofs << '"' << val << '"' << separator;
        return *this;
    }

    CSV& operator << (const string & val){
        ofs << '"' << val << '"' << separator;
        return *this;
    }

    CSV& operator << (const vector<string>& vec_str){
        vector<string>::const_iterator iter;
		for( iter = vec_str.begin(); iter != vec_str.end(); iter++ ){
			ofs << '"' << *iter << '"' << separator;
		}
		ofs << endl; 
        return *this;
    }
/*
    template<typename T>
    CSV& operator << (const T& val){
        ofs << val << separator;
        return *this;
    }
*/
	string const& operator[](size_t index) const{ return row_data[index]; }
	size_t size() const{ return row_data.size(); }

	void readNextRow(){
		string line;
		getline( ifs, line );

		stringstream lineStream(line);
		string cell;

		row_data.clear();
			
		char separator_char[1];
		strcpy( separator_char, separator.c_str() );
		while(getline(lineStream, cell, separator_char[0] )){
			row_data.push_back(cell);
		}
		// This checks for a trailing comma with no data after it.
		if (!lineStream && cell.empty()){
			// If there was a trailing comma then add an empty element.
			row_data.push_back("");
		}
	}

	vector<string> getRowData(){ return row_data; };
/*	
	CSV& operator >> (vector<string>& vec_str){
		readNextRow(ifs);
		return *;
	}   
*/
};

inline static CSV& endrow(CSV& file){
	file.endrow();
	return file;
}

inline static CSV& flush(CSV& file){
	file.flush();
	return file;
}

/*
class CSVIterator{   
private:
	istream* m_str;
	CSV   m_row;
public:

	typedef input_iterator_tag     iterator_category;
	typedef CSV                      value_type;
	typedef size_t                 difference_type;
	typedef CSV*                     pointer;
	typedef CSV&                     reference;

	CSVIterator(istream& str): m_str(str.good()?&str:NULL) { ++(*this); }
	CSVIterator():m_str(NULL) {}

	// Pre Increment
	CSVIterator& operator++(){
		if (m_str){
			if (!((*m_str) >> m_row)){
				m_str = NULL;
			}
		}
		return *this;
	}

	// Post increment
	CSVIterator operator++(int){
		CSVIterator tmp(*this);
		++(*this);
		return tmp;
	}
	CSV const& operator*()  const { return m_row; }
	CSV const* operator->() const { return &m_row; }

	bool operator==(CSVIterator const& rhs){
		return ( (this == &rhs) || ( (this->m_str == NULL) 
				&& (rhs.m_str == NULL) ) );
	}
	bool operator!=(CSVIterator const& rhs){
		return !((*this) == rhs);
	}
};
*/
