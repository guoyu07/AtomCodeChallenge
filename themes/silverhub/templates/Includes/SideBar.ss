<% if $Children %>
	<ul class="child-nav">
	<% loop $Children %>
		<li>
			<a class="$LinkOrCurrent sub-nav-link" href="$Link" title="Go to the $Title.XML page">
				$MenuTitle.XML
			</a>
			<% if $Children && not $IsNavigationBasePage %>
				<% include Navigation %>
			<% end_if %>
		</li>
	<% end_loop %>
	</ul>
<% end_if %>



