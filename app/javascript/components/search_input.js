const searchInput = () => {
  const input = document.querySelector("#shot_location");
  input.addEventListener("keyup", (event) => {
    const results = document.querySelector("#results");
    fetch("https://places-dsn.algolia.net/1/places/query", {
    method: "POST",
    body: JSON.stringify({ query: event.currentTarget.value })
  })
    .then(response => response.json())
    .then((data) => {

       console.log(data.hits)

    });
  });
}

export { searchInput };
