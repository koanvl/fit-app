import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["topNav"]
  connect() {
    this.toggleClasses()
    console.log(this.topNavTarget)
  }

  toggleClasses() {
    if (window.scrollY > 1) {  
      this.topNavTarget.classList.remove('h-[48px]')
      this.topNavTarget.classList.add('h-0')
      
    } else {
      this.topNavTarget.classList.add('h-[48px]')
      this.topNavTarget.classList.remove('h-0')
    }
  }
}