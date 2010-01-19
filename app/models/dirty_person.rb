# Shows you how to minimally implement the ActiveModel::Dirty
# API into a custom model
class DirtyPerson

  include ActiveModel::Dirty

  define_attribute_methods [:name]

  def name
    @name
  end

  def name=(val)
    name_will_change!
    @name = val
  end

  def save
    @previously_changed = changes
  end

end

