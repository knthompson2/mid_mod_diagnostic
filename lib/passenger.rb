class Passenger
attr_reader :name, :age, :driver

  def initialize(params)
    @name = params["name"]
    @age = params["age"]
    @driver = false

  end

  def adult?
    if @age > 17
      true
    else
      false
    end
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end
