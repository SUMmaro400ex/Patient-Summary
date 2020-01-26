window.addEventListener("DOMContentLoaded", () => {
  const patientsDropdown = document.getElementById("patients");
  if (patientsDropdown) {
    patientsDropdown.onchange = event =>
      window.location.replace(`patients/${event.target.value}`);
  }
  const printIcon = document.getElementById("print");
  if (printIcon) {
    printIcon.onclick = () => window.print();
  }
});
