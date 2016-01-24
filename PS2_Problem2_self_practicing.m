

function xz=biseczero (func,a,c);

func=@(q) 0.5*q+q.^0.5-2
a= 0.0
c= 5


eps=10e-5;
 
fa=feval (func,a);
fc=feval (func,c);
 
if fa*fc>0 || a>c
     error ('initial points unsuitable!')
end
 
dist=c-a;
while dist> eps
     b=(a+c)/2;
     fb=feval (func,b);
     if fa*fb<0
        c=b
        fc=fb
     elseif fb*fc<0
        a=b
        fa=fb
     end
     dist=c-a
 end
 xz=b
 

fzero(@func,q,[ ],[0.0: 5])

         
 