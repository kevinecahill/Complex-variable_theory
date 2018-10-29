clear all
close all
clc
gap = 0.03; r = 5; hside = 6.; lgap =0.15; s = 0.76; sl = -0.8
x = gap:.03:pi-gap;
xm = pi + gap:.03:2*pi-gap;
yu = r*sin(gap);
r0 = yu % radius of little circle around origin
r2 = 0.4 % radius of small circle around -1
cut = 0:0.001:hside  % cut
xu = 0:.001:r*cos(gap);
phi = asin(yu/r2);
xth = pi/2:0.01:3*pi/2;
xl = -r*cos(gap):.01:-r2*cos(phi) -1;
xc1 = -pi + phi:0.03:pi - phi; 
fs = 14; sf = 16; ff = 18
plot(r*cos(x),r*sin(x),'k.','markersize',6) % big upper circle
hold on
plot(r*cos(xm),r*sin(xm),'k.','markersize',6)  % big lower circle
plot(cut,0*ones(size(cut)),'k-','linewidth',1)  % cut
plot(xu,yu*ones(size(xu)),'k-','linewidth',1.5)  % line above +x-axis
plot(xu,-yu*ones(size(xu)),'k--','linewidth',1.5) % line below +x-axis
plot(r0*cos(xth),r0*sin(xth),'k-','linewidth',1.5) % little circle around (0,0)
plot(xl,yu*ones(size(xl)),'k-.','linewidth',1.5) % line above -x-axis
plot(xl,-yu*ones(size(xl)),'k-.','linewidth',1.5) % line below -x-axis
plot(r2*cos(xc1)-1,r2*sin(xc1),'k-.','linewidth',1.5) % little circle around -1
plot(-1,0,'k.','markersize',6)
text('Interpreter','latex','String','$>$','Position',[-lgap,-r],'FontSize',ff)
text('Interpreter','latex','String','$<$','Position',[-lgap,r],'FontSize',ff)
text('Interpreter','latex','String','$>$','Position',[r/2,yu],'FontSize',ff)
text('Interpreter','latex','String','$<$','Position',[r/2,-yu],'FontSize',ff)
text('Interpreter','latex','String','$>$','Position',[-r/2-r2/2-1/2-lgap,yu],'FontSize',ff)
text('Interpreter','latex','String','$<$','Position',[-r/2-r2/2-1/2-lgap,-yu],'FontSize',ff)
text('Interpreter','latex','String','$>$','Position',[-lgap-1,r2],'FontSize',ff)
text('Interpreter','latex','String','$\mathcal{G_+}$','Position',[s*r,s*r],'FontSize',sf)
text('Interpreter','latex','String','$\mathcal{G_-}$','Position',[sl*r,sl*r],'FontSize',sf)
text('Interpreter','latex','String','$\mathcal{I_+}$','Position',[r/3-lgap,4*yu],'FontSize',sf)
text('Interpreter','latex','String','$\mathcal{I_-}$','Position',[r/3-lgap,-5*yu],'FontSize',sf)
text('Interpreter','latex','String','$\mathcal{C}$','Position',[-1-lgap,-2*r2],'FontSize',sf)
set(gca,'xticklabel',[],'yticklabel',[])
%textt='$\!\!\!\!\!\!\!\!\!\!\!$Ghost Contours and a Cut'
%title(textt,'Interpreter','latex','FontSize',fs)
axis([-hside hside -hside hside])
print -dpdf ghostCs.pdf
print -depsc ghostCs.eps
print -deps /Users/kevin/papers/math/ghostCs