# Shows you how to minimally implement the ActiveModel::Validator
# API into a custom model
class HasNameValidator < ActiveModel::Validator
  def validate(record)
   record.errors[:name] = "Must have name" if record.name.blank?
  end
end
