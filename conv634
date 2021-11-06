clear,clc
a=[3 0 1 2 7 4; 1 5 8 9 3 1; 2 7 2 5 1 3; 0 1 3 1 7 8; 4 2 1 6 2 8; 2 4 5 2 3 9];
b=[1 0 -1;1 0 -1; 1 0 -1];
a=zeros(1000,1000);
for i=1:1000
    for j=1:1000
        if j<=500
            a(i,j)=1;
        end
    end
end
a



result = c634(a,b);

figure(1)
imagesc(a)
colormap(flipud(gray));
figure(2)
imagesc(c634(a,b))
colormap(flipud(gray));




function  conv634 = c634(a,b)
m=size(a,1);
n=size(b,1);
conv634=zeros(m-n+1,m-n+1);
i=1;j=1;
for i=1:m-n+1
    for j=1:m-n+1
    res=a(i:i+n-1,j:j+n-1).*b;
    conv634(i,j)=sum(sum(res));
    end
end
conv634
end

