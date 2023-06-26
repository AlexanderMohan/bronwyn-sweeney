// based on code in https://discuss.hotwired.dev/t/how-to-redirect-from-a-form-that-is-inside-a-turbo-frame/4164

// form_redirect_controller.js

import { Controller } from "@hotwired/stimulus"
import * as Turbo from "@hotwired/turbo"

export default class extends Controller {
  next(event) {
    if (event.detail.success) {
        const fetchResponse = event.detail.fetchResponse
  
        history.pushState(
          { turbo_frame_history: true },
          "",
          fetchResponse.response.url
        )
  
        Turbo.visit(fetchResponse.response.url)
    }
  }
}
