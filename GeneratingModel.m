function dydt = model(t, y)
%% Value Extraction
X_s = y(1);
X_i = y(2);
Y = y(3);
%% Parameters
% laju penangkapan predator terhadap prey rentan
alpha = 0.1;
% Laju penangkapan predator terhadap mangsa terinfeksi
delta = 0.01;
% Laju transmisi prey rentan ke terinfeksi
beta = 0.02;
xi = 1;
% Laju kelahiran mangsa rentan
r1 = 0.8;
% Laju kelahiran predator
r2 = 0.2;
% Kapasitas tempat perlindungan untuk mangsa rentan
m1 = 0.5;
% Kapasitas tempat perlindungan mangsa untuk mangsa terinfeksi
m = 0.6;
% faktor ketahanan mangsa rentan terhadap penyakit
b = 0.01;
c = 1;
% konstanta titik kejenuhan
k_1 = 0.1;
% Faktor ketakutan mangsa terhadap predator
k_2 = 0.01;
% Laju kematian alami mangsa rentan
d_1 = 0.1;
% Laju kematian alami mangsa terinfeksi
d_2 = 0.5;
% Laju kematian alami predator
d_3 = 0.1;
%% Differential Equation
x_sdot = ((r1*X_s)/(1+k_2*Y))-((beta-b)*X_s*X_i)-((alpha*(1-
m)*sqrt(X_s)*Y)/(1+k_1*(1-m)*sqrt(X_s)))-(d_1*X_s);
x_idot = ((beta-b)*X_s*X_i)-(delta*(1-m)*X_i*Y)-(d_2*X_i);
Ydot = (r2*Y)+((c*alpha*(1-m1)*sqrt(X_s)*Y)/(1+k_1*(1-m1)*sqrt(X_s)))-
(xi*delta*(1-m)*X_i*Y)-(d_3*Y);
dydt = [x_sdot; x_idot; Ydot];
end
