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
use App\Form\ArticleSearchType;
use App\Form\CategoryType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\DependencyInjection\Tests\Compiler\C;
use Symfony\Component\Form\FormInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;

class CategoryController extends AbstractController
{
    /**
     * @Route("/category/{id}", name="category_show")
     */
    public function show(Category $category) :Response
    {
        return $this->render('category2.html.twig', ['category'=>$category]);
    }

    /**
     * @Route("blog/category/", name="category_add")
     */
    public function addCategory(Request $request) :Response
    {
        $category = new Category();
        $form2 = $this->createForm(CategoryType::class, $category, ['method' => Request::METHOD_GET]);
        $form2->handleRequest($request);

        if($form2->isSubmitted()){
            $category->getName($form2);
        }

        return $this->render('blog/addCat.html.twig',[
            'form2' => $form2->createView(),
        ]);

    }



}