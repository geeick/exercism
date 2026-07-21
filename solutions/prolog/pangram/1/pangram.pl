
pangram(Sentence):-
    string_lower(Sentence, Lower),
    string_chars(Lower, Chars),
    forall(member(Letter, [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]),
       member(Letter, Chars)).
