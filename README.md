# Rails Helpers Lecture Assessments

Before all assessments, run `rails s` in your terminal to start the rails app.
Test in the browser by going to http://localhost:3000/airlines


### Assessment 1: Using validations

* Add a validation to the airliens model to check for the presence of the airlines name



### Assessment 2: Checking validation in the controller

* Check in the controller for errors before you save an airline
* Save `@airline.errors.messages` in the `flash`



### Assessment 3: Display errors in the view

- Iterate over the errors in `edit.erb` to display them in the view
