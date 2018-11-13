<?php
/**
 * Created by PhpStorm.
 * User: nuand
 * Date: 12/11/2018
 * Time: 16:09
 */

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Category;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;


class ArticleController extends AbstractController
{
    /**
     * @Route("/category/{id}", name="article_show")
     */
    public function showArticles(Category $category) :Response
    {
        $articlesName = $category->getArticles($category);
        return $this->render('article.html.twig', ['list'=> $articlesName]);
    }

    /**
     * @Route("/category/", name="article_list")
     */
    public function showListArticles() :Response
    {
        $category = new Article();
        $category->getCategory();
        var_dump($category);
        return $this->render('article.html.twig', ['list'=> $category]);
    }
}