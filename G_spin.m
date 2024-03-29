function [G]  = G_spin( t )
%define parameters
omega=733;%angular velocity in rad/s
R=0.1;%42e-3; %ball radius
E_0=1; %throwaway constant
c=3e8; %speed of light
f_0=300e6; %CW frequency
v=20; %ball speed
d=5; %ball initial distance from radar

G=@(theta,phi) R^2*sin(phi)*E_0 ...
    .* cos(4*pi*f_0*t*(omega*R*sin(phi).*cos(theta)*(d-v*t) + v^2*t - d*v + v*R*sin(phi).*sin(theta))./(c*sqrt(R^2+d^2-2*d*v*t+v^2*t^2-2*R*(v*t-d)*sin(phi).*sin(theta)))) ...
    .* ((v*t-d)*sin(theta).*sin(phi) - R)./sqrt(R^2+d^2-2*d*v*t+v^2*t^2-2*R*(v*t-d)*sin(phi).*sin(theta));


end

