function  plot_daily_irradiance(data)
    size_ = length(data);
    months_of_the_year = {'Janurary','February','March','April','May','June','July','August','September','October','November','December'};
    type_of_irradiance = {'Global', 'Direct', 'Diffuse'};
    % Plot daily avarages for every month
    for i =1:length(data)
        matrix  = data{i};
        matrix = matrix(~isnan(matrix));
        matrix = reshape(matrix, [24, 5]);
        figure
        for j=1:3
            plot(linspace(0,length(matrix),length(matrix)), matrix(:,j),'LineWidth',2);
            hold on
        end
        legend(type_of_irradiance{1}, type_of_irradiance{2}, type_of_irradiance{3})
        xlabel('time [Hours]')
        ylabel('Irradiance [W/m^2]')
        grid on
        title(months_of_the_year{i})
    end
    
    for i=1:length(type_of_irradiance)
         figure
        for j=1:length(data)
            matrix = data{j};
            matrix = matrix(~isnan(matrix));
            matrix = reshape(matrix, [24, 5]);
            plot(linspace(0,length(matrix),length(matrix)), matrix(:,i),'LineWidth',2)    
            hold on
        end
        legend(months_of_the_year{1}, months_of_the_year{2}, months_of_the_year{3}, months_of_the_year{4}, months_of_the_year{5}, months_of_the_year{6}, months_of_the_year{7}, months_of_the_year{8}, months_of_the_year{9}, months_of_the_year{10}, months_of_the_year{11}, months_of_the_year{12});
        xlabel('time [Hours]')
        ylabel('Irradiance [W/m^2]')
        grid on
        title(type_of_irradiance{i})
    end
    