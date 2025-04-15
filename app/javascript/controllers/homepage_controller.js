import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["accordion", "card"];

  connect() {
    console.log("Homepage controller conectado!");
  }

  toggleAccordion(event) {
    console.log("Acordeón clicado:", event.target.textContent);

  }

  highlightCard(event) {
    this.cardTargets.forEach(card => {
      card.classList.remove("scaled");
    });
    event.currentTarget.classList.add("scaled");
    console.log("Tarjeta agrandada!");
  }

  removeHighlight(event) {
    event.currentTarget.classList.remove("scaled");
    console.log("Tarjeta restaurada!");
  }
}
