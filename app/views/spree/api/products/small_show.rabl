object @product
cache [I18n.locale, @current_user_roles.include?('admin'), current_currency, root_object]
attributes :id, :name, :dish_type_id
node(:available_on){|p| p.available_ons {|d| d.delivery_date}}
node(:dish_price) {|p| p.cost_price}
node(:dish_currency) {|p| p.cost_currency}
node(:likes) { |p| p.likes.count }
node(:current_user_like){|p| p.current_user_like?(@user_id)}
child(:variant_images => :images) { extends "spree/api/images/show" }