<?php
class StaffAdmin extends ModelAdmin {

	private static $managed_models = array(
		'Staff',
		'Team'
	);

	private static $url_segment = 'staff-info';

	private static $menu_title = 'Staff Info';
}