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
use Symfony\Component\HttpFoundation\Response;
use App\Entity\Category;


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
    public function show($slug = 'rien')
    {
        if ($slug != 'rien'){
            $slug = ucwords( str_replace('-', ' ', $slug));
            return $this->render('index.html.twig', ['page' => $slug]);
        }else{
            return $this->render('index.html.twig', ['page' => "Article sans titre"]);
        }
    }

    /**
     * @Route("/category/{name}/all", name="show_by_category")
     */
    public function showAllByCategory(Category $category) :Response
    {
//        var_dump($category);
        $categories = $category->getArticles();
//        var_dump($articles);
        return $this->render('article.html.twig', ['list'=> $categories]);
    }
}