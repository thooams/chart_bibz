# frozen_string_literal: true

module ChartBibz
  module Helpers
    module ChartHelper # rubocop:disable Style/Documentation
      def chart(data = {}, options = {}, html_options = {})
        ChartBibz::ViewComponents::ChartViewComponent.new(data, options, html_options).render
      end
    end
  end
end
