; ModuleID = 'testing.ll'
source_filename = "testing.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %sum1, align 4
  store i32 0, i32* %sum2, align 4
  store i32 0, i32* %i, align 4
  br label %codeRepl1

codeRepl1:                                        ; preds = %entry
  call void @main_for.cond(i32* %i, i32* %sum1)
  br label %for.end

for.end:                                          ; preds = %codeRepl1
  store i32 0, i32* %j, align 4
  br label %codeRepl

codeRepl:                                         ; preds = %for.end
  call void @main_for.cond1(i32* %j, i32* %sum2)
  br label %for.end7

for.end7:                                         ; preds = %codeRepl
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @main_for.cond1(i32* %j, i32* %sum2) #1 {
newFuncRoot:
  br label %for.cond1

for.end7.exitStub:                                ; preds = %for.cond1
  ret void

for.cond1:                                        ; preds = %newFuncRoot, %for.inc5
  %0 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %0, 10
  br i1 %cmp2, label %for.body3, label %for.end7.exitStub

for.body3:                                        ; preds = %for.cond1
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %sum2, align 4
  %add4 = add nsw i32 %2, %1
  store i32 %add4, i32* %sum2, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.body3
  %3 = load i32, i32* %j, align 4
  %inc6 = add nsw i32 %3, 1
  store i32 %inc6, i32* %j, align 4
  br label %for.cond1
}

; Function Attrs: nounwind uwtable
define internal void @main_for.cond(i32* %i, i32* %sum1) #1 {
newFuncRoot:
  br label %for.cond

for.end.exitStub:                                 ; preds = %for.cond
  ret void

for.cond:                                         ; preds = %newFuncRoot, %for.inc
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end.exitStub

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %sum1, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %sum1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
