ActiveAdmin.register Post do
  permit_params :category, :author, :published_at, :title,
    :body, :position, :starred, :foo_id

  config.per_page = 10

end
