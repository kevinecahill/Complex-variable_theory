clear all
close all
clc
gap = 0.04;
x = gap:.001:2*pi-gap;
xu = .15:.001:cos(gap);
yu = sin(gap);
theta = atan(sin(gap)/0.15);
xth = theta:0.001:2*pi-theta;
r = sqrt(.15^2+sin(gap)^2) ;
fs = 14; sf = 16; hside = 1.2;
plot(cos(x),sin(x),'k-','linewidth',2)  % big circle
hold on
plot(xu,yu*ones(size(xu)),'k-','linewidth',2)  % line above +x-axis
plot(xu,-yu*ones(size(xu)),'k-','linewidth',2) % line below +x-axis
plot(r.*cos(xth),r.*sin(xth),'k-','linewidth',2)  % small circle
text('Interpreter','latex','String','$>$','Position',[-0.03,-1],'FontSize',sf)
text('Interpreter','latex','String','$>$','Position',[0.47,yu],'FontSize',sf)
text('Interpreter','latex','String','$<$','Position',[0.47,-yu],'FontSize',sf)
text('Interpreter','latex','String','$<$','Position',[-0.03,-r],'FontSize',sf)
text('Interpreter','latex','String','$z_0$','Position',[0.0,0.0],'FontSize',fs)
text('Interpreter','latex','String','$\mathcal{C''}$','Position',[0.85,-0.6],'FontSize',sf)
set(gca,'xticklabel',[],'yticklabel',[]);
%textt='$\!\!\!\!\!\!\!\!\!\!\!$The Contour $\mathcal{C''}$ Around $z_0$'
%title(textt,'Interpreter','latex','FontSize',fs)
axis([-hside hside -hside hside])
print -dpdf CauchyIF.pdf
print -depsc CauchyIF.eps
print -deps /Users/kevin/papers/math/CauchyIF