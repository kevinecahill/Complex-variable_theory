clear all
close all
clc
x88 = -8.0:0.01:8.0;
y88 = -8.0:0.01:8.0;
yp8 = 8.0;
ym8 = -8.0;
xp8 = 8.0;
xm8 = -8.0;
fs = 14;
sf = 18;
plot(x88,yp8*ones(size(x88)),'k-','linewidth',2)
hold on
plot(x88,ym8*ones(size(x88)),'k-','linewidth',2)
plot(xm8*ones(size(y88)),y88,'k-','linewidth',2)
plot(xp8*ones(size(y88)),y88,'k-','linewidth',2)
axis([-10. 10. -10. 10.])
text('Interpreter','latex','String','$>$','Position',[-0.25,-8.0],'FontSize',sf)
text('Interpreter','latex','String','$<$','Position',[-0.25,8.0],'FontSize',sf)
text('Interpreter','latex','String','$\vee$','Position',[-8.25,0],'FontSize',sf)
text('Interpreter','latex','String','$\wedge$','Position',[7.75,0],'FontSize',sf)
x22 = -2.0:0.01:2.0;
y0d2 = 0.0:0.2:2.0;
y0s2 = 0.0:0.01:2.0;
y0 = 0.; yp2 = 2.;ym2 = -2.;x0 = 0.;xp2 = 2.;xm2 = -2.
plot(x22,y0*ones(size(x22)),'k-','linewidth',2)
plot(x22,yp2*ones(size(x22)),'k-','linewidth',2)
plot(xm2*ones(size(y0s2)),y0s2,'k-','linewidth',2)
plot(xp2*ones(size(y0s2)),y0s2,'k-','linewidth',2)
plot(x0*ones(size(y0d2)),y0d2,'k:','linewidth',2)
grid on
text('Interpreter','latex','String','$\wedge$','Position',[1.8,1],'FontSize',fs)
text('Interpreter','latex','String','$\vee$','Position',[-2.2,1],'FontSize',fs)
text('Interpreter','latex','String','$>$','Position',[-1.2,0],'FontSize',fs)
text('Interpreter','latex','String','$>$','Position',[0.8,0],'FontSize',fs)
text('Interpreter','latex','String','$<$','Position',[-1.2,2],'FontSize',fs)
text('Interpreter','latex','String','$<$','Position',[0.8,2],'FontSize',fs)
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$The Cauchy Integral Theorem'
%title(textt,'Interpreter','latex','FontSize',fs)
set(gca,'xticklabel',[],'yticklabel',[])
print -dpdf CauchyI.pdf
print -depsc CauchyI.eps
print -deps /Users/kevin/papers/math/CauchyI