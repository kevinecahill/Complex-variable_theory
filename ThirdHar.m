clear all
close all
clc
gap = 0.6; xgap = 0.5
x = pi + gap:.001:2*pi-gap;
yh = 1.1
y = -xgap:0.03:xgap
fs = 14; sf = 16; hside = 1
plot(cos(x),yh + sin(x),'k-','linewidth',2)
hold on
plot(cos(x),-yh - sin(x),'k-','linewidth',2)
plot(0*ones(size(y)),y,'k-','linewidth',2)
plot(-0.5*ones(size(y)),y,'k.','markersize',6)
plot(0.5*ones(size(y)),y,'k.','markersize',6)
set(gca,'xticklabel',[],'yticklabel',[])
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!$Third-Harmonic Microscopy'
%title(textt,'Interpreter','latex','FontSize',fs)
text('Interpreter','latex','String','$-L$','Position',[-.9,-.7],'FontSize',sf)
text('Interpreter','latex','String','$L$','Position',[.8,-.7],'FontSize',sf)
text('Interpreter','latex','String','visible','Position',[-0.1,-.7],'FontSize',sf)
text('Interpreter','latex','String','unseen','Position',[-0.6,-.7],'FontSize',sf)
text('Interpreter','latex','String','unseen','Position',[+0.4,-.7],'FontSize',sf)
axis([-hside hside -hside hside-.2])
set(gca,'xtick',[],'ytick',[])
print -dpdf ThirdHar.pdf
print -depsc ThirdHar.eps
print -deps /Users/kevin/papers/math/ThirdHar