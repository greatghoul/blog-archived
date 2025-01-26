Jekyll::Hooks.register [:posts, :pages], :post_render do |item, output|
  link_attr = nil
  skip_tags = %w[a pre code kbd script]
  item.output = Rinku.auto_link(item.output, :all, link_attr, skip_tags)
end
