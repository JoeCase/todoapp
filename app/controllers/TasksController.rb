get '/tasks/:id' do
  @task = Task.find(params[:id])
  erb :'tasks/show'
end
