% Pseudokode:
% 1: hent inn lydfil
% 2: finn koeffisienter for en AR(10) - prosess
% 3: lage "invers-filter"!
% 4: lage filter for �nsket vokal fra koeffisienter
%5: spill av

%signaler hentet fra blackboard
%fs = 8000 og v ligger som lagret variabel
xa = v{1};
xe =v{2};
xi = v{3};
xo = v{4};
xu = v{5};
xy = v{6};
xae = v{7};
xoe = v{8};
xaa = v{9};
 %Finner alle koeffisientene
lpc_a=lpc(xa, 10);
lpc_e=lpc(xe, 10);
lpc_i=lpc(xi, 10);
lpc_o=lpc(xo, 10);
lpc_u=lpc(xu, 10);
lpc_y=lpc(xy, 10);
lpc_ae=lpc(xae, 10);
lpc_oe=lpc(xoe, 10);
lpc_aa=lpc(xaa, 10);

sound(xi, fs);

w=filter(lpc_i,1, xi); %Vi g�r fra x[n] (vokalen) til "st�yet" ved � filtrere tilbake til w[n]. 

x=filter(1, lpc_a, w); %Vi har n� "st�yet" for vokalen i  w[n]  og kan n� bytte ut filter h[n], for � lage en annen vokal
pause(1);
sound(x, fs);
pause(1);
sound(xa,fs); %sammenlikning
