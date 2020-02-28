import consumer from "./consumer";

const userContainer = document.getElementById('user-channel');
if (userContainer) {
  const id = userContainer.dataset.userId;

  consumer.subscriptions.create({ channel: "UserChannel", id: id }, {
    received(data) {
      window.location.reload();
      //document.getElementById('notif-counter').insertAdjacentHTML('beforeend',
      //`<span class="msg-number">${data.notif_counter}</span>`)
      // console.log(data.notif_counter)
      // console.log(data); // called when data is broadcast in the cable
    },
  });
}
