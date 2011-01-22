// Initialize behaviours
function initializeBehaviours() {
  addFocusTextFieldBehaviour();
  addHideElementsForCanvasBehaviour();
}

function addFocusTextFieldBehaviour() {
  $('#word_word').focus().select();
}

// Loads functions after DOM is ready
$(document).ready(initializeBehaviours);


function addHideElementsForCanvasBehaviour() {
  $('#main-carpet').children('.carpet').hide();
}
