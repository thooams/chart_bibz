# frozen_string_literal: true

module ChartBibz
  module ViewComponents
    class ApplicationViewComponent # rubocop:disable Style/Documentation
      include ActionView::Helpers::TagHelper
      include ActionView::Helpers::CaptureHelper
      include ActionView::Helpers::TextHelper
      include ActionView::Helpers::TranslationHelper
      attr_accessor :output_buffer

      protected

      def join_classes(*classes)
        klasses = Array(classes).flatten.map(&:to_s).compact.uniq.reject(&:blank?)
        klasses.empty? ? nil : klasses
      end
    end
  end
end
