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
  document.getElementById('submit-sf').onclick = function changeContent(event) {
    event.preventDefault()
    let value = document.getElementById('sf-input').value
    document.getElementById('sf-input').value = ''
    let taskList = document.getElementById('sf-places')
    let newLI = document.createElement('li');
    newLI.appendChild(document.createTextNode(value));
    taskList.appendChild(newLI);
  }
  // --- your code here!


  // adding new photos
  document.getElementById('photo-form').onclick = function changeContent(event) {
    let val = document.getElementById("photo-form-container").className = "photo-form-container";
    if (val === 'photo-form-container hidden'){
      val.className = "photo-form-container"
    } else {
      val.className = "photo-form-container hidden"
    }
    document.getElementById('photo-submit').onclick = function changeContent(event){
      event.preventDefault()
      let value = document.getElementById('submit-img').value
      document.getElementById('submit-img').value = ''
      let taskList = document.getElementById('photos')
      let newLI = document.createElement('li');
      let img = document.createElement('img');
      img.src = value;
      newLI.appendChild(img);
      taskList.appendChild(newLI);
    }
  }
  // --- your code here!



});
