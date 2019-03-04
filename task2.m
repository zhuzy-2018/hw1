% task2，将图像的位数降低
I=imread('lena.bmp');
for bit=[1:8];
maxint=uint8(2^bit);

% BWI=imbinarize(I);
% BWI=im2bw(I,int);
% BWI=imadjust(I,[0;1],[0;int]);

iafter=(I/maxint)*maxint;
% subplot(2,4,bit)
figure;
imshow(iafter);
title(sprintf('%d位灰度图像',(9-bit))); 

end