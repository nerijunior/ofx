module OFX
  class Statement < Foundation
    attr_accessor :account, :available_balance, :balance, :currency, :transactions
  end
end
