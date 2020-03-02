# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app (This app was made with sinatra)
- [x] Use ActiveRecord for storing information in a database (ActiveRecord keeps users and posts)
- [x] Include more than one model class (e.g. User, Post, Category)(I have a user and a post model)
- [x] Include at least one has_many relationship on your User model (A User has_many Posts)
- [x] Include at least one belongs_to relationship on another model (A Post belongs_to a User)
- [x] Include user accounts with unique login attribute (username or email) (an email must be unique for it to be        created)
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying (A post can go        through all the C.R.U.D. actions)
- [x] Ensure that users can't modify content created by other users(the logged in email must be the editing email        for it to work)
- [x] Include user input validations (input fields cannot be left empty)
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message