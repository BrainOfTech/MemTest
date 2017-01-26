json.extract! interaction, :id, :question_id, :response, :prompt_time, :thinking_milis, :created_at, :updated_at
json.url interaction_url(interaction, format: :json)