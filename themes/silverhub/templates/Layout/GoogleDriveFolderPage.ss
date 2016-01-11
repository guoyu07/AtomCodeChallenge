$Content

<% if DisplayAs == 'Grid' %>
<iframe src="$GridLink" width="800" height="600" frameborder="0"></iframe>
<% else_if DisplayAs == 'List' %>
<iframe src="$ListLink" width="800" height="600" frameborder="0"></iframe>
<% end_if %>
