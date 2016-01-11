<div id="TeamHolder">
<% loop $AllStaff %>
		<div>
			$Picture.SetHeight(100)
			<h2>$FirstName $LastName</h2>
			<h3>$Position</h3>
		</div>
<%  end_loop %>
</div>

<div id="ButtonHolder">
<% loop getTeams %>
	<div class="TeamSelector">
		<a href="/atom/$Title"<h3>$Title</h3></a>
	</div>
<% end_loop %>
</div>