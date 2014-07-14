<?php

namespace App\TiendaOnlineBundle\Entity;

use FOS\UserBundle\Model\Group as BaseGroup;
/**
 * Grupo
 */
class Grupo extends BaseGroup
{
    /**
     * @var integer
     */
    protected $id;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }
}
