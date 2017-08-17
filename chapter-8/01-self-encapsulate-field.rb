# You are accessing a field directly, but the coupling to the field is becoming awkward.
# indirect variable access

def total
  @base_price * (1 + @tax_rate)
end

# New form - nice when we have subclasses that we can override the field accessor
# direct variable access

attr_reader :base_price, :tax_rate

def total
  base_price * (1 + tax_rate)
end
