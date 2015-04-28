require('sinatra')
require('sinatra/reloader')
require('./lib/to_do')
also_reload('lib/**/*.rb')

get("/") do
  @todo = ToDo.all()
  erb(:index)
end

post("/todo") do
  description = params.fetch("description")
  todo = ToDo.new(description)
  todo.save()
  erb(:success)
end
