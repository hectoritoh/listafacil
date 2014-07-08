<?php

namespace App\TiendaOnlineBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

class BannerAdmin extends Admin
{


    public function preUpdate($obj){
        $obj->upload();
    }

    public function prePersist($obj){
        $obj->upload();
    }


    /**
     * @param DatagridMapper $datagridMapper
     */
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
        ->add('nombre')
        ->add('url')
        ->add('descripcion')

        ;
    }

    /**
     * @param ListMapper $listMapper
     */
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
        ->add('id')
        ->add('nombre')
        // ->add('url')
        ->add('descripcion')
        ->add('borrado')
        ->add('created_at')
        ->add('updated_at')
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


        $banner = $this->getSubject();

        // use $fileFieldOptions so we can add other options to the field
        $fileFieldOptions = array('required' => false);
        if ($banner && ($webPath = __DIR__.'/../../../../web/uploads/banners/'.  $banner->getUrl() )) {
            // get the container so the full path to the image can be set
         $container = $this->getConfigurationPool()->getContainer();
         $fullPath = $container->get('request')->getBasePath().'/uploads/banners/'.$banner->getUrl();

            // add a 'help' option containing the preview's img tag
         $fileFieldOptions['help'] = '<img src="'.$fullPath.'" class="admin-preview" />';
     }


     $formMapper        
     ->add('nombre')
     ->add('file', 'file' , $fileFieldOptions )
     ->add('descripcion')
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
        ->add('nombre')
        ->add('url')
        ->add('descripcion')
        ->add('borrado', 'choice', array(
            'choices' => array(
                '0' => 'No',
                '1' => 'Si'
                )));

        ;
    }
}
