<?php
/**
 * Created by PhpStorm.
 * User: nuand
 * Date: 12/11/2018
 * Time: 09:23
 */

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;


class BlogController extends AbstractController
{

    /**
     * Correspond à la route /author/list et au name "author_list"
     * @Route("/list", name="viewlist")
     */
    public function list()
    {
        return $this->render('index.html.twig');
    }

     /**
      * Correspond à la route /author/new et au name "author_new"
      * @Route("/blog/{slug}", requirements={"slug"="[a-z-0-9]*"}, methods={"GET"}, name="showslug")
      */
    public function show($slug)
    {
        if ($slug != 'rien'){
            return $this->render('index.html.twig', ['page' => $slug]);
        }else{
            return $this->render('index.html.twig', ['page' => "Article sans titre"]);
        }
    }
}