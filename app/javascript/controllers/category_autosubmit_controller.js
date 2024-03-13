import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "select"]
  
  connect() {

  }

  click() {
    if (this.selectTarget.value) {
      this.buttonTarget.click()
    }
    else {
      return false
    }
    

  }
}