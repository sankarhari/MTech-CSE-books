val c=ref 0;
fun count(list:int list)=foldr((fn(x,c)=> if x=0 then 1 else 0)+c)0 list;