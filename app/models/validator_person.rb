# Shows you how to minimally implement the ActiveModel::Validator
# API into a custom model
class ValidatorPerson
  include ActiveModel::Validations
  validates_with HasNameValidator   # Can be found in /lib
  attr_accessor :name
end
