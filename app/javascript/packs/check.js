
window.addEventListener("change", () => {
  const checkbox = document.getElementById("check1");

  if (checkbox.checked === false) {
    console.log("チェックが外れた");
  }

  if (checkbox.checked === true) {
    console.log("チェックされた");
  }

});
