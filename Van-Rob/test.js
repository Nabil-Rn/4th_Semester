import { createClient } from "pexels";
function food() {
  const client = createClient(
    "vpzO0ArPUojftey0yBKbgWeByCgfRl1auVu6RF1hgtHh5ylmcnsfCIlO"
  );
  const query = "food";

  client.photos.search({ query, per_page: 1 }).then((photos) => {});
  let img = new Image();
  for (let i = 1; i < 7; i++) {
    img.src =
      "https://media.geeksforgeeks.org/wp-content/uploads/20190529122828/bs21.png";
    document.getElementById("food" + i).appendChild(img);
    console.log("food" + i);
  }
}

food();
