const attachShotlist = () => {

  const shotlistLinks = document.querySelectorAll('.shotlist-link');

  shotlistLinks.forEach((shortlistLink) => {
    shortlistLink.addEventListener('click', (data) => {
      console.log(data);
      data.preventDefault();
      const msgInput = document.querySelector('#message_content');
      msgInput.value = data.target.href
      console.log(data.target.href)
      msgInput.classList.add("indent-text")
      const newMessage = document.querySelector('#new_message');
      msgInput.insertAdjacentHTML('afterend',
        `
          <a href="${data.target.href}" class="attachment-input btn-tag">${data.target.innerText}</a>
        `)
    //document.getElementById('notif-counter').insertAdjacentHTML('beforeend',
      //`<span class="msg-number">${data.notif_counter}</span>`)
    })
  })

}

export { attachShotlist };

