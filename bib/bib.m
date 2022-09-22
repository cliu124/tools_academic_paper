classdef bib
    %This class will handle the reference... for the paper writing and the
    %thesis writing...
    %%Author: Chang Liu
    %%Date: 2021/04/13
    
    properties
        bib_list_out %%store all list of bib...
        bib_list_out_all %%combining all list of bib together.
        bib_citecode_out %%store all list of citation code
        
        %%the abbreviation list of the journal name.
        abbreviation_list={'J. Fluid Mech.',
            'Phys. Fluids',
            'Phys. Fluids',
            'Phys. Fluids A',
            'Phys. Rev. Fluids',
            'Phys. Rev. E',
            'Phys. Rev. Lett.',
            'Appl. Mech. Rev.',
            'Theor. Comput. Fluid Dyn.',
            'J. Atmos. Sci.',
            'J. Atmos. Sci.',
            'J. Atmos. Sci.',
            'Sci. Rep.',
            'Annu. Rev. Fluid Mech.',
            'Annu. Rev. Earth Planet. Sci.',
            'Annu. Rev. Mar. Science',
            'Annu. Rev. Control Rob. Auton. Syst.',
            'Annu. Rev. Condens. Matter Phys.',
            'Annu. Rev. Astron. Astrophys.',
            'Rev. Geophys.',
            'Rev. Geophys. Space Phys.',
            'IEEE Trans. Autom. Control',
            'Deep Sea Res. Part A',
            'Deep Sea Res. Part I',
            'J. Geophys. Res.: Oceans',
            'J. Geophys. Res. C: Oceans',
            'J. Geophys. Res.: Atmos.',
            'J. Phys. Oceanogr.',
            'Boundary Layer Meteorol.',
            'Dyn. Atmos. Oceans',
            'Environ. Fluid Mech.',
            'Nonlinear Processes Geophys.',
            'Appl. Math. Modell.',
            'Proc. R. Soc. London, Ser. A',
            'Astron. Astrophys.',
            'Exp. Fluids',
            'J. Comput. Phys.',
            'Commun. Pure Appl. Math.',
            'Int. J. Heat Fluid Flow',
            'Int. J. Heat Mass Transfer',
            'Flow Turbul. Combust.',
            'J. Turbul.',
            'Math. Comput.',
            'ACM Trans. Math. Software',
            'Rev. Mod. Phys.',
            'Phys. Rep.',
            'Adv. Phys.',
            'Geophys. Res. Lett.',
            'Astrophys. J.',
            'Astrophys. J.',
            'Astron. Astrophys.',
            'J. Hydrometeorol.',
            'J. Comput. Phys.',
            'Atmos. Sci. Lett.',
            'Fluid Dyn. Res.',
            'J. Appl. Meteorol.',
            'Geophys. Astrophys. Fluid Dyn.',
            'Geophys. Astrophys. Fluid Dyn.',
            'Appl. Numer. Math.',
            'IMA J. Appl. Math.',
            'Phys. Rev. Res.',
            'Ocean Sci.',
            'J. Math. Phys.',
            'Physica D',
            'Proc. Natl. Acad. Sci.',
            'Q. J. Mech. Appl. Math.',
            'Publ. Astron. Soc. Aust.',
            'Aust. J. Phys.',
            'Phys. Lett. A',
            'Deep Sea Res. Part II',
            'Deep Sea Res. Part A',
            'J. Plasma Phys.',
            'Atmos. Ocean',
            'Numer. Math. Theory Methods Appl.',
            'ACM Trans. Math. Software',
            'Deep Sea Res. Oceanogr. Abstr.',
            'Math. Comput. Modell.',
            'Found. Phys.',
            'Comput. Fluids',
            'Commun. Comput. Phys.',
            'J. Appl. Math. Mech.',
            'Int. J. Numer. Methods Fluids',
            'Adv. Water Resour.',
            'J. Sci. Comput.',
            'J. Hydraul. Eng.',
            'Numer. Anal. Appl.',
            'Appl. Math. Comput.',
            'Comput. Methods Appl. Mech. Eng.',
            'Z. Naturforsch., A',
            'Ocean Eng.',
            'Chaos, Solitons Fractals',
            'ANZIAM J.',
            'J. Differ. Equations',
            'J. Ocean. Eng. Sci.',
            'J. Hydraul. Res.'
            };
        
        %%All of the full name list should be lower case....
        fullname_list={
            'Journal of Fluid Mechanics',
            'Physics of Fluids',
            'The Physics of Fluids',
            'Physics of Fluids A',
            'Physical Review Fluids',
            'Physical Review E',
            'Physical Review Letters',
            'Applied Mechanics Reviews',
            'Theoretical and Computational Fluid Dynamics',
            'Journal of the Atmospheric Sciences',
            'Journal of Atmospheric Science',
            'Journal of Atmospheric Sciences',
            'Scientific Reports',
            'Annual Review of Fluid Mechanics',
            'Annual Review of Earth and Planetary Sciences',
            'Annual Review of Marine Science',
            'Annual Review of Control, Robotics, and Autonomous Systems',
            'Annual Review of Condensed Matter Physics',
            'Annual Review of Astronomy and Astrophysics',
            'Reviews of Geophysics',
            'Reviews of Geophysics and Space Physics',
            'IEEE Transactions on Automatic Control',
            'Deep Sea Research Part A: Oceanographic Research Papers',
            'Deep Sea Research Part I: Oceanographic Research Papers',
            'Journal of Geophysical Research: Oceans',
            'Journal of Geophysical Research, C: Oceans',
            'Journal of Geophysical Research: Atmospheres',
            'Journal of Physical Oceanography',
            'Boundary-Layer Meteorology',
            'Dynamics of Atmospheres and Oceans',
            'Environmental Fluid Mechanics',
            'Nonlinear Processes in Geophysics',
            'Applied Mathematical Modelling',
            'Proceedings of the Royal Society of London. Series A, Containing Papers of a Mathematical and Physical Character',
            'Astronomy and Astrophysics',
            'Experiments in Fluids',
            'Journal of Computational Physics',
            'Communications on Pure and Applied Mathematics',
            'International Journal of Heat and Fluid Flow',
            'International Journal of Heat and Mass Transfer',
            'Flow, Turbulence and Combustion',
            'Journal of Turbulence',
            'Mathematics of Computation',
            'ACM Transactions on Mathematical Software',
            'Reviews of Modern Physics',
            'Physics Reports',
            'Advances in Physics',
            'Geophysical Research Letters',
            'The Astrophysical Journal',
            'Astrophysical Journal',
            'Astronomy and Astrophysics',
            'Journal of Hydrometeorology',
            'Journal of Computational Physics',
            'Atmospheric Science Letters',
            'Fluid Dynamics Research',
            'Journal of Applied Meteorology',
            'Geophysical \& Astrophysical Fluid Dynamics',
            'Geophysical and Astrophysical Fluid Dynamics',
            'Applied Numerical Mathematics',
            'IMA Journal of Applied Mathematics',
            'Physical Review Research',
            'Ocean Science',
            'Journal of Mathematical Physics',
            'Physica D: Nonlinear Phenomena',
            'Proceedings of the National academy of Sciences',
            'Quarterly Journal of Mechanics and Applied Mathematics',
            'Publications of the Astronomical Society of Australia',
            'Australian Journal of Physics',
            'Physics Letters A',
            'Deep Sea Research Part II: Topical Studies in Oceanography',
            'Deep Sea Research Part A. Oceanographic Research Papers',
            'Journal of Plasma Physics',
            'Atmosphere-Ocean',
            'Numerical Mathematics: Theory, Methods and Applications',
            'ACM Transactions on Mathematical Software',
            'Deep Sea Research and Oceanographic Abstracts',
            'Mathematical and Computer Modelling',
            'Foundations of Physics',
            'Computers \& fluids',
            'Communications in Computational Physics',
            'Journal of Applied Mathematics and Mechanics',
            'International Journal for Numerical Methods in Fluids',
            'Advances in Water Resources',
            'Journal of Scientific Computing',
            'Journal of Hydraulic Engineering',
            'Numerical Analysis and Applications',
            'Applied Mathematics and Computation',
            'Computer Methods in Applied Mechanics and Engineering',
            'Zeitschrift f{\"u}r Naturforschung A',
            'Ocean Engineering',
            'Chaos, Solitons & Fractals',
            'ANZIAM Journal',
            'Journal of Differential Equations',
            'Journal of Ocean Engineering and Science',
            'Journal of Hydraulic Research'
            };
        
        
    end
    
    methods
        function obj = bib
            %%initialization... 
            obj.bib_list_out=[];
            obj.bib_citecode_out=[];
        end
        
        function obj = append(obj,bib_filename,bbl_filename)

            %%add the list from the input file...
            %%the second argument is the name of bib file and the
            %%the third argument is the name of the bbl file.
            %%bib is the library for all reference
            %%bbl will contain which reference are actually used in the
            %%paper
            
            text_bib_line = importdata(bib_filename);
            bib_ind=0;
            for line_ind=1:length(text_bib_line)
                
                %%identify @ that separate each reference list
                if strcmp(text_bib_line{line_ind}(1),'@')
                    bib_ind=bib_ind+1;
                    bib_list{bib_ind}=text_bib_line{line_ind};
                    bib_citecode{bib_ind} = extractBetween(text_bib_line{line_ind},'{',',');
                else
                    bib_list{bib_ind}=[bib_list{bib_ind},newline,text_bib_line{line_ind}];
                end
            end

            %%if no bbl file, just combine all list from bib file..
            if nargin<3 || isempty(bbl_filename)
                for bib_citecode_ind=1:length(bib_citecode)
                    bib_citecode{bib_citecode_ind}=bib_citecode{bib_citecode_ind}{end};
                end
                obj.bib_list_out=[obj.bib_list_out,bib_list];
                obj.bib_citecode_out=[obj.bib_citecode_out,bib_citecode];
            else
                %%This is the for case where we have the input that is the file of bbl...
