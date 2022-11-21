
# frozen_string_literal: true

class FloatingLabelBuilder < ActionView::Helpers::FormBuilder
  def text_field(attribute, options = {})
    @template.render(TextFieldComponent.new(name: attribute, model: model_name)) do
      super(attribute, options.merge(class: input_classes, placeholder: ''))
    end
  end

  def text_area(attribute, options = {})
    @template.render(TextFieldComponent.new(name: attribute, model: model_name)) do
      super(attribute, options.merge(class: input_classes, placeholder: ''))
    end
  end

  def submit
    @template.render(FormSubmitButtonComponent.new)
  end

  private

  def model_name
    @object.class.name.underscore
  end

  def input_classes
    'block p-4 w-full text-lg appearance-none focus:outline-none bg-transparent'
  end
end
