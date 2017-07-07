fun cnt(xs::list:int list)=if xs=0 then
                                         let val c=ref 0
                                         in 
                                                  c:=!c+1;
                                                   cnt(tl(list))
                                          end;
                                        else
                                              cnt(tl(list));
                                                         