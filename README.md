![Chart Bibz logo](https://raw.githubusercontent.com/thooams/chart_bibz/main/chart-bibz-logo.gif)

# Chart Bibz
Use Chartjs with ruby. Generate your chart in one ruby line.

[![Gem Version](https://badge.fury.io/rb/chart_bibz.svg)](https://badge.fury.io/rb/chart_bibz)
[![Maintainability](https://api.codeclimate.com/v1/badges/7e8e319e9f7197593733/maintainability)](https://codeclimate.com/github/thooams/chart_bibz/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/7e8e319e9f7197593733/test_coverage)](https://codeclimate.com/github/thooams/chart_bibz/test_coverage)
[![security](https://hakiri.io/github/thooams/chart_bibz/main.svg)](https://hakiri.io/github/thooams/chart_bibz/main)
[![Ci](https://github.com/thooams/chart_bibz/workflows/CI/badge.svg)](https://github.com/thooams/chart_bibz/actions)
[![Linter](https://github.com/thooams/chart_bibz/workflows/Linter/badge.svg)](https://github.com/thooams/chart_bibz/actions)
[![Inline docs](http://inch-ci.org/github/thooams/chart_bibz.svg?branch=main)](http://inch-ci.org/github/thooams/chart_bibz)


## Usage
How to use the plugin.

```ruby
# @param data [Hash] Data
# @param options [Hash] The chart type and the chartjs options
# @param html_options [Hash] The canvas html options
# @return [String] The Canvas Html
chart data, options, html_options
```

## Example
```ruby
data = {
  datasets: [{
    barPercentage: 0.5,
    barThickness: 6,
    maxBarThickness: 8,
    minBarLength: 2,
    data: [10, 20, 30, 40, 50, 60, 70]
  }]
}
options = { type: :bar, scales: { yAxes: [{ ticks: { beginAtZero: true } }] } }
html_options = { id: "my-chart", width: 100, height: 520 }

chart data
# or
chart data, options, html_options
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'chart_bibz'
```

And then execute:
```bash
$ bundle
$ yarn add chart.js
```

Or install it yourself as:
```bash
$ gem install chart_bibz
```

Add this line in your js file, by example app/javascript/packs/application.js
```js
...
document.querySelectorAll(".chart-bibz").forEach(function(canvasEl){
  let type = canvasEl.getAttribute("data-cb-type")
  let options = JSON.parse(canvasEl.getAttribute("data-cb-options"))
  let data = JSON.parse(canvasEl.getAttribute("data-cb-data"))
  let ctx  = canvasEl.getContext('2d')

  new Chart(ctx, { type: type, data: data, options: options })
})
...
```

That's it !

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
