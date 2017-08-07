json.extract! experiment, :id, :title, :overview, :image, :field_id, :created_at, :updated_at
json.url experiment_url(experiment, format: :json)
