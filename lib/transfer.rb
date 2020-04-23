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
  if @sender.balance > 0
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  else
    @status = "rejected"
    return "Transaction rejected. Please check your account balance."
  end
end
end

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end
end

end
