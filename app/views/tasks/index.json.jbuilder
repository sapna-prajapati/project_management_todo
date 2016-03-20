json.array!(@tasks) do |task|
  json.extract! task, :id, :project_id, :user_id, :name, :description, :status
  json.url task_url(task, format: :json)
end
