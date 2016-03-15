get '/tasks/new' do
  erb :'tasks/new'
end

post '/tasks' do
  @task = Task.new(params[:task])
  @task.due_date = to_date_format(params[:task][:due_date])
  if @task.save
    erb :'tasks/_task_item', locals: {task: @task}, layout: false
  else
    "ERROR"
  end
end



get '/tasks/:id' do
  @task = Task.find(params[:id])
  erb :'tasks/show'
end

