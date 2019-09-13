json.extract! prestamo, :id, :cliente_id, :libro_id, :fecha_prestamo, :fecha_devolucion, :created_at, :updated_at
json.url prestamo_url(prestamo, format: :json)
