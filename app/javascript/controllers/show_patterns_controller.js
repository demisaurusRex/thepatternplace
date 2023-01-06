import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-patterns"
export default class extends Controller {
  static targets = ["sizing", "fabric", "fabricbutton", "sizingbutton"]
  connect() {
    console.log("loaded")
  }

  showSizing() {
    // const booking = document.getElementById(`booking-${bookingId}`)
    this.sizingTarget.classList.toggle("hidden")
    console.log("clicked")
  }

  showFabric() {
    this.fabricTarget.classList.toggle("hidden")
    console.log("clicked")
  }
}
