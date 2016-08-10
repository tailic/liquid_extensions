require 'solid'

%w{misc tags filters}.each do |dir|
  Dir[File.join(File.dirname(__FILE__), 'liquid_extensions', dir, '*.rb')].each { |lib| require lib }
end

#Liquid::Template.register_filter(Locomotive::LiquidExtensions::Filters::Number)
#Liquid::Template.register_filter(Locomotive::LiquidExtensions::Filters::Math)
#Liquid::Template.register_filter(Locomotive::LiquidExtensions::Filters::Sample)
#Liquid::Template.register_filter(Locomotive::LiquidExtensions::Filters::Json)
#Liquid::Template.register_filter(Locomotive::LiquidExtensions::Filters::Hexdigest)
Liquid::Template.register_filter(Locomotive::LiquidExtensions::Filters::Md5)
# DEBUG
# puts "[LocomotiveLiquidExtensions] tags and filters loaded"