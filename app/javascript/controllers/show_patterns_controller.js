import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-patterns"
export default class extends Controller {
  static targets = ["sizing", "fabric", "fabricbutton"]
  connect() {
    console.log("loaded")
  }

  showSizing() {
    // const booking = document.getElementById(`booking-${bookingId}`)
    this.sizingTarget.classList.toggle("hidden")
    console.log("clicked")
  }

  showFabric() {
    this.fabricbuttonTarget.classList.toggle("border-bottom-0")
    this.fabricTarget.classList.toggle("hidden")
    console.log("clicked")
  }
}
