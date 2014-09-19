module ApplicationHelper
  def sortable(column, title=nil, url)
    title ||= column.titleize
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    (column == sort_column && sort_direction == "asc") ? title << " \u25B2" : title << " \u25BC"
    link_to title, "#{url}?direction=#{direction}&sort=#{column}" << (params[:search] ? "&search=#{params[:search]}" : ''), remote: true, class: 'sortable'
  end

  def link_to_fa_button(options)
    url = options[:url]
    text = options[:text] ? "<span>&nbsp#{options[:text]}</span>" : ''
    title = options[:title] || nil
    remote = options[:remote].nil? ? true : options[:remote]
    data = options[:data] || nil
    icon = options[:icon] || nil
    id = options[:id] || nil
    html_class = "btn btn-default btn-sm" << (options[:htm_class] ? ",#{html_class}" : '')
    target = options[:target] || nil
    link_to "<span class='fa #{icon}'></span> #{text}".html_safe, url, title: title, remote: remote, data: data, id: id, class: html_class, target: target
  end
end
