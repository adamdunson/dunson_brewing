module Faker
  class Beer < Base
    class << self
      def name
        parse('beer.name')
      end

      def style
        fetch('beer.style')
      end
    end
  end
end
