function plot_hourly_data(data)
    %% Cascais
    matrix  = data{1};
    matrix = matrix(~isnan(matrix));
    matrix = reshape(matrix, [8784, 5]);
    figure
    plot(linspace(0,length(matrix),length(matrix)), matrix(:,1));
    xlabel('time [Hours]')
    ylabel('Solar Radiation[W/m^2]')
    grid on
    title('Global Irradiation Cascais');
    figure
    plot(linspace(0,length(matrix),length(matrix)), matrix(:,3));
    xlabel('time [Hours]')
    ylabel('Solar Radiation[W/m^2]')
    grid on
    title('Temperature Cascais');
    fprintf('The max temperature in Cascais is: ');
    display(max(matrix(:,3)));
    fprintf('The max irradiance in Cascais is: ');
    display(max(matrix(:,1)));
    %% Sintra
    matrix  = data{2};
    matrix = matrix(~isnan(matrix));
    matrix = reshape(matrix, [8784, 5]);
    figure
    plot(linspace(0,length(matrix),length(matrix)), matrix(:,1));
    xlabel('time [Hours]')
    ylabel('Solar Radiation[W/m^2]')
    grid on
    title('Global Irradiation Cascais');
    figure
    plot(linspace(0,length(matrix),length(matrix)), matrix(:,3));
    xlabel('time [Hours]')
    ylabel('Solar Radiation[W/m^2]')
    grid on
    title('Temperature Cascais');
    fprintf('The max temperature in Sintra is: ');
    display(max(matrix(:,3)));
    fprintf('The max irradiance in Sintra is: ');
    display(max(matrix(:,1)));
end