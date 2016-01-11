<?php

class StaffHolder extends Page {
	//add description
    private static $description = 'The SilverStripe Team';

}

class StaffHolder_Controller extends Page_Controller { 
	
	private $PageTitle = 'The SilverStripe Team';

	//returns an array of all staff members
	public function AllStaff() {
		$params = $this->getRequest()->params();
		$teamURL = $params['team'];
		$teamURL = strtolower(str_replace('_', ' ', $teamURL));
		$staff = Staff::get()->filter('Team.Title', $teamURL);
		return $staff;
	}

	public function getTeams(){
		$teams = Team::get();
		return $teams;
	}
}