module ComentsHelper

  def nested_comnts(coments)
    coments.map do |coment,sub_coment|
      sub_coments = content_tag(:div, nested_comnts(sub_coment), :class=> "coment nested") if sub_coment.any?
      render(coment) + sub_coments
    end.join.html_safe
  end

end
