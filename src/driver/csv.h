class CSV
{
private:
	vector<string>	m_data;
public:
	CSV( string file_name ){
		ofstream fs;
		fs.open( file_name );
		
	}

	string const& operator[](size_t index) const{ return m_data[index]; }
	size_t size() const{ return m_data.size(); }

	void readNextRow(istream& str){
		string	     line;
		getline(str, line);

		stringstream   lineStream(line);
		string	     cell;

		m_data.clear();
		while(getline(lineStream, cell, ',')){
			m_data.push_back(cell);
		}
		// This checks for a trailing comma with no data after it.
		if (!lineStream && cell.empty()){
			// If there was a trailing comma then add an empty element.
			m_data.push_back("");
		}
	}

	void writeNextRow( ostream& str, string addRow ){
		string	     line;
		getline(str, line);

		stringstream   lineStream(line);
		string	     cell;

		m_data.clear();
		while(getline(lineStream, cell, ',')){
			m_data.push_back(cell);
		}
		// This checks for a trailing comma with no data after it.
		if (!lineStream && cell.empty()){
			// If there was a trailing comma then add an empty element.
			m_data.push_back("");
		}
	}
};

istream& operator>>(istream& str, CSV& data){
	data.readNextRow(str);
	return str;
}   

class CSVIterator{   
private:
	istream* m_str;
	CSV   m_row;
public:
/*
	typedef input_iterator_tag     iterator_category;
	typedef CSV                      value_type;
	typedef size_t                 difference_type;
	typedef CSV*                     pointer;
	typedef CSV&                     reference;
*/
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
