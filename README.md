CodeReview 11


Good Morning Students!

Welcome to your 11th Code Review. 

You will need to achieve more than 60 points to pass this Code Review successfully. 

You will be graded according to the results achieved. Please see the number of points for each task below. 

The grading system has the following rules:

Up to 60 points = red

Between 61 and 79 = yellow

Over 80 = green

You can submit your solution (as GitHub project link) until Saturday at 18:00:00.


Project description: “Adopt a Pet”
You love animals and think it is time to adopt one. You like all sorts of animals: small animals, large animals, you may even like reptiles and birds and may be open to adopting animals of any age. 

Let's then create an animal adoption platform to connect users (people interested in adopting pets) and animals (pets interested in being adopted). 

All users must introduce their first_name and last_name, email, phone_number, address, picture and password in order to register on the platform.

All animals must have a name, a photo and live at a specific location(a single line like “Praterstrasse 23” is enough). They also have a description, size, age, hobbies and belong to a breed.

For the regular points of this CodeReview, you need to create a structure using PHP and MySQL (apart from HTML, CSS, JS, etc) that will display the relevant data of the animals.

 

Project Naming:

Create a GitHub Repository named: BE15_CR11_YourName. Push the files into it and send the link through the learning management system (LMS). Set your repository to private. Add codefactorygit as a collaborator. See an example of a GitHub link below:

https://github.com/JohnDoe/repositoryname.git.

Your MySQL database MUST be named: BE15_CR11_petadoption_yourname

For this CodeReview, the following criteria will be graded:

 
(5) Create a database ( BE15_CR11_petadoption_yourname) initially with 2 tables: users and animals. Add sufficient test data in the animals table: at least 10 records in total between small animals and large animals. Remember that animals have their age so make sure there are at least 4 senior animals in the DB (older than 8 years old).

(20) Display all animals on a single web page (home.php). Make sure a nice GUI is presented here (backenders exempt)

(15) Display all senior animals. Here you can decide whether to create a filter on the home page or create a new page senior.php

(15) Create a show more/show details button that will lead to a new page with only the information from that specific record/animal.

(15) Create a registration and login system.

Create separate sessions for normal users and administrators.

(15)Normal Users:

They will be able to ONLY see(read) and access all data. No action buttons (create, edit or delete) should be available.

(15) Admin:

Only the admin is able to create, update and delete data about animals (not users) within the admin panel, therefore an Admin Panel/Dashboard  should be created.

Bonus points
(20)Pet Adoption

In order to accomplish this task, a new table pet_adoption will need to be created. This table should hold the userId and the petId (as foreign keys) plus other information that you may think is relevant i.e: adoption_date. 

Each Pet information/card should have a button "Take me home" that when clicked, will "adopt" the pet. When it does, a new record should be created in the table pet_adoption.

Hint: if you use the POST method to create the adoption, you will need a form. Get method won't need it. You can expand on it creating a status for the pet and it only shows to be adopted according to its status. Not required though.


Note: Don’t forget to upload your php code together with your database .sql file to the GitHub repository. Please organize your project content (files) into folders according to its type.



Feedback: 105 Points
Delia
Hi Sanja! You have a good CR.

The page looks good and the crud is functioning as intended.

Please find below my suggestions:
- the path to the pictures from the a_delete is "../../pictures/$picture". Because the path was not correct the unlink always throws and errors
- try to use your vsc to format your code so it will be easier to read.
- the picture is deleted on update even if the used doesnt chose another one and thats because on a_update you have the same query and u insert the picture even if it was an error with it.
-the function to upload a picture should have the same arguments in both a_create.php and a_update.php  $picture = file_upload($_FILES['picture'], 'animal');


You still have 24hrs if you would like to improve your grading trying to reach 120.

Good Job! If you have any questions please let me know.

-Delia
