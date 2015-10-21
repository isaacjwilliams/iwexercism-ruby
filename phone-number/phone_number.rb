class PhoneNumber
  def initialize(phone_number)
    @phone_number = phone_number.chars.select do |c|
      /[\d]/.match(c)
    end.join
  end

  def number
    return '0000000000' if @phone_number.size < 10
    @phone_number
  end

  private

  def under_ten
    @phone_number.size < 10 && !first_of_eleven_is_one
  end

  def first_of_eleven_is_one
    @phone_number.size == 1 && @phone_number.chars.first.to_i == 1
  end
end
