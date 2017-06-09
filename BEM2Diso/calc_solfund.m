function  [Tast,qast]=calc_solfund(xd,yd,x,y,nx,ny,k) 
%Calcula as solu��es fundamentais

r=sqrt((x-xd)^2+(y-yd)^2); % Raio (dist�ncia entre ponto fonte e 
                           % ponto campo)
rx=(x-xd); % Componente x do raio
ry=(y-yd); % Componente y do raio
Tast=-1/(2*pi*k)*log(r); % Solu��o fundamental da temperatura
qast=1/(2*pi)*(rx*nx+ry*ny)/r^2; % Solu��o fundamental do fluxo
% disp([r,rx,ry,nx,ny,Tast,qast])
return