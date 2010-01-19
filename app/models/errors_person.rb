# Shows you how to minimally implement the ActiveModel::Errors
# API into a custom model
class ErrorsPerson
  
  extend ActiveModel::Naming
  
  def initialize
    @errors = ActiveModel::Errors.new(self)
  end

  attr_accessor :name
  attr_reader   :errors

  def validate!
    errors.add(:name, "can not be nil") if name == nil
  end

  def read_attribute_for_validation(attr)
    send(attr)
  end

  # Need the following two methods unless you extend Translation with:
  # extend ActiveModel::Translation
  def ErrorsPerson.human_attribute_name(attr, options = {})
    attr
  end
  
  def ErrorsPerson.lookup_ancestors
    [self]
  end

end
