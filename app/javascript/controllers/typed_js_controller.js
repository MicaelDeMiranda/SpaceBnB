import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Conquérir l’espace n’a jamais été aussi facile...", "Vers l'infini et au-delà"],
      typeSpeed: 50,
      loop: true
    })
  }
}
