# GRL2021
## Supporting code for manuscript submitted to GRL: "Quantifying the influence of precipitation intensity on landslide hazard in urbanized and non-urbanized areas"

Elizabeth C. Johnston (1), Frances V. Davenport (1), Lijing Wang (2), Jef K. Caers (2,3), Suresh Muthukrishnan (4,5), Marshall Burke (1,6,7) and Noah S. Diffenbaugh (1,8)

1. Department of Earth System Science, Stanford University, Stanford, CA 94305
2. Department of Geological Sciences, Stanford University, Stanford, CA 94305
3. Institute for Human-Centered Artificial Intelligence, Stanford University, Stanford, CA 94305
4. Department of Earth, Environmental, and Sustainability Sciences, Furman University, Greenville, SC 29613
5. GIS and Remote Sensing Center, Furman University, Greenville, SC 29613
6. Center on Food Security and the Environment, Stanford University, Stanford, CA 94305
7. Environment and Energy Economics, National Bureau of Economic Research, Cambridge, MA 02138
8. Woods Institute for the Environment, Stanford University, Stanford, CA 94305


**Corresponding author: Elizabeth C. Johnston (ecj@stanford.edu)**

Raw datasets are available from the following locations: 

- PRISM daily 4km precipitation: available from the PRISM Climate Group, Oregon State University (http://www.prism.oregonstate.edu)
- Digital Elevation Model – with SRTM voids filled using accurate topographic mapping – is available from Jonathan de Ferranti (http://www.viewfinderpanoramas.org/dem3.html)
- The Cooperative Open Online Landslide Repository is available from NASA (https://landslides.nasa.gov)
- The TIGER/Line shapefile of land use designations is available from the US Census (http://data.census.gov)

### Organization of Repository
 
- data_processing_scripts: code for processing raw data
- data: post-processed input data 
- analysis_scripts: code that analyzes data 
- results: output from analysis_scripts
- figure_scripts: code to make figures 

### data_processing_scripts

The following scripts process raw data:

- calc-cumulative-precip.R: calculates up to thirty-day cumulative precipitation intensity from PRISM data
- calc-slope.R: calculates 4km slope from a 3 arc second DEM 
- buffer-rural.R: subdivides rural areas based on proximity to urbanized areas and urban clusters

### data

Post-processed data for the US Pacific Coast region at 4 km spatial resolution (some processed data not included due to size): 

- daily_precip_2010_2017.rds: daily precipitation data from PRISM 
- land_use.rds: land use designation into urbanized (>50,000 people), urban cluster (2,500 – 50,000 people), and rural (<2,500 people)  
- slope.rds: slope (in radians)
- landslides_precip.rds: daily to monthly antecedent precipitation intensity preceding observed landslides

### analysis_scripts

Scripts for panel regression models:

- panel_regression_models.R:
- bootstrap_models.R: 

### results

Bootstrapped panel regression coefficients

1. fit with data for the Pacific Coast region:
- pacific_coast_daily_eq1.rds: results of Eq. 1 using daily precipitation intensity 
- pacific_coast_ten_day_eq1.rds: results of Eq. 1 using ten-day antecedent precipitation intensity 
- pacific_coast_monthly_eq1.rds: results of Eq. 1 using monthly antecedent precipitation intensity
- pacific_coast_daily_eq2.rds: results of Eq. 2 (which considers an interaction with mean precipitation intensity) using daily precipitation intensity
- pacific_coast_daily_eq3.rds: results of Eq. 2 (which considers an interaction with mean precipitation intensity) using daily precipitation intensity

2. fit with data for the San Francisco Bay Area:

- San Francisco Bay Area
- California
- Oregon
- Washington





