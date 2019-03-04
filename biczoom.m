%task4_3,实现三次插值放大图片
function imt=biczoom(image,xscale,yscale)
%biczoom(image,scale)
%or biczoom(image,width,height)

[xs,ys]=size(image);

if nargin == 2
    yscale=xscale;
else if nargin ==3
      
      xscale=xscale/xs;
      yscale=yscale/ys;
    end
end

if xscale<=0
     sprintf('缩放倍数 scale的值应该大于0！');
end

imt=zeros(ceil(xs*xscale),ceil(ys*yscale));
image=double(image);
imagez=zeros(xs+4,ys+4);%给原图像周围加0
for i=3:xs+2
    for j=3:ys+2    
        imagez(i,j)=image(i-2,j-2);
    end
end



for zi=1:(xs*xscale)  %amplify th image
    x=zi/xscale;
    i=floor(x);%i,j为对应到原图上的坐标
     u=x-i;
     i = i + 2;
     A=[sw(1+u) sw(u) sw(1-u) sw(2-u)];  
    for zj=1:(ys*yscale)
        y=zj/yscale;%x，y为放大后图片对应原图的坐标
        j=floor(y);
        v=y-j;
        j = j + 2;
        C=[sw(2-v);sw(1-v);sw(v);sw(1+v)]; 
        B=[imagez(i-1:i+2,j+2),imagez(i-1:i+2,j+1),imagez(i-1:i+2,j),imagez(i-1:i+2,j-1)];
        imt(zi,zj)=A*B*C;
    end
end
imt=uint8(imt);
% figure,imshow(imt);
% axis on