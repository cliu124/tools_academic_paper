close all;
clc;

%for most of syntax is the same as plot_line. The main difference is to add
%z element in data
%typical colormap include the MATLAB defalut one like 'jet', but also some
%other
%bluewhitered: this  will make sure zero is showing white, suitable for
%something like wave, where red and blue highlight different sign and white
%is just zero
%white_zero: this will  make sure the lowest value (usually 0) is white,
%this is suitable for something like power spectrum density that is by
%definition non-negative. 
clear all;
x=0:0.1:1;
y=0:0.1:2;
[X,Y]=meshgrid(x,y);
Z=sin(X+Y);
data{1}.x=x;
data{1}.y=y;
data{1}.z=Z;
plot_config.label_list={1,'$x$','$y$'};
plot_config.xlim_list=[1,0,0.9];
plot_config.xtick_list=[1,0,0.2,0.4,0.6,0.8];
plot_config.ylim_list=[1,0,1.8];
plot_config.ytick_list=[1,0,0.3,0.6,0.9,1.2,1.5,1.8];
plot_config.zlim_list=[1,-1,1];
plot_config.colormap='bluewhitered';
plot_config.print_size=[1,800,800];
plot_config.name='example_1.png';
plot_contour(data,plot_config);

