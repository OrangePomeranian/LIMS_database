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

<img width="1071" alt="Database" src="https://github.com/OrangePomeranian/Medical_Databases/assets/67764136/54d7c98f-c057-4470-bcd1-2cdfc247a6cd">

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

![Screenshot 2023-06-30 at 13 57 52](https://github.com/OrangePomeranian/Medical_Databases/assets/67764136/9dd6fe57-0e99-41f2-9de1-2a498712d814)


![Screenshot 2023-06-30 at 13 58 51](https://github.com/OrangePomeranian/Medical_Databases/assets/67764136/a40c2afa-5d4d-49c3-affc-4f92e9e3f875)

![Screenshot 2023-06-30 at 14 00 22](https://github.com/OrangePomeranian/Medical_Databases/assets/67764136/c57569b5-3380-40ef-a7bf-b05505310d6d)

![Screenshot 2023-06-30 at 14 00 56](https://github.com/OrangePomeranian/Medical_Databases/assets/67764136/e9f0de4c-8e57-40ee-bbfd-519470c11541)

![Screenshot 2023-06-30 at 14 01 26](https://github.com/OrangePomeranian/Medical_Databases/assets/67764136/ed505767-9e23-41b7-abe4-db6cb8d29854)

![Screenshot 2023-06-30 at 14 10 05](https://github.com/OrangePomeranian/Medical_Databases/assets/67764136/a5948293-e569-4969-a46a-d75e2881daf7)

![Screenshot 2023-06-30 at 14 10 30](https://github.com/OrangePomeranian/Medical_Databases/assets/67764136/37e5fed5-09a4-4c62-9358-6fa0640ffb73)

![Screenshot 2023-06-30 at 14 10 57](https://github.com/OrangePomeranian/Medical_Databases/assets/67764136/b15605e0-5451-40c0-9248-584af555cc16)

![Screenshot 2023-06-30 at 14 11 10](https://github.com/OrangePomeranian/Medical_Databases/assets/67764136/a258a8ba-0e7c-4540-9f1f-f7fd740ed694)
