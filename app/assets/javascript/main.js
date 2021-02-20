$(".alert").slideToggle(5000);

function oViewCount(idElement, urlPath) {
  let video_data = idElement
  $.ajax({
    type: "PUT", 
    url: urlPath,
    data: video_data,
  });
}
