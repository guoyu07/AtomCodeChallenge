

<% if $Children %>
	<ul>
	<% loop $Children %>
		<li class="child-nav">
			<a class="linking $LinkOrCurrent" href="$Link" title="Go to the $Title.XML page">
				$MenuTitle.XML
			</a>
			<% if $Children && not $IsNavigationBasePage %>
				<% include Navigation %>
			<% end_if %>
		</li>
	<% end_loop %>
	</ul>
<% end_if %>








 