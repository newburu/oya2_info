json.extract! report, :id, :item_id, :title, :detail, :bought_at, :created_at, :updated_at
json.url report_url(report, format: :json)
