<?php

namespace App\TiendaOnlineBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

class ProductoAdmin extends Admin
{
    /**
     * @param DatagridMapper $datagridMapper
     */
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper

        ->add('nombre')
        ->add('cantidad')
        ->add('categoria')
        ->add('precio')
        ->add('descripcion')
        ->add('imagen')
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
        ->addIdentifier('nombre')
        ->add('categoria')
        ->add('marca')
        // ->add('borrado')
        ->add('created')        
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


        $producto = $this->getSubject();

        // use $fileFieldOptions so we can add other options to the field
       $fileFieldOptions = array('required' => false);
       if ($producto && ($webPath = __DIR__.'/../../../../web/uploads/productos/'.  $producto->getImagen() )) {
            // get the container so the full path to the image can be set
               $container = $this->getConfigurationPool()->getContainer();
            $fullPath = $container->get('request')->getBasePath().'/uploads/productos/'.$producto->getImagen();

            // add a 'help' option containing the preview's img tag
        $fileFieldOptions['help'] = '<img src="'.$fullPath.'" class="admin-preview" />';
    }



    $formMapper

    ->add('nombre')
    ->add('categoria')
    ->add('cantidad')
    ->add('precio')
    ->add('marca')
    ->add('descripcion')
    ->add('file', 'file', $fileFieldOptions )
    ->add('borrado', 'choice', array(
        'choices' => array(
            '0' => 'No',
            '1' => 'Si'
            )));
    ;
}

    /**
     * @param ShowMapper $showMapper
     */
    protected function configureShowFields(ShowMapper $showMapper)
    {
        $showMapper
        ->add('id')
        ->add('nombre')
        ->add('cantidad')
        ->add('precio')
        ->add('descripcion')
        ->add('imagen')
        ->add('borrado')
        ->add('created_at')
        ->add('updated_at')
        ;
    }
}
