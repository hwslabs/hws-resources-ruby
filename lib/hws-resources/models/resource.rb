# frozen_string_literal: true

require 'json_schemer'

class Hws::Resources::Models::Resource < ActiveRecord::Base # :nodoc:
  attr_readonly :schema

  validate :validate_schema, on: :create

  private

  def validate_schema
    if self.schema.blank?
      errors.add(:schema, 'blank schema  specified')
      return
    end
    JSONSchemer.schema(self.schema)
  rescue StandardError => _e
    errors.add(:schema, 'invalid schema specified')
  end
end
