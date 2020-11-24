
dist = xlsread('perfil_trajecto_cascais' , 'Folha1', 'A2:A21');
alt = xlsread('perfil_trajecto_cascais' , 'Folha1', 'B2:B21');
rlat = xlsread('perfil_trajecto_cascais' , 'Folha1', 'E2:E21');
rlon = xlsread('perfil_trajecto_cascais' , 'Folha1', 'F2:F21');

lat = xlsread('perfil_trajecto_cascais' , 'Folha1', 'C2:C21');
lon = xlsread('perfil_trajecto_cascais' , 'Folha1', 'D2:D21');

slope = xlsread('perfil_trajecto_cascais' , 'Folha1', 'I3:I21');
seg = xlsread('perfil_trajecto_cascais' , 'Folha1', 'H3:H21');


for i=1 : length(seg)
    if i<19
        speed(i,:) = 40;
    else
        speed(i,:) = 20;
    end
end

display(dist);
display(slope);
display(speed);

%  plot3(lon,lat,alt); 
%  grid on;
% % Add labels: 
% xlabel('longitude');
% ylabel('latitude');
% zlabel('elevation (m)'); 
% % title('indiferente') ;
% % axis tight;
% 
% plot(dist,slope);
% grid on;
% xlabel('Distância ao ponto inicial');
% ylabel('elevation (m)');


