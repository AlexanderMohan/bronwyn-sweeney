import {
    Controller
} from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["nav", "hamburger"]

    show(event) {
        event.preventDefault()
        this.navTarget.classList.remove("invisible", "opacity-0")
        this.navTarget.classList.add("visible", "opacity-90")
        setTimeout(() => {
        this.hamburgerTarget.classList.remove("visible")
        this.hamburgerTarget.classList.add("invisible")
        }, 100)
    }

    hide(event) {
        event.preventDefault()
        this.navTarget.classList.add("opacity-0")
        this.navTarget.classList.remove("opacity-90")
        this.hamburgerTarget.classList.remove("invisible")
        this.hamburgerTarget.classList.add("visible")
        // 700ms delay to change visibility
        setTimeout(() => {
            this.navTarget.classList.remove("visible")
            this.navTarget.classList.add("invisible")
        }, 400)
    }
}