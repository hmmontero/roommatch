import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { currentUserId: Number }

  connect() {
    this.adjustMessageClasses()

    const messagesContainer = this.element.querySelector("#messages")
    const observer = new MutationObserver(() => this.adjustMessageClasses())
    observer.observe(messagesContainer, { childList: true, subtree: true })
  }

  adjustMessageClasses() {
    const currentUserId = this.currentUserIdValue

    this.element.querySelectorAll(".message").forEach((message) => {
      const senderId = parseInt(message.dataset.userId, 10)
      message.classList.remove("message--sent", "message--received")

      if (senderId === currentUserId) {
        message.classList.add("message--sent")
      } else {
        message.classList.add("message--received")
      }
    })
  }
}
