%input_file_name = '2017-07-06-c-trimmed';

%make sure prefs are set
init_prefs = exist('init', 'var');

%if prefs aren't set, run run prefs
if init_prefs ~= 7
    disp('Initializing prefs...')
    olberg_tools_prefs
    disp(['Done initializing prefs' newline])
end

cd([userpath '\data\' input_file_name '\processed_data'])

%get data and sort_cat file
spike_file = ls('data_*');
cluster_file = ls('sort_*');

%make objects for access
spike_file_obj = matfile(spike_file); %contains spike time in ms
cluster_file_obj = matfile(cluster_file); %contains class info for each spike

%intermediate step, matlab doesn't allow accessing multiple levels (eg,
%x.y.z), only x.y or y.z
spike_file = spike_file_obj.data; 
%second step to get the spike times
spike_times = spike_file.pos.times; %spike time ms

%intermediate step, matlab doesn't allow accessing multiple levels (eg,
%x.y.z), only x.y or y.z
cluster_file = cluster_file_obj.data; 
%second step to get the class info
cluster_class = cluster_file.classes; %class info for each spike
cluster_index = cluster_file.index; %index of ms spike time, unused

%save to '_processed.mat' file
olberg_tools_save_extracted_data