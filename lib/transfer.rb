class Transfer
attr_reader :status
attr_accessor :sender, :receiver, :transfer_amount
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transfer_amount = 0

  end

end
