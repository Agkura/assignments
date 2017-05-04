document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants
  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
  const submit = (e) => {
    e.preventDefault();
    let sub = document.querySelector(".favorite-input");
    let list = document.getElementById("sf-places");
    let li = document.createElement("li");
    li.textContent = sub.value;
    list.appendChild(li);
    sub.value = "";
  };

  document.querySelector("form").addEventListener("submit", submit);

  // --- your code here!
    const toggle = (e) => {
      e.preventDefault();
      const form = document.querySelector(".photo-form-container");
      const formClasses = document.querySelector(".photo-form-container").classList;
      if (formClasses.contains("hidden")) {
        formClasses.remove("hidden");
      } else {
        formClasses.add("hidden");
      }
    }



    const newPic = (e) => {
      e.preventDefault();
      const input = document.querySelector(".photo-url-input");
      const li = document.createElement("li");
      const list = document.querySelector(".dog-photos");
      li.innerHTML = "<img src=\"" + input.value + "\"/>";
      list.appendChild(li);
      input.textContent = "";
    }



  document.querySelector(".photo-show-button").addEventListener("click", toggle);
  document.querySelector(".photo-form-container form").addEventListener("submit", newPic);


  // adding new photos

  // --- your code here!



});
