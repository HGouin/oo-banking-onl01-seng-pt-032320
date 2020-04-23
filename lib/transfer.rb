class Transfer
attr_reader :status
attr_accessor :sender, :receiver, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end

def valid?
  @sender.valid? && @receiver.valid?
end

def execute_transaction
  if @sender.balance > @amount
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  else
    @status = "rejected"
  end
end

end
