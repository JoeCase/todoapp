get '/users/new' do
  erb :'users/user_new'
end


post '/users' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    "ERROR"
  end
end


get '/users/:user_id' do
  @user = User.find(params[:user_id])
  erb :'/users/user_show'
end

