<div class="post-summary">
	
	<p class="post-image">
		<a href="$Link" <%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>>
			$FeaturedImage.setWidth(160)
		</a>
	</p>

	<h2 class="post-title">
		<a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
			<% if $MenuTitle %>$MenuTitle
			<% else %>$Title<% end_if %>
		</a>
	</h2>

	<% include SummaryEntryMeta %>

	<% if $Summary %>
		<p>$Summary
	<% else %>
		<p>$Excerpt
	<% end_if %>
		</p>

</div>
