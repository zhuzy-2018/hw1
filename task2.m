% task2����ͼ���λ������
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
title(sprintf('%dλ�Ҷ�ͼ��',(9-bit))); 

end