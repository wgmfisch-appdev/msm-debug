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

 1. Clone this project to your Cloud9 workspace as usual.
 1. `cd msm-debug`
 1. `bin/setup`
 1. `bin/server`
 1. Navigate to the Preview of the running application in Chrome — you should see a list of movies
 1. As you work, `rails grade:all` in a separate tab for feedback.

The `Movies#index` action is functional, and I have set it to be the root URL.

From here, click through the app and debug. Try adding a new movie, updating a movie, looking at the details of a movie, and deleting a movie.

Sometimes you will get an error message; sometimes there won't be an error message, but the action just won't do its job. Use the server log to help figure out what's going on.

After Movies, work on Directors, then Actors.
