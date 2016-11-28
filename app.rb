require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')

get('/') do
  erb(:index)
end

get('/triangles_output') do
  erb(:triangles_output)
end
