# Shows you how to minimally implement the ActiveModel::Callbacks
# API into a custom model
class CallbacksPerson
  extend ActiveModel::Callbacks
  define_model_callbacks :create

  before_create :before
  after_create :after
  
  def before
    puts "before"
  end
  
  def after
    puts "after"
  end
  
  def create
    _run_create_callbacks do
      puts "hello" # Your create action methods here
    end
  end
end
