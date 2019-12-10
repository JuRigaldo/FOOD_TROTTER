const initFavorite = () => {
  $('.favorites').click((e) => {


 Rails.ajax({
      type: "GET",
      url: "/specialties/" + $(e.target).data("id") + "/like",
      success: (data) => {
        if (data.liked) {
          $(e.target).addClass("liked")
        } else {
          $(e.target).removeClass("liked")
        }
      },
      error: (data) => {}
    })
  })
}
export { initFavorite };
const initLike = () => {
  $('.favorites2').click((e) => {
    console.log("coucou")
    Rails.ajax({
      type: "GET",
      url: "/restaurants/" + $(e.target).data("id") + "/like",
      success: (data) => {
        if (data.liked) {
          $(e.target).addClass("liked")
        } else {
          $(e.target).removeClass("liked")
        }
      },
      error: (data) => {}
    })
  })
}
export { initLike };


