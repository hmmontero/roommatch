import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { currentUserId: Number }
  static targets = ["messages"]

  connect() {
    this.scrollToBottom()
    this.adjustMessageClasses()

    this.observer = new MutationObserver(() => {
      this.adjustMessageClasses()
      this.scrollToBottom()
    })

    this.observer.observe(this.messagesTarget, { childList: true, subtree: true })
  }

  disconnect() {
    if (this.observer) this.observer.disconnect()
  }

  scrollToBottom() {
    this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight
  }

  adjustMessageClasses() {
    const currentUserId = this.currentUserIdValue

    this.messagesTarget.querySelectorAll(".message").forEach((message) => {
      const senderId = parseInt(message.dataset.userId, 10)
      message.classList.remove("message--sent", "message--received")

      if (senderId === currentUserId) {
        message.classList.add("message--sent")
      } else {
        message.classList.add("message--received")
      }
    })
  }

  sendWithEnter(event) {
    if (event.key === "Enter" && !event.shiftKey) {
      event.preventDefault()
      this.element.querySelector("form").requestSubmit()
    }
  }
}
  