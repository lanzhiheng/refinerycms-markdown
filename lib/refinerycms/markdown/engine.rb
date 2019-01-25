module Refinerycms
  module Markdown
    class Engine < ::Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinerycms::Markdown

      engine_name :refinery_markdown

      config.to_prepare do
        Rails.application.config.assets.precompile += %w(
          refinerycms/easymde.css
          refinerycms/easymde.js
          refinerycms/init_editor.coffee
        )
      end
    end
  end
end
