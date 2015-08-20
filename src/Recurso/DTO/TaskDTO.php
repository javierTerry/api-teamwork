<?php namespace Masnegocio\teamwork\Recurso\DTO;
/**
 * ProjectCategorieDTO
 */
class TaskDTO {
	
	public $name 			="";
	public $id				= "";
	public $description		= "";
	public $projectId		= "";
	public $milestoneId		= "";
	public $uncompletedCount= "";
	public $complete		= "";
	public $overdueCount	= "";
 	public $completedCount	= "";
	
}

class ItemsDTO {
	
	public $order 			="";
	public $createdOn		= "";
	public $id				= "";
	public $completed		= "";
	public $estimatedMinutes= "";
	public $description		= "";
	public $progress	 	= "";
	public $parentTaskId 	= "";
	public $startDate 		= "";
	public $responsiblePartyId= "";
	public $dueDateBase		= "";
	public $status	 		= "";
	public $content 		= "";
	public $responsiblePartyType= "";
	public $lastChangedOn 	= "";
	public $dueDate 		= "";
	public $priority 		= "";
	public $responsiblePartyIds= "";
	public $tasklistLockdownId= "";
	
	  
	 /*
	
	public $projectId		= "";
	public $milestoneId		= "";
	public $uncompletedCount= "";
	
	public $overdueCount	= "";
 	public $completedCount	= "";
	public $todoItems		= "";
	 * 
	 */
	
}
?>