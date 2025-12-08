# KukulaHipp
ENV 872 Course Project for K. Kukula and S. Hipp, Duke University, December 2025

## Summary

This repository contains all materials (data, analysis, final report) used to assess the environmental impacts of the removal of the Elwha and Glines Canyon dams along the Elwha River in Washington State.

Removal of the Elwha River dams began in 2011 and concluded in 2014. This repository contains several datasets measuring environmental impacts before removal (2006–2011), during removal (2011–2014), and after removal (2014–2017). Data were collected from a range of sources, including the USGS Water Data for the Nation and academic publications available through the USGS ScienceBase repository. Our analysis (and the associated datasets) focuses on environmental impacts in four main areas: streamflow, sediment levels, water quality, and salmon diet. 

## Investigators

- Sylvia Hipp, MEM '27
- Kaitlyn Kukula, MEM '27

## Keywords

Elwha River, Dam Removal, Elwha Dam, Glines Canyon Dam, water quality, salmon diet, sediment

## Database Information

All datasets are located in the following folder: `~/Data/Raw/`

- `/Elwha_Daily_Sediment_2011_2016`
    * Accessed November 10, 2025
    * Sourced from Ritchie, A.C. et al. "Morphodynamic evolution following sediment release from the world’s largest dam removal." *Scientific Reports* 8, 13279 (2018). https://doi.org/10.1038/s41598-018-30817-8
    * Data available at https://www.sciencebase.gov/catalog/item/5a25e9f2e4b03852baf67f06 
- `/Elwha_Estuary_WQ`
    * Accessed October 10, 2025
    * Sourced from Foley, M.M. et al. "Ecological parameters in the Elwha River estuary before and during dam removal." *U.S. Geological Survey data release* Ver 2.0, (2020). https://doi.org/10.5066/F75B00N4
    * Data available at https://www.sciencebase.gov/catalog/item/58f626f8e4b0f2e20545e5ad
- `/Elwha_estuary_fish_diet`
    * Accessed October 10, 2025
    * Sourced from Foley, M.M. et al. "Ecological parameters in the Elwha River estuary before and during dam removal." *U.S. Geological Survey data release* Ver 2.0, (2020). https://doi.org/10.5066/F75B00N4
    * Data available at https://www.sciencebase.gov/catalog/item/5f287fa082cef313ed9e1c96
- USGS Water Data for the Nation available at https://waterdata.usgs.gov/
    * Note: All data accessed from USGS Water Data for the Nation were accessed via URL and thus are not downloaded in this repository. See `~/KululaHipp/Analysis/Discharge_GageHeight.Rmd` (function `read_continuous_data`) for the code used to access these data.
- `/00_Extraneous_Data`
    * This folder contains extraneous datasets downloaded for initial exploration but that were ultimately not included in our final analysis.


## Folder structure 

- `~/`: Base repository includes README file and final report (Rmd and PDF files)
- `~/Analysis`: Analysis folder includes .Rmd files used for initial data wrangling and analysis to inform the content of our final report.
    * Named according to the content of each analysis
- `~/Data/Raw`: Includes all raw data downloaded for analysis and initial data exploration
    * Naming of all files are as downloaded directly from the source
- `~/Data/Metadata`: Includes all metadata files published in support of the datasets used in our analyses
    * Naming of all files are as downloaded directly from the source and correspond to the respective dataset
- `~/Exploratory`: Includes .Rmd files used for initial data exploration to narrow down content of our analyses.
- `~/Images`: Contains images used in our final report.


## Metadata

See the folder `~/Data/Metadata` for metadata of all datasets used in our analysis. 

Metadata files were downloaded directly from the data source and contain information on column names, description of the data content, units associated with the data, and methods of data collection.

## Scripts and code

- `KukulaHipp_FinalProject.Rmd`: Markdown file used to create the final report. This script includes all data wrangling, exploration, and analysis that are part of our final report.
    * Authors: S. Hipp and K. Kukula 
- All scripts in the folder `~/Analysis` were used to perform the data wranging and analysis of the different components of our final report. 
    * `/Chinook_Diet.Rmd` (Author: K. Kukula) analyzes Chinook Salmon diets
    * `/Coho_Diet.Rmd` (Author: K. Kukula) analyzes Coho Salmon diets
    * `/Discharge_GageHeight.Rmd` (Author: S. Hipp) explores discharge and gage height data available from USGS and performs initial time series analysis of the data
    * `/Sediment_Load_and_Concentrations.Rmd` (Author: S. Hipp) explores suspended sediment concentration and load data and performs initial analysis 
- All scripts in the folder `~/Exploratory` were used for the initial exploratory analysis that identified the focus and scope of our analyses.
    * `/Hipp_Elwha_Exploratory.Rmd`: Exploratory analysis of S. Hipp
    * `/Kukula_Elwha_Exploratory.Rmd`: Exploratory analysis of K. Kukula