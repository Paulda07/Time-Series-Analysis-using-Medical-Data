import numpy as np
import pandas as pd
import module1 as m1


def drop_columns():
    ds = m1.rename_columns()
    # Method to drop unnecessary columns from the DataFrame.
    # Returns: DataFrame with specified columns dropped.
    ds = ds.drop(['PatientId', 'AppointmentID','Neighbourhood' ], axis=1)
    return ds


def create_bin():
    ds = drop_columns()
    #First Drop rows with Age == 0
    ds = ds[ds.Age != 0]
    # Generating labels for age intervals (e.g., '1 - 20', '21 - 40', etc.)
    labels = ["{0} - {1}".format(i, i + 20) for i in range(1, 118, 20)]

    # Using the pd.cut() function to categorize ages into groups(use bins = range(1, 130, 20) ,right=False and use the given labels)
    ds['Age_group'] = pd.cut(ds['Age'], bins=range(1, 130, 20), labels=labels, right=False)

    # Returning the modified dataset with assigned age groups
    return ds


def drop():
    ds = create_bin()
    ds = ds.drop('Age', axis=1)
    # Method to drop the original 'Age' column from the DataFrame.
    # Returns: DataFrame with the 'Age' column dropped.
    return ds


def convert():
    ds = drop()
    ds['NoShow'] = ds['NoShow'].apply(lambda x: 1 if x == 'Yes' else 0)

    # Method to convert 'NoShow' values into binary values (1 for 'Yes' and 0 for 'No').
    # Returns: DataFrame with 'NoShow' column values converted to 1s and 0s.
    return ds


def export_the_dataset():
    df = convert()
    df = df.to_csv('patients.csv', index=False)
    # write your code to export the cleaned dataset and set the index=false and return the same as 'df'
    return df


# Load the Cleaned dataset 'patients.csv' to the database provided.
# check if mysql table is created using "patients"
# Use this final dataset and upload it on the provided database for performing analysis in MySQL


