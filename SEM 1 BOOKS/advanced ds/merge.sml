fun merge([], ys)=ys
   | merge(xs, [])=xs
   | merge(x::xs, y::ys)= 
     if x = y then x::merge(xs, ys)
     else if x < y then x::merge(xs, y::ys)
     else y::merge(x::xs, ys);


fun getValue() =
    Option.getOpt(Int.fromString(implode(rev(tl(rev(explode (valOf(TextIO.inputLine TextIO.stdIn))))))),0);


fun getlist(n : int)=
  if n=0 then []
  else 
    getValue()::getlist(n-1);   
 

print "Enter Number of elements in list-1 ";

val n1 = getValue();

print "Enter the elements of the list-1 ";

val l1 = getlist(n1);

print "Enter the Number of elements in  list-2 ";

val n2 = getValue();

print "Enter the elements of the list-2 ";

val l2 = getlist(n2);

merge(l1, l2);

OS.Process.exit OS.Process.success;
