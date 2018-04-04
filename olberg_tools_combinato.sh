#!/bin/bash

default_path="/anaconda2/lib/python2.7/site-packages/combinato"
cd "$default_path"

python css-extract --matfile ~/Desktop/data.mat

python css-simple-clustering --datafile data/data_data.h5
