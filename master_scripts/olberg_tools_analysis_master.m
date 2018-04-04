%get data out of h5 files
olberg_tools_h5_extraction
disp('Done extracting')

%save relavent data to processed data folder
olberg_tools_cluster_processing
disp('Done processing')

%do the thing here
olberg_tools_cluster_conversion
disp('Done conversion')

%do another thing
olberg_tools_cluster_post_processing
disp('Done post-processing')