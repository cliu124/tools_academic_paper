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
            'Syst. Control Lett.',
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
            'Atmos. Sci. Lett.',
            'Fluid Dyn. Res.',
            'J. Appl. Meteorol.',
            'Geophys. Fluid Dyn.',
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
            'J. Hydraul. Res.',
            'Mon. Not. R. Astron. Soc.',
            'Geophys. J. Int.',
            'J. Thermophys. Heat Transfer',
            'Philos. Trans. R. Soc. London, Ser. A',
            'J. Open Source Softw.',
            'Hydraul. Fluid Mech.',
            'Chaos',
            'Q. J. Mech. Appl. Math.',
            'Eur. J. Appl. Math.',
            'J. Phys. A: Math. Gen.',
            'Commun. Nonlinear Sci. Numer. Simul.',
            'Chaos, Solitons Fractals',
            'Annu. Rev. Condens. Matter Phys.',
            'J. Nonlinear Sci.',
            'Acta Appl. Math.',
            'J. Mar. Res.',
            'Prog. Oceanogr.',
            'Geochem. Geophys. Geosyst.',
            'Phys. Earth Planet. Inter.',
            'J. Oceanogr.',
            'Earth Planet. Sci. Lett.',
            'Proc. R. Soc. London, Ser. A',
            'Nat. Geosci.',
            'Q. J. R. Meteorolog. Soc.',
            'J. Fluids Struct.',
            'Parallel Comput.',
            'Nat. Rev. Phys.',
            'npj Quantum Inf.',
            'New J. Phys.',
            'Nat. Commun.',
            'J. Ship. Res.',
            'Phys. Rev. A',
            'AIAA J.',
            'J. Renew. Sustain. Energy',
            'Phil. Trans. R. Soc. A',
            'Prog. Aerosp. Sci.',
            'J. Atmos. Sci.',
            'Mon. Weather Rev.',
            'J. Appl. Meteorol. Climatol.',
            'Mech. Syst. Signal Process.',
            'Int. J. Multiphase Flow',
            'Exp. Therm Fluid Sci.',
            'Limnol. Oceanogr.',
            'Prog. Phys. Geogr.',
            'Eur. J. Mech. B. Fluids',
            'Int. J. Thermofluids',
            'Antarct. Sci.',
            'Proc. R. Soc. A',
            'Sci. Adv.',
            'Comput. Phys. Commun.',
            'Bioinspiration Biomimetics',
            'IEEE J. Oceanic Eng.',
            'Proc. R. Soc. London, Ser. B',
            'Can. J. Zool.',
            'Environ. Model. Assess.',
            'Clim. Res.',
            'Eur. J. Mech. B. Fluids',
            'Ocean Modell.',
            'Nat. Rev. Phys.',
            'Earth Sci. Rev.',
            'SPE Reservoir Eval. Eng',
            'AAPG Bull.',
            'Pet. Sci.',
            'Energy Fuels',
            'Energy Environ. Sci.',
            'J. Pet. Technol.',
            'SPE J.',
            'Int. J. Hydrogen Energy',
            'Int. J. Min. Sci. Technol.',
            'Appl. Energy',
            'Transp. Porous Media',
            'Coastal Eng.',
            'Comput. Geosci.',
            'IEEE Trans. Neural Networks',
            'NPJ Digital Med.',
            'Sci. Data',
            'J. Comput. Sci.',
            'Reliab. Eng. Syst. Saf.',
            'J. Geophys. Res.',
            'J. Atmos. Oceanic Technol.',
            'Eng. Appl. Comput. Fluid Mech.',
            'Geosci. Model Dev. Discuss.',
            'J. Adv. Model. Earth Syst.',
            'Nat. Mach. Intell.',
            'SIAM Rev.',
            'Spill Sci. Technol. Bull.',
            'Cont. Shelf Res.',
            'Nat. Comput. Sci.',
            'Abstr. Appl. Anal.',
            'Struct. Multidiscip. Optim.',
            'Appl. Therm. Eng.',
            'Nucl. Eng. Des.',
            'Therm. Sci.',
            'Mech. Eng.	J.',
            'Prog. Nucl. Energy',
            'Ann. Nucl. Energy',
            'Annu. Rev. Heat Transfer',
            'Renewable Sustainable Energy Rev.',
            'Int. J. Numer. Methods Eng.',
            'ACM Trans. Math. Software',
            'Eng. Struct.',
            'Eng. Optim.',
            'SIAM Rev.',
            'Finite Elem. Anal. Des.',
            'Eng. Comput.',
            'J. Electron. Packag.',
            'Nucl. Eng. Technol.',
            'Case Stud. Therm. Eng.',
            'Chem. Eng. Sci.',
            'Int. Commun. Heat Mass Transfer',
            'Int. J. Energy Res.',
            'Nucl. Technol.',
            'J. Mach. Learn. Res.',
            'Nucl. Technol.',
            'J. Colloid Interface Sci.',
            'Acta Appl. Math.',
            'Rheol. Acta',
            'Med. Eng. Phys.',
            'Philos. Trans. R. Soc. London, Ser. B',
            'J. Math. Biol.',
            'Bull. Math. Biol.',
            'IEEE Trans. Control Syst. Technol.',
            'SIAM J. Appl. Dyn. Syst.'
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
            'System \& Control Letters',
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
            'Atmospheric Science Letters',
            'Fluid Dynamics Research',
            'Journal of Applied Meteorology',
            'Geophysical Fluid Dynamics',
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
            'Journal of Hydraulic Research',
            'Monthly Notices of the Royal Astronomical Society',
            'Geophysical Journal International',
            'Journal of Thermophysics and Heat Transfer',
            'Philosophical Transactions of the Royal Society of London. Series A, Mathematical and Physical Sciences',
            'Journal of Open Source Software',
            'Hydraulics and Fluid Mechanics',
            'Chaos: An Interdisciplinary Journal of Nonlinear Science',
            'Quartlerly Journal of Mechanics and Applied Mathematics',
            'European Journal of Applied Mathematics',
            'Journal of Physics A: Mathematical and General',
            'Communications in Nonlinear Science and Numerical Simulation',
            'Chaos, Solitons \& Fractals',
            'Annual Review of Condensed Matter Physics',
            'Journal of Nonlinear Science',
            'Acta Applicandae Mathematicae',
            'Journal of Marine Research',
            'Progress in Oceanography',
            'Geochemistry, Geophysics, Geosystems',
            'Physics of the Earth and Planetary Interiors',
            'Journal of Oceanography',
            'Earth and Planetary Science Letters',
            'Proceedings of the Royal Society of London. Series A. Mathematical and Physical Sciences',
            'Nature Geoscience',
            'Quarterly Journal of the Royal Meteorological Society',
            'Journal of Fluids and Structures',
            'Parallel Computing',
            'Nature Review Physics',
            'npj Quantum Information',
            'New Journal of Physics',
            'Nature Communications',
            'Journal of Ship Research',
            'Physical Review A',
            'AIAA Journal',
            'Journal of Renewable and Sustainable Energy',
            'Philosophical Transactions of the Royal Society A: Mathematical, Physical and Engineering Sciences',
            'Progress in Aerospace Sciences',
            'Journal of Atmospheric Science',
            'Monthly Weather Review',
            'Journal of Applied Meteorology and Climatology',
            'Mechanical Systems and Signal Processing',
            'International Journal of Multiphase Flow',
            'Experimental Thermal and Fluid Science',
            'Limnology and Oceanography',
            'Progress in Physical Geography',
            'European Journal of Mechanics - B/Fluids',
            'International Journal of Thermofluids',
            'Antarctic Science',
            'Proceedings of the Royal Society A',
            'Science Advances',
            'Computer Physics Communications',
            'Bioinspiration \& Biomimetics',
            'IEEE Journal of Oceanic Engineering',
            'Proceedings of the Royal Society of London. Series B: Biological Sciences',
            'Canadian Journal of Zoology',
            'Environmental Modeling \& Assessment',
            'Climate Research',
            'European Journal of Mechanics-B/Fluids',
            'Ocean Modelling',
            'Nature Reviews Physics',
            'Earth-Science Reviews',
            'SPE Reservoir Evaluation \& Engineering',
            'AAPG Bulletin',
            'Petroleum Science',
            'Energy \& Fuels',
            'Energy & Environmental Science',
            'Journal of Petroleum Technology',
            'SPE Journal',
            'International Journal of Hydrogen Energy',
            'International Journal of Mining Science and Technology',
            'Applied Energy',
            'Transport in Porous Media',
            'Coastal Engineering',
            'Computers \& Geosciences',
            'IEEE Transactions on Neural Networks',
            'NPJ Digital Medicine',
            'Scientific Data',
            'Journal of Computational Science',
            'Reliability Engineering \& System Safety',
            'Journal of Geophysical Research',
            'Journal of Atmospheric and Oceanic Technology',
            'Engineering Applications of Computational Fluid Mechanics',
            'Geoscientific Model Development Discussions',
            'Journal of Advances in Modeling Earth Systems',
            'Nature Machine Intelligence',
            'SIAM Review',
            'Spill Science \& Technology Bulletin',
            'Continental Shelf Research',
            'Nature Computational Science',
            'Abstract and Applied Analysis',
            'Structural and Multidisciplinary Optimization',
            'Applied Thermal Engineering',
            'Nuclear Engineering and Design',
            'Thermal Science',
            'Mechanical Engineering Journal',
            'Progress in Nuclear Energy',
            'Annals of Nuclear Energy',
            'Annual Review of Heat Transfer',
            'Renewable and Sustainable Energy Reviews',
            'International Journal for Numerical Methods in Engineering',
            'ACM Transactions on Mathematical Software (TOMS)',
            'Engineering Structures',
            'Engineering Optimization',
            'SIAM Review',
            'Finite Elements in Analysis and Design',
            'Engineering with Computers',
            'Journal of Electronic Packaging',
            'Nuclear Engineering and Technology',
            'Case Studies in Thermal Engineering',
            'Chemical Engineering Science',
            'International Communications in Heat and Mass Transfer',
            'International Journal of Energy Research',
            'Nuclear Technology',
            'Journal of Machine Learning Research',
            'Nuclear Technology',
            'Journal of Colloid and Interface Science',
            'Acta Applicandae Mathematicae',
            'Rheologica Acta'
            'Medical Engineering \& Physics',
            'Philosophical Transactions of the Royal Society of London, Series B: Biological Sciences',
            'Journal of Mathematical Biology',
            'Bulletin of Mathematical Biology',
            'IEEE Transactions on Control Systems Technology',
            'SIAM Journal on Applied Dynamical Systems'
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

