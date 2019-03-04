%task4,插值
I=imread('lena.bmp');

figure
% subplot(2,4,1);
imshow(I);
axis on
title('原始图像')

I1=nearzoom(I,4);%最近邻插值
figure
% subplot(2,4,2);
imshow(I1);
axis on
title('我的最近邻插值')

I2=blizoom(I,4);%双线性插值
figure
% subplot(2,4,3);
imshow(I2);
axis on
title('我的双线性插值')

I3=biczoom(I,4);%三次样条插值
figure
% subplot(2,4,4);
imshow(I3);
title('我的三次样条插值')

I1_2=interp2(double(I),4,'nearest');%最近邻插值
I1_2=uint8(I1_2);
figure
% subplot(2,4,6);
imshow(I1_2);
axis on
title('最近邻插值')

I2_2=interp2(double(I),4,'linear');%双线性插值
I2_2=uint8(I2_2);
figure
% subplot(2,4,7);
imshow(I2_2);
axis on
title('双线性插值')

I3_2=interp2(double(I),4,'spline');%三次样条插值
I3_2=uint8(I3_2);
figure
% subplot(2,4,8);
imshow(I3_2);
axis on
title('三次样条插值')

