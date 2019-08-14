clc;clear;

%hyperparameters
t_end=50e-3;
N=500;
dt=t_end/N;
n=1;
G(n)=0;
Gs(n)=0;
t=0:dt:t_end;
for tt = 0:dt:t_end
    G(n) = integral2(G_nospin(tt),0,pi, 0,pi);
    Gs(n)= integral2(G_spin(tt),0,pi, 0,pi);
    n=n+1;
end

%figure(1);title("Doppler signal");plot(t, G, 'r');
%figure(2);title("FFT of doppler signal"); plot(abs(fftshift(fft(G))), 'r-');

%figure(3);title("Doppler signal");plot(t, Gs, 'g');
%figure(4);title("FFT of doppler signal"); plot(abs(fftshift(fft(Gs))), 'g-');
plot(abs(fftshift(fft(G))), 'r-');hold on;
plot(abs(fftshift(fft(Gs))), 'g-'); 
