%task3，求图像的均值方差
I=imread('lena.bmp');
i=double(I);
i_mean=mean2(i)%均值
s=var(i(:))%方差