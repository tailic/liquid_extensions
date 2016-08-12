module Locomotive
  module LiquidExtensions
    module Filters
      module GroupByMonth

        def group_by_month(input)
          input.group_by { |t| t.date.beginning_of_month }
        end

      end
    end
  end
end
