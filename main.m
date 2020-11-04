clear
clc
close all
%% Reading data form the 
daily_data = read_folder(strcat(pwd, '\data\daily_data_2007_2016'));

%% Daily data
% In this we show the average solar irradiation for each hour during the day for a chosen month, with the average taken over all days in that month during the multi-year time period for which we have data(2007-2016). In addition to calculating the average of the solar radiation the daily radiation application also calculates the daily variation in the clear-sky radiation, both for fixed and for 2-axis sun-tracking surfaces.
