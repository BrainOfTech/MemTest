json.extract! question, :id, :prompt, :choice1, :choice2, :choice3, :choice4, :correctIndex, :created_at, :updated_at
json.url question_url(question, format: :json)