$(document).ready(function () {
	$("#btn-like").click(function () {
		let ChkLike = $('.like');
		if (!ChkLike.hasClass("bi-heart")) { /* 빈 하트 */
			ChkLike.removeClass("bi-heart-fill");
			ChkLike.addClass("bi-heart");
		} else { /* 채운 하트 */
			ChkLike.addClass("bi-heart-fill");
			ChkLike.removeClass("bi-heart");
		};
	});
})
