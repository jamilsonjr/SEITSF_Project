clear
clc
close all
addpath('utils/');
addpath('plot_functions/')
%% Data from IST endpoint
% Didn't do everything automatic because I was in a hurry and had more
% things to do
%% Yearly data fresh form IST
file = strcat(pwd,'\data\tecnico\temp_data.txt');
data_temp = readmatrix(file);
file = strcat(pwd,'\data\tecnico\temp_data_jan2020.txt');
data_temp_jan2020 = readmatrix(file);
file = strcat(pwd,'\data\tecnico\temp_data_jul2019.txt');
data_temp_jul2019 = readmatrix(file);

file = strcat(pwd,'\data\tecnico\rad_data.txt');
data_rad = readmatrix(file);
file = strcat(pwd,'\data\tecnico\rad_data_jan2020.txt');
data_rad_jan2020 = readmatrix(file);
file = strcat(pwd,'\data\tecnico\rad_data_jul2019.txt');
data_rad_jul2019 = readmatrix(file);
%% Temperature for the year of 2019/2020
figure
plot(linspace(0,length(data_temp),length(data_temp)), data_temp(1,:));
xlabel('time [Hours]')
ylabel('Temperature ºC ]')
grid on
title('Temperature measured hourly in Alameda IST Campus in 2019');

figure
plot(linspace(0,length(data_temp_jan2020),length(data_temp_jan2020)), data_temp_jan2020(1,:));
xlabel('time [Hours]')
ylabel('Temperature ºC ]')
grid on
title('Temperature measured hourly in Alameda IST Campus in January 2020');

figure
plot(linspace(0,length(data_temp_jul2019),length(data_temp_jul2019)), data_temp_jul2019(1,:));
xlabel('time [Hours]')
ylabel('Temperature ºC ]')
grid on
title('Temperature measured hourly in Alameda IST Campus in July 2019');

%% Temperature for the year of 2019/2020
figure
plot(linspace(0,length(data_rad),length(data_rad)), data_rad(1,:));
xlabel('time [Hours]')
ylabel('Radiation W/m^2 ]')
grid on
title('Radiation measured hourly in Alameda IST Campus in 2019');

figure
plot(linspace(0,length(data_rad_jan2020),length(data_rad_jan2020)), data_rad_jan2020(1,:));
xlabel('time [Hours]')
ylabel('Radiation W/m^2 ]')
grid on
title('Radiation measured hourly in Alameda IST Campus in January 2020');

figure
plot(linspace(0,length(data_rad_jul2019),length(data_rad_jul2019)), data_rad_jul2019(1,:));
xlabel('time [Hours]')
ylabel('Radiation W/m^2 ]')
grid on
title('Radiation measured hourly in Alameda IST Campus in July 2019');
% %% Daily data
% % In this we show the average solar irradiation for each hour during the day for a chosen month, with the average taken over all days in that month during the multi-year time period for which we have data(2007-2016). In addition to calculating the average of the solar radiation the daily radiation application also calculates the daily variation in the clear-sky radiation, both for fixed and for 2-axis sun-tracking surfaces.
% % Reading data form the 
%  folder = '\data\daily_data_2007_2016';
%  data = read_folder(strcat(pwd, folder));
% %%
% plot_daily_irradiance(data);
% plot_daily_temperature(data);
% %% Hourly Data
%  folder = '\data\hourly_data_2016';
%  data = read_folder(strcat(pwd, folder));
%  plot_hourly_data(data);
%% Calculate the input power 
% Approximately the useful area of the car
rootf_area = 2*1.3;
area = 2.015*0.996;
efficiency = 0.2;
figure
plot(linspace(0,length(data_rad_jul2019),length(data_rad_jul2019)), data_rad_jul2019(1,:)*efficiency*rootf_area);
xlabel('time [Hours]')
ylabel('Radiation W ]')
grid on
title('Power power input if the whole roof is solar cells on the best month');

% plot_pv_power_input(data, area, efficiency);
%% Calculate max input power from the PDC pannel assuming a 20% efficiency
% Area



