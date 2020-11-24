function  plot_pv_power_input(data, Area, efficiency)
    months_of_the_year = {'Janurary','February','March','April','May','June','July','August','September','October','November','December'};
    type_of_irradiance = {'Global Radiation Input Power', 'Direct Radiation Input Power', 'Diffuse Radiation Input Power'};
    % Plot daily avarages for every month
    for i =1:length(data)
        matrix  = data{i};
        matrix = matrix(~isnan(matrix));
        matrix = reshape(matrix, [24, 5]);
        figure
        for j=1:3
            plot(linspace(0,length(matrix),length(matrix)), matrix(:,j)*Area/1000,'LineWidth',2);
            hold on
            plot(linspace(0,length(matrix),length(matrix)), efficiency*matrix(:,j)*Area/1000,'LineWidth',2)
            
        end
        legend(type_of_irradiance{1}, type_of_irradiance{2}, type_of_irradiance{3})
        xlabel('time [Hours]')
        ylabel('Power [kW]')
        grid on
        title(months_of_the_year{i})
    end
end

