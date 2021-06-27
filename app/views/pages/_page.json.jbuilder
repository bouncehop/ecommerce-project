# frozen_string_literal: true

json.extract! page, :id, :title, :content, :permalink, :created_at, :updated_at
json.url page_url(page, format: :json)
