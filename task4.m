%task4,��ֵ
I=imread('lena.bmp');

figure
% subplot(2,4,1);
imshow(I);
axis on
title('ԭʼͼ��')

I1=nearzoom(I,4);%����ڲ�ֵ
figure
% subplot(2,4,2);
imshow(I1);
axis on
title('�ҵ�����ڲ�ֵ')

I2=blizoom(I,4);%˫���Բ�ֵ
figure
% subplot(2,4,3);
imshow(I2);
axis on
title('�ҵ�˫���Բ�ֵ')

I3=biczoom(I,4);%����������ֵ
figure
% subplot(2,4,4);
imshow(I3);
title('�ҵ�����������ֵ')

I1_2=interp2(double(I),4,'nearest');%����ڲ�ֵ
I1_2=uint8(I1_2);
figure
% subplot(2,4,6);
imshow(I1_2);
axis on
title('����ڲ�ֵ')

I2_2=interp2(double(I),4,'linear');%˫���Բ�ֵ
I2_2=uint8(I2_2);
figure
% subplot(2,4,7);
imshow(I2_2);
axis on
title('˫���Բ�ֵ')

I3_2=interp2(double(I),4,'spline');%����������ֵ
I3_2=uint8(I3_2);
figure
% subplot(2,4,8);
imshow(I3_2);
axis on
title('����������ֵ')

