import { Controller } from "@hotwired/stimulus";
import $ from "jquery";
import "ion-rangeslider";

export default class extends Controller {
  static targets = ["minInput", "maxInput", "range"];

  connect() {
    console.log("test")
    this.initializeSlider();
  }

  initializeSlider() {
    const minValue = parseInt(this.minInputTarget.getAttribute('value'), 10);
    const maxValue = parseInt(this.rangeTarget.getAttribute('data-max-value'), 10);
    const $range = $(this.rangeTarget);

    $range.ionRangeSlider({
      type: "double",
      min: minValue,
      max: maxValue,
      from: minValue,
      to: maxValue,
      onFinish: this.updateValues.bind(this)
    });

    $range.on('change', function(event) {
      console.log('Slider changed!');
      event.stopPropagation();
    });
}


  updateValues(data) {
    this.minInputTarget.value = data.from;
    this.maxInputTarget.value = data.to;
  }
}
