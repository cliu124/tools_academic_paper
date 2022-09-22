close all;
clc;

%example 1, the minimal setting up
clear all;
data{1}.x=linspace(0,2*pi,30);%data of horizontal axis
data{1}.y=sin(data{1}.x);%data of vertical axis
plot_config.name='example_1.png'; %the name you want to save the figure. This support absolute path, and in default just  current folder
plot_line(data,plot_config);%plot it!

%example 2, add additional  x and y labels
%modify the plot_config.label_list, This supports latex synax.
clear all;
data{1}.x=linspace(0,2*pi,30);
data{1}.y=exp(data{1}.x);
plot_config.label_list={1,'t','$e^t$'};%The first value should be 1 if you want to customize label. The second is x label, the  third is y label
plot_config.name='example_2.png';
plot_line(data,plot_config);

%example 3, if you want to customize the range off x and y axis, as well as
%x and y tick, then
clear all;
data{1}.x=linspace(0,100,100);
data{1}.y=exp(data{1}.x);
plot_config.label_list={1,'$t$','$e^t$'};
plot_config.xlim_list=[1,0,50];%set the first value to one if you want to customize range of x axis. The second value be the minimal and the third is maximum
plot_config.ylim_list=[1,1,10];%set the first value to one if you want to customize range of y axis. The second value be the minimal and the third is maximum
plot_config.xtick_list=[1,0,10,20,30,40,50];%set the first value to 1 if you want to customize x tick. The following value will be the x ticks
plot_config.ytick_list=[1,2,4,6,8,10];%set the first value to 1 if you want to customize the y tick. The following values will be the y ticks
plot_config.name='example_3.png';
plot_line(data,plot_config);

%example 4
%if you want to plot multiple lines:
clear all
t=linspace(0,2*pi,30)
data{1}.x=t;
data{1}.y=sin(t);
data{2}.x=t;
data{2}.y=sin(2*t);
data{3}.x=t;
data{3}.y=sin(3*t);
data{4}.x=t;
data{4}.y=sin(4*t);

%example 4.1, plot these data in lines
plot_config.Markerindex=1;%this index will plot in lines, in the color scheme of {'k-','b--','r-.','m:'}, following standard definition in https://www.mathworks.com/help/matlab/creating_plots/specify-line-and-marker-appearance-in-plots.html
plot_config.name='example_4_1.png';
plot_line(data,plot_config);

%example 4.2, plot these data in markers
plot_config.Markerindex=2;%This will plot in markers, in the order of {'k-o','b--+','r-.*','m:x'}, following standard definition in https://www.mathworks.com/help/matlab/creating_plots/specify-line-and-marker-appearance-in-plots.html
plot_config.name='example_4_2.png';
plot_line(data,plot_config);

%example 4.3, plot these data in user specified styles.
%This option allow more than four data set! It should satisfy
%length(plot_config.user_color_style_marker_list)>=length(data)
data{5}.x=t;
data{5}.y=sin(5*t);
plot_config.Markerindex=3;
plot_config.user_color_style_marker_list={'b--','k:*','r-+','g-.','m--^'}; %This will plot figures using user defined color, linestyle, marker styles. following standard definition of https://www.mathworks.com/help/matlab/creating_plots/specify-line-and-marker-appearance-in-plots.html
plot_config.name='example_4_3.png';
plot_line(data,plot_config);

%example 4.4
%if you want to add the legend, just set this, also support latex!
plot_config.legend_list={1,'sin($t$)','sin($2t$)','sin($3t$)','sin($4t$)','sin($5t$)'};
plot_config.name='example_4_4.png';
plot_line(data,plot_config);

%example 4.5, 
%make this legend smaller and make some space for the legend
plot_config.fontsize_legend=18;
plot_config.xlim_list=[1,0,8];
plot_config.name='example_4_5.png';
plot_line(data,plot_config);

%example 4.6
%if you also want some crazy tick label such as pi\%
%Then xticklabels_list will allow to set the label, support latex
%also makesure xtick_list is setting compatibly so these ticks will appear
%in  correct place. 
%here only example of x and y tick is the same just replace x as y
plot_config.xticklabels_list={1,'$0$','$\pi/2$','$\pi$','$3\pi/2$','$2\pi$'};
plot_config.xtick_list=[1,0,pi/2,pi,3*pi/2,2*pi];
plot_config.name='example_4_6.png';
plot_line(data,plot_config);

%example 5
%some other options including fontsize, print_size and title_list
%linewidth
clear all;
data{1}.x=0:0.1:5;
data{1}.y=data{1}.x;
data{2}.x=0:0.1:5;
data{2}.y=data{2}.x.^2;
data{3}.x=0:0.1:5;
data{3}.y=data{2}.x.^3;
data{4}.x=0:0.1:5;
data{4}.y=data{2}.x.^4;
plot_config.Markerindex=3;
plot_config.user_color_style_marker_list={'k-','bo','m--','gsquare'};
plot_config.marker_face_index=[0,1,0,1];%corresponding flat whether you want to fill the maker with bottom color
plot_config.marker_face_color={'','r','','b'};%filled marker with 
plot_config.fontsize=20;
plot_config.linewidth=5;
plot_config.print_size=[1,500,500];
plot_config.title_list={1,'$y=x^2$'};
plot_config.name='example_5.png';
plot_line(data,plot_config);

%example 6
%loglog plotting
clear all;
t=0:0.1:100;
data{1}.x=t;
data{1}.y=exp(t);
plot_config.loglog=[0,1];%only put y axis as log
plot_config.name='example_6_1.png';
plot_line(data,plot_config);

data{1}.x=t;
data{1}.y=t.^2;
plot_config.loglog=[1,1];%both axis in log
plot_config.name='example_6_2.png';
plot_line(data,plot_config);

data{1}.x=t;
data{1}.y=log10(t);
plot_config.loglog=[1,0];%only x axis in log
plot_config.name='example_6_3.png';
plot_line(data,plot_config);

%example 7
%if your color is not enough and 
