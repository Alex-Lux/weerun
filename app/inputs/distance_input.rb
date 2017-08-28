class DistanceInput < SimpleForm::Inputs::Base
  def input(wrapper_options)
    distance = options.delete(:distance) || default_distance
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)

    content_tag(:div, input_group(distance, merged_input_options), class: "input-group")
  end

  private

  def input_group(distance, merged_input_options)
    "#{@builder.text_field(attribute_name, merged_input_options)} #{distance_addon(distance)}".html_safe
  end

  def distance_addon(distance)
    content_tag(:span, distance, class: "input-group-addon")
  end

  def default_distance
    "Km"
  end
end
