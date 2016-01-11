<?php 
class Team extends DataObject{
	private static $db = array(
		'Title' => 'Varchar(100)'
	);

	private static $has_many = array(
		'Staff' => 'Staff'
	);

	// private static $summary_fields = array(
 //      'Team'
 //   	);

	public function canView($member = null){
		return Permission::check('CMS_ACCESS_CMSMain');
	}

	public function canEdit($member = null){
		return Permission::check('CMS_ACCESS_CMSMain');
	}

	public function canDelete($member = null){
		return Permission::check('CMS_ACCESS_CMSMain');
	}

	public function canCreate($member = null){
		return Permission::check('CMS_ACCESS_CMSMain');
	}
}