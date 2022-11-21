# frozen_string_literal: true

class TextFieldComponent < ViewComponent::Base
  attr_reader :name, :model

  def initialize(name:, model:)
    @name = name
    @model = model
  end

  def label
    I18n.t("activemodel.attributes.#{model}.#{name}")
  end
end
