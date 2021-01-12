# frozen_string_literal: true

module ChartBibz
  module ViewComponents
    # The view components base
    class ApplicationViewComponent
      include ActionView::Helpers::TagHelper
      include ActionView::Helpers::CaptureHelper
      include ActionView::Helpers::TextHelper
      include ActionView::Helpers::TranslationHelper

      # @private
      attr_accessor :output_buffer

      protected

      # Create a list of classes in a string
      #
      # @param [String, Symbol, Hash] classes The class names
      # @return [String] The list of the classes
      def join_classes(*classes)
        klasses = Array(classes).flatten.map(&:to_s).compact.uniq.reject(&:blank?)
        klasses.empty? ? nil : klasses
      end
    end
  end
end
