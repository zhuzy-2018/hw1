%task4_1,ʵ�ֽ��ڲ�ֵ�Ŵ�ͼƬ
function imt=nearzoom(image,xscale,yscale)
%nearzoom(image,scale)
%or nearzoom(image,width,height)
[xs,ys] = size(image);

if nargin == 2
    yscale=xscale;
else if nargin ==3
      xscale=xscale/xs;
      yscale=yscale/ys;
    end
end
if xscale <= 0
     xscale('���ű��� scale��ֵӦ�ô���0��');
end

imt=zeros(ceil(xs*xscale),ceil(ys*yscale));
imt=uint8(imt);        
for i=1:(ceil(xs*xscale))  %amplify th image
    
    if ceil(i/xscale)>xs  %��ֹ�������Ϊxscale���double����С�ˣ�����XScale֮���ٽ�һ��ȡ�����ܻ��������ͬ
        i=i-1;
    end
    
    for j=1:ceil((ys*yscale))
        
         if ceil(j/yscale)>ys 
        i=i-1;
         end
    
        imt(i,j) = image(ceil(i/xscale),ceil(j/yscale));  

    end
end


%  figure,imshow(imt);
%  axis on