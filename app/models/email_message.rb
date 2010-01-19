# Shows you how to minimally implement the ActiveModel::StateMachine
# API into a custom model
class EmailMessage
  
  include ActiveModel::StateMachine
  
  state_machine do
    state :unread
    state :read
  
    event :open do
      transitions :to => :read, :from => :unread
    end

  end
  
  
end