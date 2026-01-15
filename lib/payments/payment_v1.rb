class Numeric
  def fee
    self * 0.05
  end

  def liquid
    self - fee
  end
end

class Payment
  def self.processor(value)
    {
      value: value,
      amount: value.liquid,
      fee: value.fee
    }
  end
end
