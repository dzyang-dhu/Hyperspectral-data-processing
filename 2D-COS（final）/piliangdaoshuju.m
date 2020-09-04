B=[];%产生一个空矩阵
for i=0:10
data=zeros(396,1);%生成一个行*列为396*1的零矩阵  396行指的是波长点的数量 
for j=1:3
    s=strcat(num2str(i),'-',num2str(j),'.txt');%'-'是取得i和j之间的链接符。如果是1.2那就是'.'，1-1，1-2.。。
    k=importdata(s);
    t=k(:,2);%如果原数据的第一列是光的波数，第二列才是吸光度，那么这里写2，提取第二列数字
    data=data+t;
end
    data=data/3;
    B=[B,data];
end 