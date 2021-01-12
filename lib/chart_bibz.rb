# frozen_string_literal: true

require 'chart_bibz/railtie'

# The Main module for ChartBibz
module ChartBibz
  extend ActiveSupport::Autoload

  autoload :ViewComponents
  autoload :Helpers
end

require 'chart_bibz/rails/engine'
