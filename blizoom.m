%task4_2,ʵ��˫���Բ�ֵ�Ŵ�ͼƬ
function imt=blizoom(image,xscale,yscale)
%blizoom(image,scale)
%or blizoom(image,width,height)

[xs,ys]=size(image);

if nargin == 2
    yscale=xscale;
else if nargin ==3
      xscale=xscale/xs;
      yscale=yscale/ys;
    end
end

if xscale<=0||yscale<=0
     sprintf('���ű��� scale��ֵӦ�ô���0��');
end


imt=zeros(ceil(xs*xscale),ceil(ys*yscale));

image=double(image);
imagez=zeros(xs+2,ys+2);%��ԭͼ����Χ��0
for i=2:xs+1
    for j=2:ys+1    
        imagez(i,j)=image(i-1,j-1);
    end
end

for zi=1:(xs*xscale)  %amplify th image
    for zj=1:(ys*yscale)
        x=zi/xscale;
        y=zj/yscale;%�Ŵ��ͼƬ��Ӧԭͼ������
        i=floor(x);%��Ӧ��ԭͼ�ϵ�����
        u=x-i;
        j=floor(y);
        v=y-j;
        i = i + 1; j = j + 1;
        imt(zi,zj) = (1-u)*(1-v)*imagez(i,j)+ (1-u)*v*imagez(i,j+1)+u*(1-v)*imagez(i+1,j)+u*v*imagez(i+1,j+1);

    end
end
imt=uint8(imt);
% figure,imshow(imt);
% axis on