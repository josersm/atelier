import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", chatroom_id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    document.addEventListener('turbo:submit-end', () => {
      console.log('Turbo submit event fired from within the controller!');
    });
  }

  resetForm(event) {
    event.preventDefault();
    console.log('resetForm method called');
    event.target.reset()
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

}
