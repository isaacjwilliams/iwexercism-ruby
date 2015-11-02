class PhoneNumber
  @@default_number = '0000000000'
  attr_reader :number

  def initialize(number)
    @number = number.chars.select do |c|
      !/[^\w]/.match(c)
    end.join
    filter_number
  end

  def area_code
    @number[0..2]
  end

  def to_s
    "(#{area_code}) #{@number[3..5]}-#{@number[6..-1]}"
  end

  private

  def filter_number
    @number = @@default_number unless valid_content?
    @number = @number[1..-1] if @number.size == 11
  end

  def valid_content?
    /\A1?[\d]{10}\Z/ =~ @number
  end
end
