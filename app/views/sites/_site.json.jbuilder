json.extract! site, :id, :origin_url, :short_path, :usage_amount, :created_at, :updated_at
json.url site_url(site, format: :json)
