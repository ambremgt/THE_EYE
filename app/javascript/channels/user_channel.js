import consumer from "./consumer";

const userContainer = document.getElementById('user-channel');
if (userContainer) {
  const id = userContainer.dataset.userId;

  consumer.subscriptions.create({ channel: "UserChannel", id: id }, {
    received(data) {
      document.getElementById('notif-counter').innerText = data.notif_counter
      // console.log(data.notif_counter)
      // console.log(data); // called when data is broadcast in the cable
    },
  });
}
