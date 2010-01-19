# Shows you how to implement some of the more complex methods of
# ActiveModel::StateMachine API into a custom model
class TrafficLight
  include ActiveModel::StateMachine

  attr_reader :runners_caught

  def initialize
     @runners_caught = 0
   end

  state_machine do
    state :red
    state :green
    state :yellow
    state :blink

    event :change_color do
      transitions :to => :red, :from => [:yellow],
        :on_transition => :catch_runners
      transitions :to => :green, :from => [:red]
      transitions :to => :yellow, :from => [:green]
    end

    event :defect do
      transitions :to => :blink, :from => [:yellow, :red, :green]
    end

    event :repair do
      transitions :to => :red, :from => [:blink]
    end
  end

  def catch_runners
    @runners_caught += 1
  end
end