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

      after_inclusion do
        %w(refinerycms/easymde).each do |stylesheet|
          Refinery::Core.config.register_visual_editor_stylesheet stylesheet
        end

        %w(refinerycms/easymde refinerycms/init_editor).each do |javascript|
          Refinery::Core.config.register_visual_editor_javascript javascript
        end

        # Refinery::Pages.config.friendly_id_reserved_words << 'trix'
      end
    end
  end
end
