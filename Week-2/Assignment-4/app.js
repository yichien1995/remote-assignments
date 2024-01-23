// Request 1: Click to Change Text.
let message = document.querySelector("h1");

message.addEventListener("click", () => {
  message.textContent = "Have a Good Time!";
});

// Request 2: Click to Show More Content Boxes.
let btn = document.querySelector("button");
let hidden = document.querySelectorAll(".hidden");

btn.addEventListener("click", () => {
  hidden.forEach((element) => {
    element.classList.remove("hidden");
  });
});
