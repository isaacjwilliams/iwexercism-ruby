class Robot
  @name = ""
  def initialize; reset;                  end
  def name;       return @name;           end
  def reset;      @name = generated_name; end
  def generated_name
    (0...2).map { (65 + rand(26)).chr }.join + (0...3).map { rand(10).to_s }.join
  end
end
