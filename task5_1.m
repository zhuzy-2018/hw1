%task5,把lena和elain图像分别进行水平shear（参数可设置为1.5，或者自行选择）和旋转30度，并采用用近邻、双线性和双三次插值法zoom到2048*2048；
I1=imread('lena.bmp');
I2=imread('elain1.bmp');
shearmat=[1,1;0,1];
I1=shear(I1,shearmat);
I2=shear(I2,shearmat);
I1=imrotate(I1,30,'bicubic','loose');
I1_n=nearzoom(I1,2048,2048);
I1_bli=blizoom(I1,2048,2048);
I1_bic=biczoom(I1,2048,2048);
I2=imrotate(I2,30,'bicubic','loose');
I2_n=nearzoom(I2,2048,2048);
I2_bli=blizoom(I2,2048,2048);
I2_bic=biczoom(I2,2048,2048);
figure

subplot(231),imshow(I1_n);title('lena-shear-rotate-near');
subplot(232),imshow(I1_bli);title('lena-shear-rotate-bli');
subplot(233),imshow(I1_bic);title('lena-shear-rotate-bic');
subplot(234),imshow(I2_n);title('elain-shear-rotate-near');
subplot(235),imshow(I2_bli);title('elain-shear-rotate-bli');
subplot(236),imshow(I2_bic);title('elain-shear-rotate-bic');