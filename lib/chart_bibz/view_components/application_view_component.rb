# frozen_string_literal: true

module ChartBibz
  # A batch of view components
  module ViewComponents
    # The view components base
    class ApplicationViewComponent
      include ActionView::Helpers::TagHelper
      include ActionView::Helpers::CaptureHelper
      include ActionView::Helpers::TextHelper
      include ActionView::Helpers::TranslationHelper

      # ActionView::Helpers::TagHelper need of this
      #
      # @example
      #   tag.div "content"
      #
      # @param [Object] output_buffer
      # @return [Object] the output_buffer
      #
      # @api public
      attr_accessor :output_buffer

      protected

      # Create a list of classes in a string
      #
      # @example Generate the canves
      #   join_classes(["test1", "test2"], :test3, "test4")
      #
      # @param [String, Symbol, Hash] classes The class names
      # @return [String] The list of the classes
      #
      # @api semipublic
      def join_classes(*classes)
        klasses = Array(classes).flatten.map(&:to_s).compact.uniq.reject(&:blank?)
        klasses.empty? ? nil : klasses
      end
    end
  end
end
