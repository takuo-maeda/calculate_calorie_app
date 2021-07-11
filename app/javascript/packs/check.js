
window.addEventListener("load", () => {
  const gCalorie = document.getElementById("calorie");
  const gProtein = document.getElementById("protein");
  const gLipid = document.getElementById("lipid");
  const gFiber = document.getElementById("fiber");
 
  gCalorie.addEventListener("input", () => {
    const gSugarContent = document.getElementById("sugar-content");
    gSugarContent.innerHTML = (Math.round((gCalorie.value-gProtein.value * 4-gLipid.value * 9)/4*10))/10-gFiber.value;
    const gCarbo = document.getElementById("carbohydrate");
    gCarbo.innerHTML = (Math.round((gCalorie.value-gProtein.value * 4 -gLipid.value * 9)/4*10))/10 + gFiber.value;
  });
  gProtein.addEventListener("input", () => {
    const gSugarContent = document.getElementById("sugar-content");
    gSugarContent.innerHTML = (Math.round((gCalorie.value-gProtein.value * 4 -gLipid.value * 9)/4*10))/10-gFiber.value;
    const gCarbo = document.getElementById("carbohydrate");
    gCarbo.innerHTML = (Math.round((gCalorie.value-gProtein.value * 4 -gLipid.value * 9)/4*10))/10 + gFiber.value;
  });
  gLipid.addEventListener("input", () => {
    const gSugarContent = document.getElementById("sugar-content");
    gSugarContent.innerHTML = (Math.round((gCalorie.value-gProtein.value * 4 -gLipid.value * 9)/4*10))/10-gFiber.value;
    const gCarbo = document.getElementById("carbohydrate");
    gCarbo.innerHTML = (Math.round((gCalorie.value-gProtein.value * 4 -gLipid.value * 9)/4*10))/10 + gFiber.value;
  });
  gFiber.addEventListener("input", () => {
    const gSugarContent = document.getElementById("sugar-content");
    gSugarContent.innerHTML = (Math.round((gCalorie.value-gProtein.value * 4 -gLipid.value * 9)/4*10))/10-gFiber.value;
 
  });
});M



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
