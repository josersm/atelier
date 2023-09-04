import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element)
  }

  openModal() {
    console.log("open modal")
    this.modalElement.classList.add('is-open')
  }

  closeModal() {
    this.modalElement.classList.remove('is-open')
  }

  get modalElement() {
    return this.element.querySelector('.filter-modal');
  }

  showOption(event) {
    const filterType = event.currentTarget.getAttribute('data-filter')
    const filterElement = this.element.querySelector(`[data-filter-toggle="${filterType}"]`)

    // Check if the current filterElement is already shown
    if (filterElement.classList.contains('is-shown')) {
      // If it is, hide it
      filterElement.classList.remove('is-shown');
    } else {
      // If it's not, hide all filters
      this.element.querySelectorAll('[data-filter-toggle]').forEach(el => el.classList.remove('is-shown'));
      // And show the current filterElement
      filterElement.classList.add('is-shown');
    }
  }
}
