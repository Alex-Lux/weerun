class PaceInput < SimpleForm::Inputs::Base
  def input(wrapper_options)
    pace = options.delete(:pace) || default_pace
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)

    content_tag(:div, input_group(pace, merged_input_options), class: "input-group")
  end

  private

  def input_group(pace, merged_input_options)
    "#{@builder.text_field(attribute_name, merged_input_options)} #{pace_addon(pace)}".html_safe
  end

  def pace_addon(pace)
    content_tag(:span, pace, class: "input-group-addon")
  end

  def default_pace
    "min/km"
  end
end
