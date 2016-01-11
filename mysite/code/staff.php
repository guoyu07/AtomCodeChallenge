<?php
class Staff extends DataObject {

	private static $has_one = array (
		'Team'		  => 'Team',
		'Picture'	  => 'Image'
	);

	private static $db = array(
		'FirstName'		=> 'Varchar(20)',
		'LastName'		=> 'Varchar(30)',
		'Position' 		=> 'Varchar(20)'
	);

	//adds fields to search bar on the left
	private static $searchable_fields = array(
      'FirstName',
      'LastName',
      'Position'
   	);

	private static $summary_fields = array(
      'FirstName',
      'LastName',
      'Position'
   	);

   	public function getCMSValidator() {
		return new RequiredFields('FirstName', 'LastName');
	}

	public function canView($member = null){
		return Permission::check('CMS_ACCESS_JobAdmin');
	}

	public function canEdit($member = null){
		return Permission::check('CMS_ACCESS_JobAdmin');
	}

	public function canDelete($member = null){
		return Permission::check('CMS_ACCESS_JobAdmin');
	}

	public function canCreate($member = null){
		return Permission::check('CMS_ACCESS_JobAdmin');
	}
}