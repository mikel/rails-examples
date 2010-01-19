# Shows you how to minimally implement the ActiveModel::Serialization
# API into a custom model
class SerialPerson

  include ActiveModel::Serialization
  include ActiveModel::Serializers::JSON
  include ActiveModel::Serializers::Xml

  attr_accessor :name

  def attributes
    @attributes ||= {'name' => 'nil'}
  end
  
end