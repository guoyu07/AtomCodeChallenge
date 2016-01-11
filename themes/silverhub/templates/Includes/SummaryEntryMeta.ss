<p class="blog-post-meta">

	<% if $Credits %>
		<% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> and <% end_if %><% if $URLSegment %><a href="$URL">$Name.XML</a><% else %>$Name.XML<% end_if %><% end_loop %>,
        $PublishDate.format('j F Y')
	<% end_if %>    

	<% if $Categories.exists %>
		| 
		<% loop $Categories %>
			<a href="$Link" title="$Title">$Title</a><% if not Last %>, <% else %><% end_if %>
		<% end_loop %>
	<% end_if %>

</p>