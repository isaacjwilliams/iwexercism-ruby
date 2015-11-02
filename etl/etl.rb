class ETL
  class << self
    def transform(old)
      old.each_with_object({}) do |(k, v), shiny|
        v.each do |l|
          shiny.merge!(l.downcase => k)
        end
      end
    end
  end
end
