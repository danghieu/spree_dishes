object @image
attributes :id
Spree::Image.attachment_definitions[:attachment][:styles].each do |k,v|
  node("#{k}_url") { |i| i.attachment.url(k) }
end