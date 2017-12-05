$(document).ready(function(){
  console.log('working');
  $('.form-check-input').on('click', function(){
    var checkboxChecked;
    if (this.checked) {
      checkboxChecked = true;
      console.log('checked');
      console.log(checkboxChecked);
    } else {
      checkboxChecked = false;
    }
    return checkboxChecked;
  });
});