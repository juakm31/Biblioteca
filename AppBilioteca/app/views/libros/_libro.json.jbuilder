json.extract! libro, :id, :cod_libro, :nombre, :autor_id, :created_at, :updated_at
json.url libro_url(libro, format: :json)
