val c=ref 0;
fun cnt(xs::list:int list)=if xs=0 then c:=c+1 cnt(tl(list)) else cnt(tl(list));
