set /p name=Please enter the file name without the .mat extension:

set matlab_path=C:\Users\bioadmin\Documents\MATLAB\data\%name%
set PATH=C:\Program Files\PuTTY\

pscp %matlab_path%\data.mat  student@olberg-lab-imac:\anaconda2\lib\python2.7\site-packages\combinato

putty.exe -ssh student@olberg-lab-imac -m olberg_tools_commands.txt

pscp.exe student@olberg-lab-imac:\anaconda2\lib\python2.7\site-packages\combinato\data\data_data.h5 %matlab_path%\raw_cluster_data\
pscp.exe student@olberg-lab-imac:\anaconda2\lib\python2.7\site-packages\combinato\data\sort_pos_data\sort_cat.h5 %matlab_path%\raw_cluster_data\

set /p done=Press any key to close...