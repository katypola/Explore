// // For profile page:
// document.addEventListener("turbolinks:load", function(){
// 	const elUserArticleLink = document.querySelector('.savedArticlesLink');
// 	const elUserExperimentLink = document.querySelector('.savedExperimentsLink');
// 	const elUserPostLink = document.querySelector('.userPostsLink');
// 	// const elNewPostButton = document.querySelector('.newPostButton');
// 	// const elEditPostButton = document.getElementsByClassName('editPostButton');
// 	if(elUserArticleLink) {
// 		// render user plants page and hide user posts and recipes when nav link is clicked:
// 		elUserArticleLink.addEventListener("click", function(){
// 			document.querySelectorAll(".hideArticles").forEach(element => element.style.display="block");
// 			document.querySelectorAll(".hideExperiments").forEach(element => element.style.display="none");
// 			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="none");
// 			// document.querySelectorAll(".hideNewPost").forEach(element => element.style.display="none");
// 			// document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="none");
// 		});
// 	};
// 	if(elUserExperimentLink) {
// 		// render user posts page and hide user plants and recipes when nav link is clicked:
// 		elUserExperimentLink.addEventListener("click", function(){
// 			document.querySelectorAll(".hideExperiments").forEach(element => element.style.display="block");
// 			document.querySelectorAll(".hideArticles").forEach(element => element.style.display="none");
// 			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="none");
// 			// document.querySelectorAll(".hideNewPost").forEach(element => element.style.display="none");
// 			// document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="none");
// 		});
// 	};
// 	if(elUserPostLink) {
// 		// render user recipes page and hide user posts and plants when nav link is clicked:
// 		elUserPostLink.addEventListener("click", function(){
// 			document.querySelectorAll(".hidePosts").forEach(element => element.style.display="block");
// 			document.querySelectorAll(".hideArticles").forEach(element => element.style.display="none");
// 			document.querySelectorAll(".hideExperiments").forEach(element => element.style.display="none");
// 			// document.querySelectorAll(".hideNewPost").forEach(element => element.style.display="none");
// 			// document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="none");
// 		});
// 	};
// 	// if(elNewPostButton) {
// 	// 	document.querySelectorAll('.hideNewPost').forEach(element => element.style.display="none");
// 	// 	// render new post page and hide user recipes and plants, and userposts when nav link is clicked:
// 	// 	elNewPostButton.addEventListener("click", function(){
// 	// 		document.querySelectorAll(".hideNewPost").forEach(element => element.style.display="block");
// 	// 		document.querySelectorAll(".hideRecipes").forEach(element => element.style.display="none");
// 	// 		document.querySelectorAll(".hidePlants").forEach(element => element.style.display="none");
// 	// 		document.querySelectorAll(".hidePosts").forEach(element => element.style.display="none");
// 	// 		// document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="none");
// 	// 	});
// 	// };
// 	// if(elEditPostButton) {
// 	// 	document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="none");
// 	// 	// render new post page and hide user recipes and plants, and userposts when nav link is clicked:
// 	// 	elEditPostButton.addEventListener("click", function(){
// 	// 		document.querySelectorAll('.hideEditPost').forEach(element => element.style.display="block");
// 	// 		document.querySelectorAll(".hideNewPost").forEach(element => element.style.display="none");
// 	// 		document.querySelectorAll(".hideRecipes").forEach(element => element.style.display="none");
// 	// 		document.querySelectorAll(".hidePlants").forEach(element => element.style.display="none");
// 	// 		document.querySelectorAll(".hidePosts").forEach(element => element.style.display="none");
// 	// 	});
// 	// };
// })