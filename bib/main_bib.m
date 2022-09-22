clear all;
close all;
clc;


bib=bib;
bib=append(bib,'main_friction.bib','main_friction.bbl');
% bib=append(bib,'main_spatial.bib','main_spatial.bbl');
% bib=append(bib,'main_spatial.bib');
% bib=append(bib,'main_rotating_PCF_clean.bib');
% bib=append(bib,'main_stratified_PCF_clean.bib');
% bib=unique(bib);
bib=title(bib);
bib=abbrev(bib);
bib=output(bib,'main_friction_clean.bib');


% bib=append(bib,'lmi_chapter.bib');
% bib=append(bib,'mu_channel_chapter.bib');

% bib=append(bib,'main_structured_IO.bib','output_structured_IO.bbl');
% bib=append(bib,'main.bib');
% bib=append(bib,'main_stratified.bib');

% bib=append(bib,'main_LMI_PRE.bib','main_LMI_PRE.bbl');
% bib=abbrev(bib);
% bib=unique(bib);
% bib=title(bib);
% bib=output(bib,'main_LMI_PRE_clean.bib');
% bib=output(bib,'main_new_stratified.bib');
