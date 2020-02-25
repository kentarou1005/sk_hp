$(function() {
  $("#item-delete-btn").on("click", function(e){
    console.log(this)
    let StudyId = $(this).data(href)
    console.log(StudyId)



    console.log(this.href)
    // let StudyId = $(this).href
    console.log(StudyId)
    e.preventDefault();
    $("#overlay").fadeIn();
    $("#modal-close-btn").on("click", function(e){
      e.preventDefault();
      $("#overlay").fadeOut()
    });
    $("#delete-comformation-btn").on("click", function(e){
      e.preventDefault();
      // console.log(modal-open-btn{study.id})
      // let StudyID = $(this).data("study-id");
      // console.log(StudyID)
      // $.ajax({
      //   url: url,
      //   type: "POST",
      //   data: formData,
      //   dataType: "json"
      // })
      //   console.log(this.data)

      // $.ajax({
      //   url: url,
      //   type: "POST",
      //   data: formData,
      //   dataType: 'json',
      //   processData: false,
      //   contentType: false,
      // })


      $("#overlay").fadeOut();
      console.log("OK")
    })
  })
});


// document.addEventListener(
//   "DOMContentLoaded", e => {
//     let modal_open = document.getElementById("modal-open-btn");
//     modal_open.onclick = function () {
//       $('#overlay').fadeIn();
//       document.getElementById('modal-close-btn').onclick = function () {
//         $('#overlay').fadeOut();
//       };
//       document.getElementById("delete-comformation-btn").onclick = function () {
//         document.getElementById("item-delete-btn").click();
//       };
//     };
//   },
//   false
// );