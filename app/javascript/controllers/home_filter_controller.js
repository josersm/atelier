import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home-filter"
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
    console.log('showOption called');
    const filterType = event.currentTarget.getAttribute('data-home-filter')
    const filterElement = this.element.querySelector(`[data-home-filter-toggle="${filterType}"]`)
    if (filterElement.classList.contains('is-shown')) {
      filterElement.classList.remove('is-shown');
    } else {
      this.element.querySelectorAll('[data-home-filter-toggle]').forEach(el => el.classList.remove('is-shown'));
      filterElement.classList.add('is-shown');
    }
  }
}
