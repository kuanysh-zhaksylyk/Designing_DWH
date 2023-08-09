# Designing_DWH_PowerLifting
**********************************************
## Dataset:
This dataset is a snapshot of the OpenPowerlifting database as of April 2019. OpenPowerlifting is creating a public-domain archive of powerlifting history. Powerlifting is a sport in which competitors compete to lift the most weight for their class in three separate barbell lifts: the Squat, Bench, and Deadlift. The dataset was taken from [Kaggle.](https://www.kaggle.com/datasets/open-powerlifting/powerlifting-database)
**********************************************
### meets.csv

![meets.csv dataset](/images/dataset1.png)

### powerlifting.csv

![powerlifting.csv dataset](/images/dataset2.png)
***

## Data Warehouse Design
### Project: five dimensions (Meets, Participants, Division Equipment, Date) and a fact table (Results). 
### Schema - "Star" with console table Date
![Schema](/images/design3.png)
