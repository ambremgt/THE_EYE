import { detectUrlInChat } from '../components/detect_url_in_chat';

const shotlistPreviewLink = () => {

  const newMsg = document.getElementById('new_message');

  newMsg.addEventListener('submit', (data) => {
    const inputValue = data.srcElement[1].value;
    const messagesContainer = document.getElementById('messages').lastChild;

    const detectUrl = detectUrlInChat(inputValue);

    if (detectUrl)
      messagesContainer.insertAdjacentHTML('afterbegin',
      `
        <a href="${inputValue}" class="attachment-input btn-tag">${data.target.innerText}</div>

      `)

  })
};
export { shotlistPreviewLink };


