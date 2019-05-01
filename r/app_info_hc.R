
# Levels for ordering factors -------------------------------------------------
age_levels <-
  c("Under 18",
    "Under 5",
    "5-17", "5-6", "7-12", "13-17",
    "18-64",
    "18-44", "18", "19-24", "25-29", "30-34", "35-44",
    "45-64", "45-54", "55-64",
    "65+")

freq_levels <- c(
  "9-10 rating","7-8 rating","0-6 rating",
  "Don't know/Non-response",
  "Not ascertained",
  "Inapplicable",
  "Missing")

racesex_levels <- c(
  "Male, Hispanic",
  "Male, Black",
  "Male, White",
  "Male, Amer. Indian, AK Native, or mult. races",
  "Male, Asian, Hawaiian, or Pacific Islander",
  "Male, White and other",
  
  "Female, Hispanic",
  "Female, Black",
  "Female, White",
  "Female, Amer. Indian, AK Native, or mult. races",
  "Female, Asian, Hawaiian, or Pacific Islander",
  "Female, White and other")

# Levels to exclude in checkbox initially -------------------------------------
subLevels <- c(
  'Physician office visits', 'Non-physician office visits',
  'Physician hosp. visits', 'Non-physician hosp. visits')

exclude_initial <- c(
  "All persons" 
  # "Any event", "Any source",
  #    "Under 5", "5-17", "5-6", "7-12", "13-17",
  #   "18-44", "18", "19-24", "25-29", "30-34", "35-44",
  #    "45-64", "45-54", "55-64",
  #    "<65, Any private", "<65, Public only", "<65, Uninsured",
  #    "65+, Medicare only", "65+, Medicare and private", "65+, Medicare and other public",
  #   "65+, No medicare"
) %>% append(subLevels)




## Info list for all apps -----------------------------------------------------

infoList <- list()

## HOME PAGE ------------------------------------------------------------------

infoList[['home']] <- list(
  
  description =
    'The MEPS Household Component summary tables provide frequently used summary estimates for the U.S. civilian noninstitutionalized population on household medical utilization and expenditures, demographic and socio-economic characteristics, health insurance coverage, access to care and experience with care, medical conditions, and prescribed medicine purchases. Most tables can be stratified by demographic or socio-economic characteristics. Plots from selected data can also be generated, and R and SAS code for calculating selected estimates is available. See <a href="https://meps.ahrq.gov/mepsweb/survey_comp/hc_data_collection.jsp">Sample Design and Data Collection Process</a> for details on the collection of individual data items (e.g., health insurance status, age). The estimates provided in the tables are based on data available in standardized <a href="https://meps.ahrq.gov/mepsweb/data_stats/download_data_files.jsp">public use data files.</a> Pages have been optimized for Chrome, Firefox, and Safari.'
  
)



## HOUSEHOLD COMPONENT --------------------------------------------------------

# Childhood Tables -----------------

infoList[['hc_use']] <- list(
  
  title = "Children's Summary Health Tables",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Summary Health Tables for children under age 18 years by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on selected health topics for children under age 18 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by a grouping variable. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')

infoList[['hc_use1']] <- list(
  
  title = "Asthma",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Ever having asthma and still having asthma for children under age 18 years by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on of ever having asthma and still having asthma for children under age 18 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by a grouping variable. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')


infoList[['hc_use2']] <- list(
  
  title = "Hay fever/allergies",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Hay fever, respiratory allergies, food allergies, and skin allergies in the past 12 months for children under age 18 years by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on hay fever, respiratory allergies, food allergies, and skin allergies in the past 12 months for children under age 18 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')



infoList[['hc_use3']] <- list(
  
  title = "Learning disability/attention deficit/hyperactivity disorder",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Ever having been told of having a learning disability or attention deficit/hyperactivity disorder for children aged 3-17 years.",
  
  description = "These summary health statistics tables provide statistics on ever having been told of having a learning disability or attention deficit/hyperactivity disorder for children aged 3-17 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')



infoList[['hc_use4']] <- list(
  
  title = "Prescription medication use",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Having a problem for which prescription medication has been taken regularly for at least 3 months for children under age 18 years.",
  
  description = "These summary health statistics tables provide statistics on having a problem for which prescription medication has been taken regularly for at least 3 months for children under age 18 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')



infoList[['hc_use5']] <- list(
  
  title = "Respondent-assessed health status",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Respondent-assessed health status for children under age 18 years by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on respondent-assessed health status for children under age 18 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')



infoList[['hc_use6']] <- list(
  
  title = "Number of school days missed",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Number of school days missed in the past 12 months because of illness or injury for children aged 5-17 years by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on the number of school days missed in the past 12 months because of illness or injury for children aged 5-17 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')


infoList[['hc_use7']] <- list(
  
  title = "Usual place of health care",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Usual place of health care, and type of place, for children under age 18 years, by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on usual place of health care, and type of place, for children under age 18 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')


infoList[['hc_use8']] <- list(
  
  title = "Time since last contact with health care professional",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Length of time since last contact with a health care professional for children under age 18 years by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on length of time since last contact with a health care professional for children under age 18 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')


infoList[['hc_use9']] <- list(
  
  title = "Selected measures of health care access",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Selected measures of health care access for children under age 18 years by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on selected measures of health care access for children under age 18 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')


infoList[['hc_use10']] <- list(
  
  title = "Emergency room visits",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Emergency room visits in the past 12 months for children under age 18 years by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on emergency room visits in the past 12 months for children under age 18 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
  Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
  After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')


infoList[['hc_use11']] <- list(
  
  title = "Unmet dental need",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Unmet dental need in the past 12 months and of length of time since last dental visit for children aged 2-17 years by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on unmet dental need in the past 12 months and of length of time since last dental visit for children aged 2-17 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')

infoList[['hc_use12']] <- list(
  
  title = "Receiving special education or early intervention services",
  
  img = list(src="../src/custom/img/icon_ins.png", alt = "healthcare clipboard"),
  
  preview = "Receiving special education or early intervention services for children under age 18 years by demographic or socioeconomic characteristics.",
  
  description = "These summary health statistics tables provide statistics on receiving special education or early intervention services for children under age 18 years. Types of data available include age adjusted and crude number of people, as well as percentage distributions of people. Data can be grouped by demographic characteristics (such as age, race, or sex).",
  
  instructions1 = '
      Use the options below to select a statistic of interest, the data view ("Trends over time" or "Cross-sectional"), data years, and grouping variables. If you select "Trends over time", you can choose a range of years. The "Cross-sectional" view displays a single year, which can be stratified by up to two grouping variables. Once a grouping variable is selected, a dropdown menu will appear, enabling selection of specific levels in each group.',
  
  instructions2 = '
After you select the available options, the table will automatically be updated. The data can be viewed as a plot under the "Plot" tab, with line graphs for trends over time and grouped bar graphs for the cross-sectional view.')
#The "Code" tab displays R and SAS code needed to replicate the data shown in the table. The generated table, plot, and codes can be downloaded with the download button <img height = "25px" src = "../src/custom/img/download-white.png"> under each tab. To view standard errors in the table or 95% confidence intervals in the plot, select the "Show standard errors" checkbox.')

