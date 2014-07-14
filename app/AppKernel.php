<?php

use Symfony\Component\HttpKernel\Kernel;
use Symfony\Component\Config\Loader\LoaderInterface;

class AppKernel extends Kernel
{
    public function registerBundles()
    {
        $bundles = array(
            new Symfony\Bundle\FrameworkBundle\FrameworkBundle(),
            new Symfony\Bundle\SecurityBundle\SecurityBundle(),
            new Symfony\Bundle\TwigBundle\TwigBundle(),
            new Symfony\Bundle\MonologBundle\MonologBundle(),
            new Symfony\Bundle\SwiftmailerBundle\SwiftmailerBundle(),
            new Symfony\Bundle\AsseticBundle\AsseticBundle(),
            new Doctrine\Bundle\DoctrineBundle\DoctrineBundle(),
            new Sensio\Bundle\FrameworkExtraBundle\SensioFrameworkExtraBundle(),

            
            new App\TiendaOnlineBundle\AppTiendaOnlineBundle(),
            new App\SiteBundle\AppSiteBundle(),



            new Knp\Bundle\MenuBundle\KnpMenuBundle(),



        // Then add SonataAdminBundle
            new Sonata\AdminBundle\SonataAdminBundle(),
            
            new Stof\DoctrineExtensionsBundle\StofDoctrineExtensionsBundle(),
            new Knp\Bundle\PaginatorBundle\KnpPaginatorBundle(),


            
            
            new Ivory\CKEditorBundle\IvoryCKEditorBundle(),
            




            new Sonata\CoreBundle\SonataCoreBundle(),
            new Sonata\BlockBundle\SonataBlockBundle(),
            new Sonata\jQueryBundle\SonatajQueryBundle(),
            new Sonata\DoctrineORMAdminBundle\SonataDoctrineORMAdminBundle(),
            new Sonata\MarkItUpBundle\SonataMarkItUpBundle(),            
            new Sonata\MediaBundle\SonataMediaBundle(),
            new Sonata\NewsBundle\SonataNewsBundle(),
            new Sonata\ClassificationBundle\SonataClassificationBundle(),
            new Sonata\IntlBundle\SonataIntlBundle(),
            new Sonata\FormatterBundle\SonataFormatterBundle(),
            new Sonata\EasyExtendsBundle\SonataEasyExtendsBundle(),            
            new Sonata\UserBundle\SonataUserBundle('FOSUserBundle'),




            new Knp\Bundle\MarkdownBundle\KnpMarkdownBundle(),
            new JMS\SerializerBundle\JMSSerializerBundle(),

            

            new FOS\UserBundle\FOSUserBundle(),
            

            new Application\Sonata\UserBundle\ApplicationSonataUserBundle(),
            new Application\Sonata\MediaBundle\ApplicationSonataMediaBundle(),
            new Application\Sonata\NewsBundle\ApplicationSonataNewsBundle(),
            new Application\Sonata\ClassificationBundle\ApplicationSonataClassificationBundle(),

            // new Application\Sonata\MediaBundle\ApplicationSonataMediaBundle(),
            
            );

if (in_array($this->getEnvironment(), array('dev', 'test'))) {
    $bundles[] = new Acme\DemoBundle\AcmeDemoBundle();
    $bundles[] = new Symfony\Bundle\WebProfilerBundle\WebProfilerBundle();
    $bundles[] = new Sensio\Bundle\DistributionBundle\SensioDistributionBundle();
    $bundles[] = new Sensio\Bundle\GeneratorBundle\SensioGeneratorBundle();
}

return $bundles;
}

public function registerContainerConfiguration(LoaderInterface $loader)
{
    $loader->load(__DIR__.'/config/config_'.$this->getEnvironment().'.yml');
}
}
