module SaveMeFromMyRendersRails
  class Railtie < ::Rails::Railtie
    initializer 'save_me_from_my_renders_rails.filter_action_view_logs' do |app|
      if FILTER_ENVS.include?(Rails.env)
        ActiveSupport.on_load(:action_view) do
          ActionView::LogSubscriber.prepend SaveMeFromMyRendersRails::ActionViewFilter
        end
      end
    end
  end
end
