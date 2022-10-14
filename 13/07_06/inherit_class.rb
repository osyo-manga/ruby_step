class Animal
  def initialize(type)
    @type = type
  end

  def sleep
    p "#{@type} is sleeping."
  end
end

class Dog < Animal
  def shake_tail
    p "#{@type} is shaking the tail."
  end
ed

dog = Dog.new("Dog")
dog.sleep
dog.shake_tail
