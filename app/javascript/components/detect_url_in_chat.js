const detectUrlInChat = (inputValue) => {

    const url = "http";
    const urlPresent = inputValue.includes(url) ? true : false
    return urlPresent;

};

export { detectUrlInChat };
