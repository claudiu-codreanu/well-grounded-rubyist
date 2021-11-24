class Temperature

  def Temperature.c2f(celsius)
    celsius * 9.0 / 5.0 + 32.0
  end

  def self.f2c(fahrenheit)
    (fahrenheit - 32.0) * 5.0 / 9.0
  end

end