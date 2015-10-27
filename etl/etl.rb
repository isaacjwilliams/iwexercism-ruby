class ETL
  class << self
    def transform(old)
      shiny = {}
      old.each do |k, v|
        v.each do |l|
          shiny.merge!(l.downcase => k)
        end
      end
      shiny
    end
  end
end
