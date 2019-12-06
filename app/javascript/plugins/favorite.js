const initFavorite = () => {
  $('.favorites').click((e) => {

    Rails.ajax({
      type: "GET",
      url: "/specialties/" + $(e.target).data("id") + "/like",
      success: (data) => {
        $(e.target).addClass("liked")
      },
      error: (data) => {}
    })
  })
}

export { initFavorite };
