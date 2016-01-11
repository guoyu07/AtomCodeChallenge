<header>
    <div class="main-container">
		<nav class="menu">
			<div class="logo-container">
				<a href="" class="logo"></a>
			</div>
				<div id="head-mobile"></div>
					<div class="hamburger">
				</div>
				<ul class="nav-links">
					<% with $NavigationBase %>
						<% if $MenuTitle %>
							<h3>$MenuTitle</h3>
							<p><a href="$Parent.Link" class="">Back to "$Parent.MenuTitle"</a></p>
						<% end_if %>

						<% loop Children %>
							<li>
								<a class="$LinkOrCurrent " href="$Link" <% if $ClassName = RedirectorPage %>target="_blank"<% end_if %>>$MenuTitle</a>
								<% include Navigation %>
							</li>
						<% end_loop %>
					<% end_with %>
				</ul>
		 </nav>
    </div>
</header>

 