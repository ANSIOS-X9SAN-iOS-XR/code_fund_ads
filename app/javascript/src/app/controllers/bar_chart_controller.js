import { Controller } from 'stimulus'

export default class extends Controller {
  connect () {
    jQuery.HSCore.components.HSChartistBarChart.init(this.element)
  }
}
