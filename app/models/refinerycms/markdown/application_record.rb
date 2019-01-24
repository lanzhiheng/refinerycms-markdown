module Refinerycms
  module Markdown
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
