require 'json'
require 'faraday'
require 'sinatra'
require './Model/services'

#Set a new instance of the microservices file
SERVICES = Services.instance

#Define the get method for the initial route
get '/' do
  #Call the login view
  erb :login
end

#Define the post method for the q-creation route
post '/q-creation' do
  #Poblates the questions bank in services instance
  SERVICES.get_questions(params[:n_questions])
  #Define body for uploading the user in the bd
  body = {
    "id" => params[:id],
    "nombre" => params[:nombre],
    "score" => 0
  }
  #call the save student method
  SERVICES.save_student(body)
  #sets the actual user id in the services instance
  SERVICES.set_userId(params[:id])
  #Redirect the action to the get method of the route /pregunta
  redirect '/pregunta'
end

#Define the post method of the /reiniciar route
post '/reiniciar' do
  #Poblates the questions bank in services instance
  SERVICES.get_questions(SERVICES.questions_number)
  #Redirect the action to the get method of the route /pregunta
  redirect '/pregunta'
end

#Define the get method of the /pregunta route
get '/pregunta' do
  #Checks if the questions bank is empty or keep showing the questions
  if SERVICES.questions_bank.length() > 0
    #Sets the next question to ask
    @question = SERVICES.questions_bank.last()
  else
    #Redirects to submit if the bank is empty
    redirect '/submit'
  end
  #Calls the pregunta view
  erb :pregunta
end

#Define the post method of the /submit-respuesta route
post '/submit-respuesta' do
  #Does a pop to the bank
  questionPop = SERVICES.questions_bank.pop()
  #Define the body for checking the answer
  bod = {
    "user_answer" => params[:gridRadios],
    "answer" => questionPop['Answer']
  }
  

  #Send the body to revision
  SERVICES.score(bod)
  
  #Call the answers view
  erb :answers
end

#Define the get method of the /submit route
get '/submit' do
  #Get all the scores
  SERVICES.get_scores
  #Call the submit view
  erb :submit
end