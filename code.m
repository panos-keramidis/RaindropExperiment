% Katharismos Istorikou
close all; clear all; 

% arithmos ton simeiwn
N=100000;
% dimiourgia simion
x=rand(1,N);
y=rand(size(x));
%x(5)=0.5;
%y(5)=0;
%ta grammika dianismata
theta=linspace(0,2*pi);
%pou aforoun ton kyklo
xc=0.5*cos(theta)+0.5;
yc=0.5*sin(theta)+0.5;
%an aniki ston kyklo
in = inpolygon(x,y,xc,yc);
%prostithentai sto synolo s
s=sum(in);
%ypologismos p
P=4*s/N;
%P=3.141592653589793;

%ftiaxnetai to plot
%otan einai mesa ston kyklo einai mple allios kokkina
plot(xc,yc,x(in),y(in),'.b',x(~in),y(~in),'.r')
%ston kyklo bazoume thn proseggisi tou p
h=title({['pi approximation = ',num2str(P)]});
%emfanizoume to N
xlabel(['N =',num2str(N)])
axis equal
%ektyponoume ta noumera
disp([P,abs(P-pi)])
disp(['N = ',num2str(N)])