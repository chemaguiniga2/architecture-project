require 'json'
require 'faraday'
require 'singleton'

#Class where our microservices are going to be allocated
class Services
    
    include Singleton
    
    #Endpoint for questions handler
    URL_QUESTIONS='https://8pwei8z8yj.execute-api.us-west-2.amazonaws.com/default/questions_function'
    URL_POST_STUDENT='https://34ebm2gvt5.execute-api.us-west-2.amazonaws.com/default/store_students'
    URL_UPDATE = 'https://diyahitibc.execute-api.us-west-2.amazonaws.com/default/update_score'
    
    #define an instance variable where we are going to keep our questions
    attr_reader :questions_bank
    attr_reader :questions_number
    attr_reader :score_user
    attr_reader :user_id
    attr_reader :correct_answer
    attr_reader :user_answer
    attr_reader :users
    
    #Initialize our instance variables
    def initialize
        @questions_bank = []
        @questions_number = 0
        @score_user = 0
        @user_id = ''
        @user_answer = ''
        @correct_answer = ''
    end
    
    #Call the endpoint for getting the questions
    def get_questions(n)
        #Set the connection to the endpoint
      connection = Faraday.new(url: URL_QUESTIONS)
      #Save the response
      response = connection.get

      #Shuffle the bank and convert it into the right format
      res = JSON.parse(response.body).shuffle
      
      #Set up a while for saving the right number of questions in the bank
      i = 0
      while i < n.to_i do
        @questions_bank << res[i]
        i += 1
      end
    
      #Set the questions number variable
      @questions_number = n  

    end
    
    #Method for compare the answer of the user and update the score in the bd
    def score(body)
        
        setAnswers(body['answer'], body['user_answer'])
        
        #Verify if the answer is correct, update score
        if @user_answer == @correct_answer
            @score_user += 1
        end
        
        #define the body for the update endpoint
        bodyUpdate = {
         "id" => @user_id,
         "score" => @score_user
        }
        
        #Set the connection to the endpoint
        connection_get = Faraday.new(url: URL_UPDATE) #cambiar url
        response = connection_get.post do |req|
          req.body = JSON.dump(bodyUpdate)
        end
    
        #Verify if the update was succesfully performed
        puts response.status
        p response.body
      
    end
    
    
    #Method fot getting the scores of the BD
    def get_scores
      #Set the connection to the endpoint
      connection = Faraday.new(url: URL_POST_STUDENT)
      #Save the response
      response = connection.get
      #Verify if the response is ok
      if response.success?
        puts response.status
        data = JSON.parse(response.body)
        p data
        #Keep the results on an instance variable
        @users = data
      end
    end
    
    #Method for saving the user in the db
    def save_student(body)
      #Set the connection to the endpoint 
      connection_post = Faraday.new(url: URL_POST_STUDENT)
      response = connection_post.post do |req|
        req.body = JSON.dump(body)
      end
      
      puts JSON.dump(body)
      puts response.status
      p response.body
    end
    
    #Method for setting the user id in an instance variable
    def set_userId(id)
        @user_id = id
    end
    
    #Method for setting the answers in instance variables
    def setAnswers(correct, users)
        @correct_answer = correct
        @user_answer = users
    end
end
        