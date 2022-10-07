class KindOfClasses
  def call_public_method
    p "publicメソッドが呼ばれました"
    call_private_method
  end

  def self.call_class_method
    p "クラスメソッドが呼ばれました"
  end

  private

  def call_private_method
    p "privateメソッドが呼ばれました"
  end
end

instance = KindOfClasses.new
instance.call_public_method

KindOfClasses.call_class_method

instance.call_private_method
