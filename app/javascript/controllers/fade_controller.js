// app/javascript/controllers/fade_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    direction: String
  }

  connect() {
    const direction = this.directionValue || "up"
    this.element.classList.add(`fade-${direction}`)

    const observer = new IntersectionObserver(entries => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add("visible")
        } else {
          entry.target.classList.remove("visible")
        }
      })
    }, {
      threshold: 0.2
    })

    observer.observe(this.element)
  }
}

