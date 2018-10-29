clear all
close all
clc
frac = 0.6;
x = 0.0:.001:1.0;
y = 0.0*ones(size(x));
xu = 0:.001:1./sqrt(1 + frac^2);
d = sqrt(1 + frac^2);
theta = atan(frac);
th = 0:.02:theta;
fs = 14; sf = 16; hside = 1; bf=18;
plot(x,y,'k-','linewidth',2)
hold on
plot(xu,frac.*xu,'k-','linewidth',2)
plot(cos(th),sin(th),'k.','markersize',8)
set(gca,'xticklabel',[],'yticklabel',[])
%textt='$\!\!\!\!\!\!\!\!\!\!\!$Pie-Shaped Contour'
%title(textt,'Interpreter','latex','FontSize',fs)
text('Interpreter','latex','String','$>$','Position',[.5,0],'FontSize',bf)
text('Interpreter','latex','String','$\theta$','Position',[.15,.05],'FontSize',sf)
text('Interpreter','latex','String','$z = 0$','Position',[-.06,-.05],'FontSize',sf)
text('Interpreter','latex','String','$z = R$','Position',[.94,-.05],'FontSize',sf)
text('Interpreter','latex','String','$z = R \, e^{i \theta}$','Position',[1/d - 0.06,frac/d + 0.06],'FontSize',sf)
axis([-.2 1.2 -.2 0.7])
print -dpdf pieShape.pdf
print -depsc pieShape.eps
print -deps /Users/kevin/papers/math/pieShape