get '/lists/:id' do
  @user = User.find(session[:user_id])
  @tasks = List.find(params[:id]).tasks
  erb :'users/show'

end