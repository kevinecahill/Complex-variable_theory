clear all
close all
clc
gap = 0.03; r = 5; hside = 6.; lgap =0.15; s = 0.5; sl = -0.8
x = 0:.03:2*pi;
xm = -hside:.03:hside;
plot(r*cos(x),r*sin(x),'k.','markersize',6) % big circle
hold on
plot(xm,0*ones(size(xm)),'k-','linewidth',1)  % x-axis
plot(.7*r,-4*lgap,'k*','markersize',6) % right pole
plot(-.7*r,+4*lgap,'k*','markersize',6) % left pole
fs = 14; sf = 14; ff = 18
text('Interpreter','latex','String','$>$','Position',[0,0],'FontSize',ff)
text('Interpreter','latex','String','$<$','Position',[-lgap,r],'FontSize',ff)
text('Interpreter','latex','String','$<$','Position',[-lgap,-r],'FontSize',ff)
text('Interpreter','latex','String','$x^0 < 0$','Position',[-4*lgap,.8*r],'FontSize',sf)
text('Interpreter','latex','String','$x^0 > 0$','Position',[-4*lgap,-.8*r],'FontSize',sf)
text('Interpreter','latex','String','$E_q - i \epsilon$','Position',[.7*r-4*lgap,-7*lgap],'FontSize',sf)
text('Interpreter','latex','String','$\mbox{} - E_q + i \epsilon$','Position',[-.7*r-4*lgap,+7*lgap],'FontSize',sf,'Color', 'k')
set(gca,'xticklabel',[],'yticklabel',[])
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Ghost Contours and the Feynman Propagator'
%title(textt,'Interpreter','latex','FontSize',fs)
axis('equal')
axis([-hside hside -hside hside])
print -deps ~/papers/math/Fprop.eps
print -depsc ~/papers/math/Fpropc.eps
print -deps /Users/kevin/papers/math/Fprop