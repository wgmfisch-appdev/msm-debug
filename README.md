# MSM Debug

This application has 3 database-backed web CRUD resources: directors, movies, and actors.

As usual, each resource has 7 "golden" actions that allow users to interact with it:

### CREATE
 - new_form
 - create_row

### READ
 - index
 - show

### UPDATE
 - edit_form
 - update_row

### DELETE
 - destroy

There are bugs in most of the 21 actions required to CRUD our 3 resources. Your job is to debug them all until you can create, read, update, and delete each of directors, movies, and actors without running into any issues.

Here is a fully functional version of the app, for your reference.

http://msm-debug-target.herokuapp.com/

Make yours work like it. Your local app is using a dark navbar, and the reference app is using a light navbar; don't get confused between the tabs as you try to check your work.

Use the detailed README of the Photogram Golden Seven project as a reference.

## Setup

 1. From [your Cloud9 repositories list](https://c9.io/account/repos), set up a workspace [as usual](https://guides.firstdraft.com/starting-on-a-project-in-cloud9).
 1. Set up the project: `bin/setup`
 1. Start the web server by clicking "Run Project".
 1. Navigate to your live application preview  — you should see a list of movies.
 1. As you work, remember to navigate to `/git` and **commit often as you work.**
 1. Make new branches freely to experiment! _Especially_ before starting on a new task.
 1. Run `rails grade` as often as you like to see how you are doing, but **make sure you test your app manually first to make sure it matches the target's behavior first**.

The `Movies#index` action is functional, and I have set it to be the root URL.

From here, click through the app and debug. Try adding a new movie, updating a movie, looking at the details of a movie, and deleting a movie.

Sometimes you will get an error message; sometimes there won't be an error message, but the action just won't do its job. Use the server log to help figure out what's going on.

After Movies, work on Directors, then Actors.
