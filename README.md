Steps:

1. create a rails app

2. generate a main controller with no javascripts - this is the main index that will serve up the other pages

rails g controller main index --skip-javascripts

3. set root to "main#index" & remove public/index.html, then put something in the views/main/index.html.erb file

4. put 'gem backbone-on-rails' in and bundle install

5. rails g backbone:install (can do --javascript if no coffee)

6. rails g backbone:scaffold entry - this generates the collections, models, routers & views dirs with a scaffolded javascript file in each

7. router file: routes a path to a javascript function - set up a route then define a function

8. in the initialize function of the main file, point to the routes file then call Backbone.history.start() to trigger the matching router for the URL

9. create a route for "show" that takes an id as an argument then a method that says here's the id: + id - this demonstrates how routes work

10. now create a view to route to. under the index method point to the template in templates/entries/index.jst.eco. set up the template to render something.

11. 

