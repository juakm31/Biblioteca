json.extract! cliente, :id, :cod_cliente, :nombre, :correo, :telefono, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
