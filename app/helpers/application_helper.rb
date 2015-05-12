module ApplicationHelper
  def sortable(column, title=nil, url)
    title ||= column.titleize
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    (column == sort_column && sort_direction == "asc") ? title << " \u25B2" : title << " \u25BC"
    link_to title, "#{url}?direction=#{direction}&sort=#{column}" << (params[:search] ? "&search=#{params[:search]}" : ''), remote: false, class: 'sortable'
  end

  def link_to_fa_button(options)
    url = options[:url]
    text = options[:text] ? "<span>&nbsp#{options[:text]}</span>" : ''
    title = options[:title] || nil
    remote = options[:remote].nil? ? true : options[:remote]
    data = options[:data] || nil
    icon = options[:icon] || nil
    id = options[:id] || nil
    html_class = "btn btn-default btn-md" << (options[:html_class] ? " #{options[:html_class]}" : '')
    target = options[:target] || nil
    method = options[:method] ||nil
    disabled = options[:disabled] || nil
    link_to "<span class='fa #{icon}'></span> #{text}".html_safe, url, title: title, remote: remote, data: data, id: id, class: html_class, target: target, method: method, disabled: disabled
  end

  def fa_button_no_active(options)
    text = options[:text] ? "<span>&nbsp#{options[:text]}</span>" : ''
    title = options[:title] || nil
    icon = options[:icon] || nil
    id = options[:id] || nil
    html_class = "btn btn-default" << (options[:html_class] ? " #{options[:html_class]}" : '')
    "<span disabled class='fa #{html_class} #{icon}'> #{text}</span>".html_safe
  end

  def button_tag_fa(options)
    text = options[:text] ? "<span>&nbsp#{options[:text]}</span>" : ''
    title = options[:title] || nil
    icon = options[:icon] || nil
    data = options[:data] || nil
    name = options[:name] || nil
    button_tag type: 'submit', data: data, name: name, title: title, class: 'btn btn-default' do
      "<i class='fa #{icon}'></i> #{text}".html_safe
    end
  end

  def flash_messages(flash)
    success, error, warning, info, f_messages = '','','','',''
    flash.each do |name, msg|
      case name
        when 'success'
          success << msg
        when 'error'
          error << msg
        when 'warning'
          warning << msg
        else
          info << msg
      end

    end

    f_messages << "<div class='alert alert-success' role='alert'><span class='fa fa-lg fa-check-circle'></span> #{success}</div>" if success.size > 0
    f_messages << "<div class='alert alert-danger' role='alert'><span class='fa fa-lg fa-exclamation-triangle'></span> #{error}</div>" if error.size > 0
    f_messages << "<div class='alert alert-warning' role='alert'><span class='fa fa-lg fa-exclamation-triangle'></span> #{warning}</div>" if warning.size > 0
    f_messages << "<div class='alert alert-info' role='alert'><span class='fa fa-lg fa-info-circle'></span> #{info}</div>" if info.size > 0

    f_messages.size > 0 ? f_messages.html_safe : nil
  end

end
