crumb :root do
  link "Home", root_path
end

crumb :stores do
  link "メーカー", stores_path
end
crumb :store do |store|
  link store.name, store_path(store)
end

crumb :brands do
  link "ブランド", brands_path
end
crumb :brand do |brand|
  link brand.name, brand_path(brand)
  parent :store, brand.store
end

crumb :products do
  link "プロダクト", products_path
end
crumb :product do |product|
  link product.name, product_path(product)
  parent :brand, product.brand
end

crumb :items do
  link "商品", items_path
end
crumb :item do |item|
  link item.name, item_path(item)
  parent :product, item.product
end

crumb :reports do
  link "クチコミ", reports_path
end
crumb :report do |report|
  link report.title, report_path(report)
  parent :item, report.item
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).