<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Simple. by Sara (saratusar.com, @saratusar) for Innovatif - an awesome Slovenia-based digital agency (innovatif.com/en)
Change it, enhance it and most importantly enjoy it!
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<![endif]-->
	<% require themedCSS('main') %>
	<% require javascript("themes/silverhub/javascript/script.js") %>

	<link rel="shortcut icon" href="{$BaseURL}favicon.ico">
	<link rel="icon" type="image/png" href="{$BaseURL}favicon-64.png" sizes="64x64">
	<link rel="apple-touch-icon-precomposed" href="{$BaseURL}favicon-180.png">
	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
</head>

	<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>

	<div class="page-wrapper">
		<% include Header %>


        <main class="main-content">
	        <div class="main-container">

		        <!-- member welcome message and edit functions for homepage -->
		        <% if $ClassName = "HomePage" %>
                <p>
			        <% if $CurrentMember %>
                        Hi $CurrentMember.FirstName!&nbsp;&nbsp;&nbsp;Welcome back to SilverHub the intranet for SilverStripe Staff.&nbsp;&nbsp;&nbsp;
			        <% else %>
                        You are not logged in – <a href="Security/login?BackURL=$Link">Log in</a>
			        <% end_if %>

			        <% if $EditLink %>
                        <a href="$EditLink">Edit this page</a><% if $CurrentMember && $EditLink %> | <% end_if %>
			        <% end_if %>
			        <% if $CurrentMember %>
                        <a href="Security/logout">Log out</a>
			        <% end_if %>
                </p>
		        <% end_if %>

		        <% if $Breadcrumbs && $ClassName != "HomePage" %>
			        <% if Level(2) %>
			            <p class="breadcrumb">$Breadcrumbs</p>
			        <% end_if %>
		        <% end_if %>

		        <div class="container<% if $FeatureBox || $Children %><% else %> full-width<% end_if %>">

			        <% loop Alerts %>
                        <div class="alert">$Text</div>
			        <% end_loop %>

                    <article>
                        <div class="content">$Layout</div>
                    </article>

                </div>

		        <% if $FeatureBox || $Children %>
                    <div class="container-sidebar">

                        <!-- 3rd level nav -->
				        <% if $Children %>
                            <div class="third-nav-content">
                                <ul class="third-nav-bar">
                                    <h2>$Top.Title</h2>
							        <% loop $Children %>
                                        <li>
                                            <a href="$Link">$MenuTitle </a>
                                        </li>
							        <% end_loop %>
                                </ul>
                            </div>
				        <% end_if %>

				        <% if $FeatureBox %>
                            <div class="feature-box-content">
                                <h2 class="feature-box">Feature box</h2>
                                <div class="inside-box silverstripe-atom">
							        $FeatureBox.LimitCharacters(350)
                                </div>
						        <% if FeatureBoxImage %>
                                    <div class="feature-box-image">
								        $FeatureBoxImage
                                    </div>
						        <% end_if %>
                            </div>
				        <% end_if %>

                    </div>
		        <% end_if %>

			</div>
        </main>

		<% include Footer %>
    </div>
	</body>
</html>
