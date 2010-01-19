# Shows you how to minimally implement the ActiveModel::AttributeMethods
# API into a custom model
class AttributePerson

  include ActiveModel::AttributeMethods

  cattr_accessor :primary_key
  cattr_accessor :inheritance_column
  
  define_attr_method :primary_key, "sysid"
  define_attr_method( :inheritance_column ) do
    original_inheritance_column + "_id"
  end

  attribute_method_affix  :prefix => 'reset_', :suffix => '_to_default!'
  attribute_method_suffix '_short?'
  attribute_method_prefix 'clear_'
  define_attribute_methods [:name]

  attr_accessor :name
  
  private

  def attribute_short?(attr)
    send(attr).length < 5
  end

  def clear_attribute(attr)
    send("#{attr}=", nil)
  end

  def reset_attribute_to_default!(attr)
    send("#{attr}=", "Default Name")
  end

end
