class Prop < ActiveRecord::Base
  belongs_to :owner, :polymorphic => true
end

class IntProp < Prop
  def value
    int_value
  end
  def value=(new_value)
    int_value = new_value
  end
end

class IntegerProp < Prop
  def value
    int_value
  end
  def value=(new_value)
    int_value = new_value
  end
end

class FloatProp < Prop
  def value
    float_value
  end
  def value=(new_value)
    float_value = new_value
  end
end

class StringProp < Prop
  def value
    string_value
  end
  def value=(new_value)
    string_value = new_value
  end
end
