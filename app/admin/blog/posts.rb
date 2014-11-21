ActiveAdmin.register Blog::Post do
  permit_params :category, :author, :published_at, :title,
    :body, :position, :starred, :foo_id

  filter :category
  filter :title
  filter :starred

end
