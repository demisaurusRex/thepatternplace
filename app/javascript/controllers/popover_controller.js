import { Controller } from '@hotwired/stimulus'

export default class extends Controller {


  static targets = ['card', 'content']
  static values = {
    url: String
  }

  show (event) {
    // Temporally variable to prevent `event.currentTarget` to being null.
    event.stopPropagation()
    event.stopImmediatePropagation()
    event.preventDefault()
    const element = event.currentTarget

    let content = null

    if (this.hasContentTarget) {
      content = this.contentTarget.innerHTML
    } else {
      content = this.fetch()
    }

    if (!content) return

    const fragment = document.createRange().createContextualFragment(content)
    // @ts-ignore
    element.appendChild(fragment)
  }

  hide () {
    if (this.hasCardTarget) {
      this.cardTarget.remove()
    }
  }

  async fetch () {
    if (!this.remoteContent) {
      if (!this.hasUrlValue) {
        console.error('[stimulus-popover] You need to pass an url to fetch the popover content.')
        return
      }

      const response = await fetch(this.urlValue)
      this.remoteContent = await response.text()
    }

    return this.remoteContent
  }
}
