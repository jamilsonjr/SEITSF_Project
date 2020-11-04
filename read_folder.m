function data = read_folder(folder)
    file_dir = folder;
    files = dir(fullfile(file_dir, '*.csv'));
    file = [files.name];
    file = split(file, '.csv');
    file(end) = [];
    nfiles = length(files);
    data  = cell(nfiles, 1);
    for i=1:size(file)
        file{i} = strcat(file{i}, '.csv');
        data{i} = readmatrix(strcat(file_dir,'\',file{i}));
    end
end

