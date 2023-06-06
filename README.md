# Euroleague Data Warehousing Project

This project aims to create a data warehousing solution using the Euroleague dataset.


## 1. Downloading Data  
To get started, download the Euroleague dataset from the Kaggle dataset page using the following link: <a href="https://www.kaggle.com/datasets/babissamothrakis/euroleague-datasets" target="_new">Euroleague Datasets</a>
<br><br/>

## 2. Scheming and Loading Data
To begin the project, perform the following steps:

- Scheme the CSV files provided in the dataset.
- Load the required CSV files into your data warehousing environment.
    - The following files will be used: team.csv, player.csv, play_by_play.csv, and header.csv.
<br><br/>

## 3. Conduct Reverse Engineering for Constructing a 3-NF Schema
Next, conduct reverse engineering to create a 3-NF (Third Normal Form) schema for the Euroleague dataset. The initial steps involve building the **teams** and **players** tables from the raw data.
<br><br/>

## TODO
In addition to the steps above, there are a few more tasks to complete:

- Build the play-type table to further enrich the schema.
- Construct a star schema by incorporating dimensions and facts, providing a more comprehensive structure for analysis and reporting.