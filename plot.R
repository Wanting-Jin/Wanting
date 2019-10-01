##R绘图
plot(x, y, main="散点图", xlab="横坐标", ylab="纵坐标",
     main="",xub="") #绘制散点图等多种图形
hist() #直方图
boxplot() #箱线图
stripchart() #点图
barplot() #条形图
dotplot() #点图
piechart() #饼图

abline(h=yvalues, v=xvalues)#添加参考线
lines() #添加线
curve(dnorm(x), add = T,col = "red") #添加曲线
abline(h = 0.5, v = 0.6) #添加给定斜率的线
points() #添加点
segments() #折线
arrows() #箭头
axis() #坐标轴
box() #外框
title() #标题
text(1.2,1.2,"文字内容") #文字
mtext() #图边文字
legend(location, title, legend, ...)#添加图注

#设置参数
par(font= , lty= , lwd= , pch= ,cex= ,pin= c(a,b),mai= c(a,b,c,d))
xlab= #横坐标
ylab= #纵坐标
xlim= #横坐标范围
ylim= #纵坐标范围
main= #标题
sub= #副标题
  opar <- par(no.readonly=TRUE)#保存当前参数设置
par(mfrow = c(nrows,ncols))#组合多幅图
layout(matrix(c(1, 1, 2, 3), 2, 2, byrow = TRUE),
       widths=c(3, 1), heights=c(1, 2))#组合多幅图精细布局
par(fig=c(0, 0.8, 0, 0.8))#多幅图形布局精细控制

png("picturesname.png")
#插入完整绘图语句，即可保存到当前工作目录中相应文件
dev.off()
dev.new()#不覆盖原有图形而开启新窗口绘图 

rainbow(n) #创建n中连续“彩虹色”
mycolors <- brewer.pal(n, "Set1")#用RCOlorBrewer包创建颜色值向量
display.brewer.all(); brewer.pal.info#查看RCOlorBrewer中全部调色板
gray(0:10/10)#生成多阶灰度色