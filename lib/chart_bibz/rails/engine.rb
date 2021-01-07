# frozen_string_literal: true

module ChartBibz
  module Rails
    class Engine < ::Rails::Engine  # rubocop:disable Style/Documentation
      initializer 'chart_bibz.helpers' do
        ActionView::Base.include ChartBibz::Helpers::ChartHelper
      end
    end
  end
end
