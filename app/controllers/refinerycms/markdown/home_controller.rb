require_dependency "refinerycms/markdown/application_controller"

module Refinerycms::Markdown
  class HomeController < ApplicationController
    def index
      render plain: 'hello'
    end
  end
end
