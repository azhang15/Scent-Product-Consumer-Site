function handleRatingFilter() {
    $('.filter-menu').on('change', '#dropdown', event => {
        event.preventDefault();
        console.log('dropdown menu option clicked!');
        const value = event.currentTarget.value;
        if (value === 1) {
            const bookmarks = STORE.list.filter(bookmark => bookmark.rating >= 1);
            return bookmarks;
        }
        renderStore();
    });
}

$(".size").on('click', function() {
    $(this).toggleClass('focus').siblings().removeClass('focus');
})

function addToWishlist(){
	
}