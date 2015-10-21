class PhoneNumber
  def initialize(phone_number)
    @phone_number = phone_number.chars.select do |c|
      !/[^\w]/.match(c)
    end.join
    filter_phone_number
  end

  def number
    @phone_number
  end

  def area_code
    @phone_number[0..2]
  end

  def to_s
    "(#{@phone_number[0..2]}) #{@phone_number[3..5]}-#{@phone_number[6..-1]}"
  end

  private

  def filter_phone_number
    @phone_number = '0000000000' unless valid_content?
    @phone_number = @phone_number.sub(/\A1/, '') if @phone_number.size == 11
  end

  def valid_content?
    /\A1?[\d]{10}\Z/ =~ @phone_number
  end
end