%                 [text_bbl_line,delimiter_out,header_out] = importdata(bbl_filename);
%                 try
%                     text_bbl_line=text_bbl_line.textdata;
%                 catch
%                 end
                %Update 2022/06/22, this textscan is more robust... using the importdata sometimes miss some results...  
                f=fopen(bbl_filename);
                 text_bbl_line=textscan(f,'%s','delimiter','\n');
                 fclose(f);
                 text_bbl_line=text_bbl_line{1};
                
                 
                 bbl_ind=1;
                bbl_list{1}=[];
                for line_ind=1:length(text_bbl_line)
                    %%note that bbl file is separated by \bibitem
                    if length(text_bbl_line{line_ind})>=8 && strcmp(text_bbl_line{line_ind}(1:8),'\bibitem')
                        bbl_ind=bbl_ind+1;
                        bbl_list{bbl_ind}=text_bbl_line{line_ind};
                %         if strcmp(text_bbl_line{line_ind}(end-1:end),'\&')
                        %%get the citation code...
                        if isempty(extractBetween(text_bbl_line{line_ind},']{','}'))
                           bbl_citecode{bbl_ind} = extractBetween(text_bbl_line{line_ind+1},']{','}');
                        else
                           bbl_citecode{bbl_ind} = extractBetween(text_bbl_line{line_ind},']{','}');
                        end
                    else
                        %%combine the list of bib reference...
                        bbl_list{bbl_ind}=[bbl_list{bbl_ind},newline,text_bbl_line{line_ind}];
                    end
                end

                %%select the output file for the bib output
                %%convert bib_citecode to the cell array
                
                %%convert the bib_citecode into the array of string...
                for bib_citecode_ind=1:length(bib_citecode)
                    bib_citecode{bib_citecode_ind}=bib_citecode{bib_citecode_ind}{end};
                end

               
                bib_list_out_ind=length(obj.bib_list_out);
                for bbl_citecode_ind=1:length(bbl_citecode)
                    
                    if ~isempty(bbl_citecode{bbl_citecode_ind})
                        %%find the index of each bbl citecode.. find where
                        %%is these refernce in the bib list...
                        ind=find(contains(bib_citecode,bbl_citecode{bbl_citecode_ind}));
                        if ~isempty(ind)
                            bib_list_out_ind=bib_list_out_ind+1;
                            obj.bib_list_out{bib_list_out_ind}=bib_list{ind};
                            obj.bib_citecode_out=[obj.bib_citecode_out,bbl_citecode{bbl_citecode_ind}];
                        end
                    end
                end

                
            end
            
        end
        
        function obj=title(obj)
            %%This function add the {} around the title.
            %%This will make sure some letter should be capitalized is
            %%always capitalized...
            bib_list_out=obj.bib_list_out;
            for bib_list_out_ind=1:length(bib_list_out)
                title_name=extractBetween(bib_list_out{bib_list_out_ind},'title={','},');
                if ~isempty(title_name) & ~strcmp(title_name{1}(1),'{') & ~strcmp(title_name{1}(end),'}')
                 %%This if condition check that the title is non-empty and
                 %%it has not added the brackets there...
                    title_name_start=strfind(bib_list_out{bib_list_out_ind},title_name{1});
                    bib_list_before=bib_list_out{bib_list_out_ind}(1:title_name_start-1);
                    bib_list_after=bib_list_out{bib_list_out_ind}(title_name_start+length(title_name{1}):end);
                    bib_list_out{bib_list_out_ind}=[bib_list_before,'{',...
                        title_name{1},'}'...
                        bib_list_after];
                end
            end
            obj.bib_list_out=bib_list_out;

        end
        
        
        
        
        function obj=abbrev(obj)
            %%This function find the full name from the list of 
            %%obj.fullname_list
            %Then replace it as the abbreviation for corresponding journal
            %name.
            bib_list_out=obj.bib_list_out;
            for bib_list_out_ind=1:length(bib_list_out)
                journal_name=extractBetween(bib_list_out{bib_list_out_ind},'journal={','}');
                if ~isempty(journal_name)
                    
                    %%make all of these to be lower case.. I do not care..
                    full_name_ind=find(strcmp(lower(obj.fullname_list),lower(journal_name{1})));
                    if ~isempty(full_name_ind)
                        journal_name_start=strfind(bib_list_out{bib_list_out_ind},journal_name{1});
                        bib_list_before=bib_list_out{bib_list_out_ind}(1:journal_name_start-1);
                        bib_list_after=bib_list_out{bib_list_out_ind}(journal_name_start+length(journal_name{1}):end);
                        bib_list_out{bib_list_out_ind}=[bib_list_before,...
                            obj.abbreviation_list{full_name_ind},...
                            bib_list_after];
                    end
                end
            end
            obj.bib_list_out=bib_list_out;

        end
        
        
        function obj = unique(obj)
            %%This function check each reference in the bib_list_out_old to
            %%see whether they are unique...
            bib_list_out_old=obj.bib_list_out;
            bib_citecode_out_old=obj.bib_citecode_out;
            bib_list_out_new_ind=0;
            bib_citecode_out_new={''};
            for bib_citecode_out_old_ind=1:length(bib_citecode_out_old)
                ind=find(contains(bib_citecode_out_new,bib_citecode_out_old{bib_citecode_out_old_ind}));
                if isempty(ind)
                %%This means this is still unique....
                    bib_list_out_new_ind=bib_list_out_new_ind+1;
                    bib_list_out_new{bib_list_out_new_ind}=bib_list_out_old{bib_citecode_out_old_ind};
                    bib_citecode_out_new{bib_list_out_new_ind}=bib_citecode_out_old{bib_citecode_out_old_ind};
                end
            end
            
            obj.bib_list_out=bib_list_out_new;
            obj.bib_citecode_out=bib_citecode_out_new;
        end
            
        function obj = output(obj,output_filename)
            %%This function will combine the reference list in
            %%obj.bib_list_out_all altogether
            %%Then will also write this to the bib file.
            obj.bib_list_out_all=[];
            for bib_list_out_ind=1:length(obj.bib_list_out)
                obj.bib_list_out_all=[obj.bib_list_out_all,newline,obj.bib_list_out{bib_list_out_ind}];
            end
            if nargin<2 || isempty(output_filename)
                fid = fopen('main_new.bib','wt');
            else
                fid = fopen(output_filename,'wt');
            end
            fprintf(fid, '%s', obj.bib_list_out_all);
            fclose(fid);
        end
        
        
    end
end

