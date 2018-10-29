clear all
close all
clc
gap = 0.03; r = 5; hside = 7.; lgap =0.15; s = 0.5; sl = -0.8;
dth = pi/16; th1 = pi/4 - dth; th2 = pi/4 + dth
x1 = 0:.01:th1;
x2 = th2:.01:2*pi;;
xa = -hside:.01:2*hside; ya = -hside:.01:hside
th = 0:.01:2*pi
plot(r*cos(x1),r*sin(x1),'k-','linewidth',1) % big circle
hold on
plot(r*cos(x2),r*sin(x2),'k-','linewidth',1) % big circle
plot(xa,0*ones(size(xa)),'k-','linewidth',1)  % x-axis
plot(0*ones(size(ya)),ya,'k-','linewidth',1)  % y-axis
xl = r*cos(th1); yl = r*sin(th1)
xu = r*cos(th2); yu = r*sin(th2)
xc = (xl+xu)/2; yc = (yl+yu)/2
r2 = sqrt((xu-xc)^2+(yu-yc)^2)
plot(r2*cos(th)+xc,r2*sin(th)+yc,'k-','linewidth',1) 
fs = 14; sf = 14; ff = 18
text('Interpreter','latex','String','$<$','Position',[-lgap,r],'FontSize',ff)
text('Interpreter','latex','String','$>$','Position',[-lgap,-r],'FontSize',ff)
text('Interpreter','latex','String','$<$','Position',[xc,yc+r2],'FontSize',sf)
text('Interpreter','latex','String','$<$','Position',[xc,yc-r2],'FontSize',sf)
text('Interpreter','latex','String','$w$','Position',[xc,yc],'FontSize',sf)
text('Interpreter','latex','String','$T(z) \, T(w)$','Position',[xc-r2,r],'FontSize',sf)
text('Interpreter','latex','String','$|z| > |w|$','Position',[xc+4*r2/3,r-r2],'FontSize',sf)
text('Interpreter','latex','String','$T(w) \, T(z)$','Position',[xc-3*r2,r-3*r2],'FontSize',sf)
text('Interpreter','latex','String','$|z| < |w|$','Position',[xc-4*r2/3,r-4*r2],'FontSize',sf)
set(gca,'xticklabel',[],'yticklabel',[])
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Radial Order'
%title(textt,'Interpreter','latex','FontSize',fs)
axis([-0.9*hside 1.06*hside -0.9*hside hside])
set(gca,'xtick',[],'ytick',[])
print -deps /Users/kevin/papers/math/radialOrder