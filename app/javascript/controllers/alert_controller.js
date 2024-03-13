import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.remove();
    }, "8000")
  }

  disconnect() {
    this.remove()
    super.disconnect();
  }

  remove(){
    this.element.remove();
  }
}