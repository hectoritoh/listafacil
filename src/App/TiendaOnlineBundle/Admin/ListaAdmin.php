<?php

namespace App\TiendaOnlineBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

class ListaAdmin extends Admin
{



   public function preUpdate($object)
   {


        foreach ($object->getDetalles()   as $detalle ) {
            echo "prueba";
            $detalle->setLista(  $object );
        }
               
    }

    public function prePersist($object)
   {
        
        foreach ($object->getDetalles()   as $detalle ) {
            echo "prueba";
            $detalle->setLista(  $object );
        }
         
    }



    /**
     * @param DatagridMapper $datagridMapper
     */
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper   
        ->add('nombre')
        ->add('descripcion')
        ->add('borrado')
        ;
    }

    /**
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
        ->add('id')
        ->add('institucion')
        ->add('nombre')
        ->add('descripcion')
        ->add('borrado')
        ->add('created_at')
        ->add('_action', 'actions', array(
            'actions' => array(
                'show' => array(),
                'edit' => array(),
                'delete' => array(),
                )
            ))
        ;
    }

    /**
     * @param FormMapper $formMapper
     */
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper

        ->add('nombre')
        ->add('descripcion','textarea')
        ->add('institucion')
        ->add('detalles', 'sonata_type_collection', array(
            'by_reference' => false,
                // Prevents the "Delete" option from being displayed
            'type_options' => array('delete' => true)) , array(
            'edit' => 'inline',
            'inline' => 'table',
            'sortable' => 'position',
            ))
        ->add('borrado', 'choice', array(
            'choices' => array(
                '0' => 'No',
                '1' => 'Si'
                )));
    }



    //     public function prePersist($obj)
    // {

    // }


    // public function preUpdate($obj)
    // {
    //     foreach ($detalle as $lista->getDetalles()) {
    //         $detalle->setLista(  $obj );
    //     }
    // }


    /**
     * @param ShowMapper $showMapper
     */
    protected function configureShowFields(ShowMapper $showMapper)
    {
        $showMapper
        ->add('id')
        ->add('nombre')
        ->add('descripcion')
        ->add('borrado')
        ;
    }
}
