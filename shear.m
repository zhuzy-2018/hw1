%task5,��lena��elainͼ��ֱ����ˮƽshear������������Ϊ1.5����������ѡ�񣩺���ת30�ȣ��������ý��ڡ�˫���Ժ�˫���β�ֵ��zoom��2048*2048��
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
