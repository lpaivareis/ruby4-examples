class Numeric
  def fee
    self * 0.05
  end

  def tax
    self * 0.10
  end

  def liquid
    self - fee - tax
  end
end

class Payment
  def self.processor(value)
    { value: value, amount: value.liquid, fee: value.fee, tax: value.tax }
  end
end