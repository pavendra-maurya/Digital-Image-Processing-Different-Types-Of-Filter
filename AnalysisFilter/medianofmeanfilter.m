clc;
N=3;
M=N;
t=floor(N/2);
y=floor(M/2);


A = imread('im.jpg') ;
 figure,imshow(A);
 A=rgb2gray(A);
  figure,imshow(A);
 A=imnoise(A,'salt & pepper',0.1);
 inpui=A;
 figure,imshow(A);
[m n] = size(A); 
Y=zeros(m+2*t,n+2*y);
Y(t+1:m+t,y+1:n+y)=A;
z=A;
kl=m+2*t-t;
hj=n+2*y-y;
for i=t+1:kl
    for j=y+1:hj
           k=Y(i-t:i+t,j-y:j+y);
            z(i-t,j-y) = round(sum(k(:))/9);
    end
end 
figure,imshow(z);

Y=zeros(m+2*t,n+2*y);
Y(t+1:m+t,y+1:n+y)=z;
kl=m+2*t-t;
hj=n+2*y-y;
for i=t+1:kl
    for j=y+1:hj
           k=Y(i-t:i+t,j-y:j+y);
            z(i-t,j-y) = median(k(:));
    end
end 
figure,imshow(z);

outi=z;
 snr1=usnr(outi,inpui)
psnr1=upsnr(outi,inpui)

clear all
