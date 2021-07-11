
window.addEventListener("load", () => {
  const gCalorie = document.getElementById("calorie");
  const gProtein = document.getElementById("protein");
  const gLipid = document.getElementById("lipid");
  gCalorie.addEventListener("input", () => {
    const gSugarContent = document.getElementById("sugar-content");
    gSugarContent.innerHTML = Math.round((gCalorie.value-gProtein.value-gLipid.value)/4/10);
  });
});



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
