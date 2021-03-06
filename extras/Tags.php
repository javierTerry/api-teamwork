<?php namespace TeamWorkPm;

class Tags extends \TeamWorkPm\Rest\Model
{
	/**
     * Update a users permissions on a project
     * PUT /expenses.json
     * Sets the permissions of a given user on a given project.
     */
    public function getAll()
    {
        return $this->rest->get("/tags");
    }    
}