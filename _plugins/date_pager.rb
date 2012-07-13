# class DatePager < Pager
# 
#   attr_reader :category
# 
#   def self.pagination_enabled?(config, page)
#     page.name == 'index.html' && page.data.key?('category') && !config['paginate'].nil?
#   end
#   
#   # same as the base class, but includes the category value
#   def initialize(config, page, all_posts, category, num_pages = nil)
#     @category = category
#     super config, page, all_posts, num_pages
#   end
# 
#   # use the original to_liquid method, but add in category info
#   alias_method :original_to_liquid, :to_liquid
#   def to_liquid
#     x = original_to_liquid
#     x['category'] = @category
#     x
#   end
#   
# end