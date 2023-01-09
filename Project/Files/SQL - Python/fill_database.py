# libraries needed to read csv files and connect with database
import csv
import mysql.connector

# connecting with database
cnx = mysql.connector.connect(host= 'localhost',
                                user='root',
                                password='',
                                database='bigdollar_accidents')

# Creating a cursor that is used to execute statements to communicate with the MySQL database.
cursor = cnx.cursor()
# Opening csv file
with open("../Jupyter - Python/clean_raw_data.csv","r") as f:
    # csv,reader = reads the file line by line, and lists all the columns in the reader object
    reader = csv.reader(f)
    # Loop row is an array with the data from the columns
    for row in reader:
        # Defining the query insert into Name_table(columns) vaues (data)
        sql = "insert into accidents(accident_index, accident_year, accident_reference,location_easting_osgr, location_northing_osgr, longitude,latitude, police_force, accident_severity, number_of_vehicles, number_of_casualties, date,day_of_week, time, local_authority_district,local_authority_ons_district, local_authority_highway,first_road_class, first_road_number, road_type,speed_limit, junction_detail, junction_control, second_road_class, second_road_number,pedestrian_crossing_human_control, pedestrian_crossing_physical_facilities, light_conditions,weather_conditions, road_surface_conditions, special_conditions_at_site, carriageway_hazards, urban_or_rural_area, did_police_officer_attend_scene_of_accident, trunk_road_flag, lsoa_of_accident_location) values (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);" 
        # Executing the query
        cursor.execute(sql,row)
        # using commit method to make the transaction.
        cnx.commit()

cnx.close()