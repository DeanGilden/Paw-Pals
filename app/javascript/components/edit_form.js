export const editForm = () => {
  const buttons = document.querySelectorAll(".edit-button");
  if (buttons.length > 0) {
    buttons.forEach (element => {
      element.addEventListener("click", event => {
        const dataID = event.target.getAttribute("data-id");
        console.log(dataID);
        const form = document.querySelector(`#edit-form-${dataID}`);
        form.classList.toggle("closed-form");
      })
    })
  }
}
