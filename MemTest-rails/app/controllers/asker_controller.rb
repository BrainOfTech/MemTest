class AskerController < ApplicationController
  #GET /asker
  def index
    #Generate a Question, and pass it to be displayed.
    @question = Question.create(prompt: "test prompt: choose option 3", choice1: "choice1", choice2: "choice2", choice3: "choice3", choice4: "choice4", correctIndex: 2)
    
  end
  
  #POST /asker
  def process_response
    user_response = params[:index]
    thinking_milis = 0 #TODO
    prompt_time = DateTime.now #TODO
    interaction_record = Interaction.create(question: Question.find(params[:question]), :response => user_response, thinking_milis: thinking_milis, prompt_time: prompt_time)
    #Process the response:
    redirect_to asker_url
  end
end
