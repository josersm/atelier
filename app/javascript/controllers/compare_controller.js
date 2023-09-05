import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="compare"
export default class extends Controller {
  static targets = ["supplier"];  // refers to each checkbox input
  connect() {
    console.log("working")
  }

  compare() {
      const checkedSuppliers = this.supplierTargets.filter(input => input.checked).map(input => input.value);

      if (checkedSuppliers.length !== 2) {
          alert('Please select two suppliers to compare');
          return;
      }

      // Construct the URL with the selected supplier IDs.
      const compareUrl = `/favorites/compare?supplier_ids[]=${checkedSuppliers[0]}&supplier_ids[]=${checkedSuppliers[1]}`;

      window.location.href = compareUrl;  // redirect to the compare action
  }
}
