clear all
close all
clc
gap = 0.04
x = 0:.001:2*pi;
fs = 16; sf = 18; hside = 1.25
plot(cos(x),sin(x),'k-','linewidth',2)
hold on
text('Interpreter','latex','String','$>$','Position',[-0.03,-1],'FontSize',sf)
plot(0,0,'k.','markersize',10)
set(gca,'xticklabel',[],'yticklabel',[])
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Taylor-Series Contour Around $z_0$'
%title(textt,'Interpreter','latex','FontSize',fs)
text('Interpreter','latex','String','$z_0$','Position',[0.05,0],'FontSize',sf)
text('Interpreter','latex','String','$z$','Position',[0.5,0.5],'FontSize',sf)
text('Interpreter','latex','String','$z^\prime$','Position',[0.85,-0.60],'FontSize',sf)
axis([-hside hside -hside hside])
set(gca,'xtick',[],'ytick',[])
print -deps ~/papers/math/Taylor.pdf
print -depsc ~/papers/math/Taylor.eps
print -deps /Users/kevin/papers/math/Taylor