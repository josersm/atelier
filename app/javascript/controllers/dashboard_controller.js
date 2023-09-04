import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard"
export default class extends Controller {
	static targets = ["dashboardElement"]

  connect() {
		console.log("Hello from dashboard_controller.js")
	}
	fire() {
		console.log("fire")
		// this.dashboardElementTarget.classList.toggle("d-none");
	}
}
