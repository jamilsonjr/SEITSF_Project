function plot_daily_temperature(data)
    size_ = length(data);
    months_of_the_year = {'Janurary','February','March','April','May','June','July','August','September','October','November','December'};
        figure
        for j=1:length(data)
            matrix = data{j};
            matrix = matrix(~isnan(matrix));
            matrix = reshape(matrix, [24, 5]);
            plot(linspace(0,length(matrix),length(matrix)), matrix(:,end),'LineWidth',2)    
            hold on
        end
        legend(months_of_the_year{1}, months_of_the_year{2}, months_of_the_year{3}, months_of_the_year{4}, months_of_the_year{5}, months_of_the_year{6}, months_of_the_year{7}, months_of_the_year{8}, months_of_the_year{9}, months_of_the_year{10}, months_of_the_year{11}, months_of_the_year{12});
        xlabel('time [Hours]')
        ylabel('Temperature [ºC]')
        grid on
        title('Temperature')
end

