# frozen_string_literal: true

class TextFieldComponent < ViewComponent::Base
  attr_reader :name, :model

  def initialize(name:, model:)
    @name = name
    @model = model
  end

  def input_id
    "#{model}_#{name}"
  end

  def label
    I18n.t("activerecord.attributes.#{model}.#{name}")
  end
end
