
window.addEventListener("change", () => {
  const checkbox = document.getElementById("check1");

  if (checkbox.checked === false) {
   const input = document.getElementById('meal-quantity');
   input.disabled = true;
  }

  if (checkbox.checked === true) {
   const input = document.getElementById('meal-quantity');
   input.disabled = false;
  }

});
