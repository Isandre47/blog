<?php
/**
 * Created by PhpStorm.
 * User: nuand
 * Date: 26/11/18
 * Time: 14:00
 */

namespace App\Controller;


use App\Entity\Tag;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class TagController extends AbstractController
{
    /**
     * @Route("/tag/{name}", name="tag_show")
     */
    public function showArticles(Tag $tag) :Response
    {
        $articlesTag = $tag->getArticles();
        return $this->render('tag.html.twig', ['list'=> $articlesTag]);
    }
}