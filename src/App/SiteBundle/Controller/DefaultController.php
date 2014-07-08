<?php

namespace App\SiteBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Security\Core\SecurityContext;
use App\TiendaOnlineBundle\Form\ComentarioType;
use App\TiendaOnlineBundle\Entity\Comentario;

class DefaultController extends Controller {

    public function contactenosAction() {
        return $this->render('AppSiteBundle:Pages:contactenos.html.twig');
    }

    public function getCategoriasAction()
    {
        $em = $this->getDoctrine()->getManager();
        $categorias = $em->getRepository('AppTiendaOnlineBundle:Categoria')->findAll();

        return $this->render('AppSiteBundle:Default:categorias_list.html.twig' , array("categorias" => $categorias));
    }


    /* Pagina de categorias  */
 

    public function categoriaAction( $slug ){
        
        $em = $this->getDoctrine()->getManager();

        $categoria = $em->getRepository('AppTiendaOnlineBundle:Categoria')->findOneBy(array("slug"  => $slug ));

        $repository = $this->getDoctrine()
            ->getRepository('AppTiendaOnlineBundle:Producto');

        $query = $repository->createQueryBuilder('p')
            ->where('p.categoria = :categoria_id')
            ->setParameter('categoria_id', $categoria->getId()  )
            ->getQuery();


        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $query, $this->get('request')->query->get('page', 1)/* page number */, 12/* limit per page */
        );


        return $this->render('AppSiteBundle:Pages:ver.categoria.html.twig' , 
            array("pagination" => $pagination , "categoria" =>$categoria ));
    }



    
    public function nosotrosAction() {
        return $this->render('AppSiteBundle:Pages:nosotros.html.twig');
    }

    public function productoAction($slug) {
        $em = $this->getDoctrine()->getManager();
        $producto = $em->getRepository('AppTiendaOnlineBundle:Producto')->findOneBy(array("slug" => $slug));
        $categorias = $em->getRepository('AppTiendaOnlineBundle:Categoria')->findAll();
        return $this->render('AppSiteBundle:Pages:ver.producto.html.twig', array("producto" => $producto, "categorias" => $categorias));
    }

    public function indexAction() {
        $em = $this->getDoctrine()->getManager();

        $dql = "select e from AppTiendaOnlineBundle:Producto e";
        $query = $em->createQuery($dql);

        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $query, $this->get('request')->query->get('page', 1)/* page number */, 12/* limit per page */
        );

        return $this->render('AppSiteBundle:Pages:index.html.twig', array('pagination' => $pagination));
    }

    public function getRecientesAction() {

        $productos = $this->getDoctrine()->getManager()
                ->createQuery(' select e from AppTiendaOnlineBundle:Producto e')
                ->setMaxResults(5)
                ->getResult();

        return $this->render('AppSiteBundle:Default:recents.html.twig', array("recientes" => $productos));
    }

    public function getMenuAction() {
        $em = $this->getDoctrine()->getManager();
        $categorias = $em->getRepository('AppTiendaOnlineBundle:Categoria')->findBy(array("borrado" => 0));
        $instituciones = $em->getRepository('AppTiendaOnlineBundle:Institucion')->findBy(array("borrado" => 0));
        return $this->render('AppSiteBundle:Default:menu.html.twig', array("categorias" => $categorias, "instituciones" => $instituciones));
    }

    public function getSliderAction() {
        $em = $this->getDoctrine()->getManager();
        $banner = $em->getRepository('AppTiendaOnlineBundle:Banner')->findBy(array("borrado" => 0));
        return $this->render('AppSiteBundle:Default:slider.html.twig', array("banners" => $banner));
    }

    public function generar_slugAction() {

        $em = $this->getDoctrine()->getManager();
        $productos = $em->getRepository('AppTiendaOnlineBundle:Categoria')->findAll();

        foreach ($productos as $producto) {



            $producto->setSlug(null);
            $producto->setDescripcion("");
            $producto->setBorrado(0);

            $em->flush();
            echo "categoria id:" . $producto->getId() . " slug:" . $producto->getSlug();
            echo "<br>";
        }
        die();

        //	return $this->render('.html.twig');
    }

    public function comentarAction(Request $request) {

        $comentario = new Comentario();
        // $form = $this->createForm(new App\TiendaOnlineBundle\Form\ComentarioType( ) , $comentario) ; 
        $form = $this->createForm(new ComentarioType(), $comentario);



        // $form->handleRequest($request);
        // if ($form->isValid()) {
        // 	return $this->redirect($this->generateUrl('task_success'));
        // }

        return $this->render('AppSiteBundle:Default:comentar.html.twig', array("form" => $form->createView()));
    }

}
