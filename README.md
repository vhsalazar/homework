# Trinity AI: Full Stack Software Engineer Take Home Test

To test your ability as a full stack Rails engineer, we decided not not give you a problem with Binary Trees, Linked Lists or string manipulation. Instead we'll give you a Rails application that you must create on your own that reflects a real use case. This is not specifically a UI test so feel free to make the UI as nice or sparse as you have the time for. This should take you less than 2 hours if you have a reasonable experience with Ruby on Rails.

In the source code we have a Rails application with a seeds.rb file that generates a large number of fake users and video objects and stores them into a SQLite database. Your goal is to give the user a clean interface into the data and how it connects. The data and skeleton is all that's given to you. You'll need to find a way to associate the models, create routes, controllers and views.

### Goals:

- Create controllers for Videos and Users
- Create actions for index and show for both Videos and Users
- Create corresponding routes
- Use Model association to link video and users
- Create views for index and show for video, user
  - The index page should list ALL of each resource and contain links to the show page for a resource
    - i.e The Users index can have a list of all users and when the user is clicked, the user should be taken to the show page
  - The show page should just show the attributes of a resource
    - This includes showing the Videos associated with the Users and Vice Versa.
    - Hint: You might want to take a look at partials to keep things DRY
- Create a dashboard with a histogram that shows how many users saw each video
  - Just a table with ( video title, number of users ) is fine
  - Extra points for actually creating a histogram plot.


### Things to keep in mind

- How are you handling large numbers of resources in a single page?
- Have you written any Rspec Unit tests for your code? ( Extra Points if you did )
- You won't necessarily fail if you do not complete this within the time allotted, we are mainly looking for your ability to solve a real world problem in a real amount of time. Take a much or little time as you need, but it shouldn't take you longer than 2 hours.

## Setup

You must first fork and clone this repository to your local environment

To setup the project:

```
bundle install
rake db:setup # this could take a minute
rspec spec # To run the test suite
```

## Submitting

1. Push your app to Heroku or another similarly free hosting provider so we can see it running live.
2. Make sure you have committed your changes to the local git repository and zip your changes back up (zip or tar.gz is fine)
3. Email your Trinity contact with the github URL as well as a link to where your project is hosted.
