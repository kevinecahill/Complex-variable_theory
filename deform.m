clear all
close all
clc
gap = 0.05
x = 0:.001:2*pi;
fs = 14; sf = 16; hside = 2; r = 1.75;
x1 = 1/2; x2 = 2;
th1 = atan(1/x1); th2 = atan(1/x2);
r1 = sqrt(1 + x1^2); r2 = sqrt(1 + x2^2);
theta1 = -th1:.01:th1; theta2 = -th2:.01:th2;
plot(r*cos(x),r*sin(x),'k-','linewidth',2)
hold on
plot(r1*cos(theta1)-x1,r1*sin(theta1),'k-','linewidth',2)
plot(-r1*cos(theta1)+x1,r1*sin(theta1),'k-','linewidth',2)
plot(r2*cos(theta2)-x2,r2*sin(theta2),'k-','linewidth',2)
plot(-r2*cos(theta2)+x2,r2*sin(theta2),'k-','linewidth',2)
text('Interpreter','latex','String','$\wedge$','Position',[r1-x1-gap,0],'FontSize',sf)
text('Interpreter','latex','String','$\wedge$','Position',[-r1+x1-gap,0],'FontSize',sf)
text('Interpreter','latex','String','$\wedge$','Position',[r2-x2-gap,0],'FontSize',sf)
text('Interpreter','latex','String','$\wedge$','Position',[-r2+x2-gap,0],'FontSize',sf)
text('Interpreter','latex','String','region of analyticity','Position',[-10.5*gap,-1.40],'FontSize',fs)
plot(0,1,'k.','markersize',10)
plot(0,-1,'k.','markersize',10)
plot(r*cos(x),r*sin(x),'k-','linewidth',2)
set(gca,'xticklabel',[],'yticklabel',[])
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$Four Equal Contour Integrals'
%title(textt,'Interpreter','latex','FontSize',fs)
axis([-hside hside -hside hside])
set(gca,'xtick',[],'ytick',[])
print -dpdf deform.pdf
print -depsc deform.eps
print -deps /Users/kevin/papers/math/deform