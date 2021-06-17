import consumer from "./consumer";

// const floatRight = (element) => {
//   item = getElementById(element)
//   item.classlist.add("right");
// }

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        //data.classlist.add("right")
        console.log(data)
        messagesContainer.insertAdjacentHTML('beforeend', data);
      }
    });
  }

}

export { initChatroomCable };
