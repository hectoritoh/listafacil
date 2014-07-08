<?php

namespace App\TiendaOnlineBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('AppTiendaOnlineBundle:Default:index.html.twig', array('name' => $name));
    }



    
}
