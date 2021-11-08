clear,clc
%%%%%%带padding和stride的卷积
a=[2 3 7 4 6 2 9;6 6 9 8 7 4 3;3 4 8 3 8 9 7;7 8 3 6 6 3 4;4 2 1 8 3 4 6;
    3 2 4 1 9 8 3;0 1 3 9 2 1 4];
b=[3 4 4;1 0 2; -1 0 3];

p=1;
s=2;

result = cnfps(a,b,p,s);

figure(1)
imagesc(a)
colormap(flipud(gray));
figure(2)
imagesc(cnfps(a,b,p,s))
colormap(flipud(gray));




function  conv_nfps = cnfps(a,b,p,s)
n=size(a,1);
f=size(b,1);
%%%%%%%%%padding start
if p~=0
temp=zeros(n+2*p,n+2*p);
for i=1:n
    for j=1:n
    temp(i+p,j+p)=a(i,j);
    end
end
a=temp;
end
n=size(a,1);
p=-1;
%%%%%%%%%padding off
conv_nfps=zeros(fix((n+2*p-f)/s)+1,fix((n+2*p-f)/s)+1);
i=1;j=1;
for i=1:s:n-f+1
    for j=1:s:n-f+1
    res=a(i:i+f-1,j:j+f-1).*b;
    if p==-1
    conv_nfps(ceil(i/2),ceil(j/2))=sum(sum(res));
    else
        conv_nfps(i,j)=sum(sum(res));
    end
    end
end
conv_nfps
end

