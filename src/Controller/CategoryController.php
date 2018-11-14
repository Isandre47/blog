<?php
/**
 * Created by PhpStorm.
 * User: nuand
 * Date: 12/11/2018
 * Time: 16:55
 */

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Article;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class CategoryController extends AbstractController
{
    /**
     * @Route("/category/{id}", name="category_show")
     */
    public function show(Category $category) :Response
    {
        return $this->render('category.html.twig', ['category'=>$category]);
    }

    /**
     * @Route("/category/{name}/all", name="show_by_categoryshow")
     */
    public function showAllByCategory(Category $category) :Response
    {
//        var_dump($category);
        $articles = $category->getArticles();
//        var_dump($articles);
        return $this->render('article.html.twig', ['list'=> $articles]);
    }
}