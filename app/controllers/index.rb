get '/' do
  Word.canonical
  erb :index
end

get '/racecar' do
  erb :racecar
end

get "/apples" do
  erb :apples
end

get "/cesar" do
  erb :cesar
end