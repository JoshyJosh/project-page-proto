# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = Project.create([{ title: "Canvas Clearner", 
														 description: "A canvas window where you have to \"clean up\" the upper layer with mouse movements to see hidden text underneath. Supports some mobile phones.",
														 publish_date: Date.new(2015, 7, 12)},
													 { title: "JS Calculator",
														 description: "Basic project to test out JavaScript \"Math\" functions and button positioning. A simple test but it works.",
														 publish_date: Date.new(2015, 6, 17)},
													 { title: "Todo List",
														 description: 
														 "Project made for edX's CS50 course final project. It's a simple todo list based on the <a href=\"http://backbonejs.org/docs/todos.html\">backbone.js todo 
														 list example</a>. 
														 Its modified to make multiple todo-lists that you make categories for in the left column (blue), and inspect the list in the middle column (orange). 
														 When a todo list is finished it appends to the right column (green).\n
														 You can download the todo-list as a file and load it from the app, though the app autosaves in the browsers localstorage.\n
														 The project also uses the <a href=\"http://getbootstrap.com/2.3.2/\">bootstrap css framework</a>.",
														 publish_date: Date.new(2014, 12, 29)}])
													 
 Project.find(1).categories.create([{cat_title: "Javascript"}, {cat_title: "CSS"}, {cat_title: "Canvas"}])
 Project.find(2).categories.create([{cat_title: "Javascript"}, {cat_title: "CSS"}])
 Project.find(3).categories.create([{cat_title: "Javascript"}, {cat_title: "CSS"}, {cat_title: "backbone.js"}, {cat_title: "LocalStorage"}])
													 
