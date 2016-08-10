module Locomotive
  module LiquidExtensions
    module Filters
      module Md5

        def md5(input)
          Digest::MD5.hexdigest input.strip
        end

      end
    end
  end
end
