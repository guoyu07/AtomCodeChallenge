<% require themedCSS('blog', 'blog') %>

<div class="title">
    <h1>$Title</h1>
</div>

$Content

<div class="blog-entry content-container">
    <article>
        <% if $PaginatedList.Exists %>
            <% loop $PaginatedList %>
                <% include PostSummary %>
            <% end_loop %>
        <% else %>
            <p><%t Blog.NoPosts "There are no news items at this time" %></p>
        <% end_if %>
    </article>
    
    $Form
    $CommentsForm
        
    <% with $PaginatedList %>
		<% include Pagination %>
	<% end_with %>
</div>
