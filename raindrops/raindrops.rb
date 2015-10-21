class Raindrops
  @raindrops = {3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(number)
    reply = ""
    @raindrops.each do |num, drop|
      reply << drop if number % num == 0
    end
    reply.empty? ? number.to_s : reply
  end
end
