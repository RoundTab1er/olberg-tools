set PATH=C:\Program Files\PuTTY\
set matlab_path=C:\Users\bioadmin\Documents\MATLAB\olberg_tools_master

pscp %matlab_path%\olberg_tools_combinato.sh  student@olberg-lab-imac:\anaconda2\lib\python2.7\site-packages\combinato

pscp %matlab_path%\matplotlibrc student@olberg-lab-imac:\etc\