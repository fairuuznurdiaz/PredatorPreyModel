clc
clear all
close all
%% Inisialisasi nilai awal
time_range = [0 20];
init_value = [100; 10; 24];
%% ODE Solver, uses Runge-Kutte(4,5) method
[t,y] = ode45(@model, time_range, init_value);
%% Plot
figure
plot(t,y(:,1),'r',t,y(:,2),'g',t,y(:,3),'b')
title('Simulasi model');
xlabel('Bulan');
ylabel('Variabel State');
legend('Populasi Mangsa rentan','Populasi Mangsa
terinfeksi','Populasi Predator')
