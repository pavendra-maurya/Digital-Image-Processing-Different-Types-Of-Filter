clc;


A = imread('im.jpg') ;
 figure,imshow(A);
 A=rgb2gray(A);
  figure,imshow(A);
 A=imnoise(A,'salt & pepper',0.1);
inpui=A;
 figure,imshow(A);
[m n] = size(A); 
Y=zeros(m+2,n+2);
Y(2:m+1,2:n+1)=A;
z=A;
for i=2:m+1
    for j=2:n+1
           k=Y(i-1:i+1,j-1:j+1);
            z(i-1,j-1) = round(sum(k(:))/9);
    end
end 
figure,imshow(z);
outi=z;
 
 snr1=usnr(outi,inpui)
psnr1=upsnr(outi,inpui)

clear all
