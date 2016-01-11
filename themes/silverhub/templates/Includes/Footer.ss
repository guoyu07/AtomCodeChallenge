<footer class="footer">
	<section class="large-section">
		<div class="main-container">
			<div class="section-one">
				<div class="logos">
					<a href="$Link"class="logo"></a>
		         </div>

				<ul class="footer-links">
				<% with $NavigationBase %>
					<% if $MenuTitle %>
				        <h3>$MenuTitle</h3>
						<p><a href="$Parent.Link">Back to "$Parent.MenuTitle"</a></p>
					<% end_if %>

					<% loop Children %>
						<li class="links-list">
							<a href="$Link" <% if $ClassName = RedirectorPage %>target="_blank"<% end_if %>>$MenuTitle</a>
						</li>
					<% end_loop %>
				<% end_with %>
				</ul>

	            <div class="copyright">
	                <p>&copy SilverStripe Limited $Now.Year</p>
	            </div>
			</div>

			<div class="section-two">
				<% if $SiteConfig %>
				    <h1 class="icon-latest-tweet">$SiteConfig.Section_one_text</h1>
				 <% end_if %>

		        <a class="twitter-timeline"
			        href="https://twitter.com/silverstripe"
			        data-widget-id="656569445695946753"
			        data-chrome="nofooter noheader transparent noborders noscrollbar"
			        data-tweet-limit="1"
			        data-cards="hidden"
			        hide_media=true >
			        Tweets by @silverstripe
		         </a>

				<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

			</div>

			<div class="section-three">
				<% if $SiteConfig %>
					<h1 class="icon-need-help">$SiteConfig.Section_two_text</h1>
					<div class="footer-title-info">
						<ul>
							<li>$SiteConfig.Phone</li>
							<li>$SiteConfig.Email</li>
						</ul>
					</div>
				<% end_if %>

	            <ul class="footer-icons">
					<% if $SiteConfig %>
	                    <li class="icon"><a href="$link" class="icon-linkedin" data-icon="$FooterIcon"></a></li>
	                    <li class="icon"><a href="" class="icon-github"></a></li>
	                    <li class="icon"><a href="http://twitter.com/$SiteConfig.Twitter" class="icon-twitter"></a></li>
	                    <li class="icon"><a href="$SiteConfig.Facebook" class="icon-facebook"></a></li>
	                    <li class="icon"><a href="" class="icon-vimeo"></a></li>
					<% end_if %>
		        </ul>

		         <div class="copyright">
		              <p>&copy SilverStripe Limited $Now.Year</p>
		         </div>
			</div>
		</div>
	</section>
</footer>