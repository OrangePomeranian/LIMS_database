# Medical_Databases

As part of the project to create a LIMS database for the laboratory, we carried out a number of steps to ensure effective management of laboratory information. The process of creating the database consisted of several steps, which we will describe below. First, we started by creating a database in the MySQLWorkbench application. The database was designed to efficiently store information related to laboratory management. Within the database, we created the following tables:
- Authority - a table storing information about user permissions.
- Contact_details - a table storing contact details.
- Equipment - table storing information about laboratory equipment.
- Equipment_methods - a link table between equipment and methods.
- Experiments - table storing data about experiments.
- Methods - table storing information about laboratory methods.
- Overview - table used for general overview information.
- Position_list - table storing a list of positions in the laboratory.
- Projects - table storing project data.
- Project_workers - a table linking projects and workers.
- Samples - table storing information about samples.
- Samples_list - link table between samples and list.
- Users - a table storing user data.

<img width="1071" alt="Database" src="https://github.com/OrangePomeranian/LIMS_database/assets/67764136/78bc8c30-2f84-452c-b3db-fd20cc4f336f">


Next, in order to manipulate the data in the database, we performed data operations using phpMyAdmin, which is part of the XAMPP package. With this tool, we were able to create, modify and manage the data in the database.
After defining the database and operations on the data, we proceeded to create the user interface for the database. We used HTML and PHP for this purpose. The database interface was designed to allow users to manage their laboratory information conveniently. It consists of the following functionalities:
- Login window - allows users to log into the system using their PESEL number as login and their name as password.
- Registration window - allows new users to create an account in the database.
- Password reset window - allows users to reset their password in the
case they forget it.
- Projects and experiments tabs - allows users to view tables of project information.
- Tab with a description of the equipment and the procedures of the processes performed with it.
- Transition from the rows in the experiments table to information about the samples used in the experiments process.

Below we present the final result of our project.


