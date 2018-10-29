clear all
close all
clc
gap = 0.03; xgap = .8
x = gap:.001:2*pi-gap;
xu = xgap:.001:cos(gap);
yu = sin(gap);
theta = atan(sin(gap)/xgap);
xth = theta:0.001:2*pi-theta;
r = sqrt(xgap^2+sin(gap)^2) ;
fs = 14; sf = 16; hside = 1.2
plot(cos(x),sin(x),'k-','linewidth',2)
hold on
plot(xu,yu*ones(size(xu)),'k-','linewidth',2)
plot(xu,-yu*ones(size(xu)),'k-','linewidth',2)
plot(r.*cos(xth),r.*sin(xth),'k-','linewidth',2)
text('Interpreter','latex','String','$>$','Position',[-0.03,-1],'FontSize',sf)
text('Interpreter','latex','String','$>$','Position',[0.87,yu],'FontSize',sf)
text('Interpreter','latex','String','$<$','Position',[0.87,-yu],'FontSize',sf)
text('Interpreter','latex','String','$<$','Position',[-0.03,-r],'FontSize',sf)
text('Interpreter','latex','String','$z_0$','Position',[0.0,0.0],'FontSize',fs)
text('Interpreter','latex','String','$z$','Position',[.75,0.5],'FontSize',fs)
text('Interpreter','latex','String','$z^\prime$','Position',[.92,-0.45],'FontSize',fs)
text('Interpreter','latex','String','$z^{\prime\prime}$','Position',[.63,-0.30],'FontSize',fs)
text('Interpreter','latex','String','$\mathcal{C}_1$','Position',[.77,-0.72],'FontSize',fs)
text('Interpreter','latex','String','$\mathcal{C}_2$','Position',[.51,-0.46],'FontSize',fs)
plot(.4,.5,'k*','markersize',10)
plot(-.3,.2,'k*','markersize',10)
plot(-.2,-.3,'k*','markersize',10)
plot(.15,-.50,'k*','markersize',10)
plot(-1.1,.7,'k*','markersize',10)
plot(-1.0,-.6,'k*','markersize',10)
plot(1.1,.65,'k*','markersize',10)
plot(0.95,-.95,'k*','markersize',10)
set(gca,'xticklabel',[],'yticklabel',[])
%textt='$\!\!\!\!\!\!\!\!\!\!\!$Two Contours Around $z_0$'
%title(textt,'Interpreter','latex','FontSize',fs)
axis([-hside hside -hside hside])
print -dpdf Laurent.pdf
print -depsc Laurent.eps
print -deps /Users/kevin/papers/math/Laurent