class Transfer
attr_reader :status
attr_accessor :sender, :receiver, :transfer_amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 0
  end

end
