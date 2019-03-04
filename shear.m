%task5,把lena和elain图像分别进行水平shear（参数可设置为1.5，或者自行选择）和旋转30度，并采用用近邻、双线性和双三次插值法zoom到2048*2048；
function IS=shear(image,shearmat);
%shearmat should be a 2x2 mat:[1,0;m,1]
[xs,ys]=size(image);
IS=zeros(xs+shearmat(2,1)*ys,shearmat(1,2)*xs+ys);
IS=uint8(IS);
for i=1:xs
    for j=1:ys
        IS(i+j*shearmat(2,1),shearmat(1,2)*i+j)=image(i,j);
    end
end
% figure
% imshow(IS);
% axis on
