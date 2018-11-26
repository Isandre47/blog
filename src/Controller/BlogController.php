<?php
/**
 * Created by PhpStorm.
 * User: nuand
 * Date: 12/11/2018
 * Time: 09:23
 */

namespace App\Controller;

use App\Form\ArticleSearchType;
use App\Form\ArticleType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\FormTypeInterface;
use App\Entity\Category;
use App\Entity\Article;


class BlogController extends AbstractController
{

    /**
     * Correspond à la route /author/list et au name "author_list"
     * @Route("/list", name="viewlist")
     */


    public function __construct()
    {
        return "BOBBY THE BEST";
    }

    public function list()
    {
        return $this->render('index.html.twig');
    }

    /**
     * Show all row from article's entity
     *
     * @Route("blog/", name="blog_index")
     * @return Response A response instance
     */
    public function index(Request $request) : Response
    {

        $articles = $this->getDoctrine()->getRepository(Article::class)->findAll();

        if (!$articles) {
            throw $this->createNotFoundException(
                'No article found in article\'s table.'
            );
        }

//        $form = $this->createForm(ArticleSearchType::class,null, ['method' => Request::METHOD_GET]);
        $form2 = $this->createForm(ArticleType::class,null, ['method' => Request::METHOD_GET]);
        $form2->handleRequest($request);

        if($form2->isSubmitted()){
            $data = $form2->getData();
//            dump($data); die;
            $em = $this->getDoctrine()->getManager();
            $em->persist($data);
            $em->flush();
//            $list_cat = $this->getDoctrine()->getRepository(Article::class)->findAll();
            return $this->render('blog/index.html.twig', [
                'articles' => $articles,
//                'form' => $form->createView(),
                'form2' => $form2->createView(),
//                'list' => $list_cat
            ]);
        }

        return $this->render('blog/index.html.twig',[
            'articles' => $articles,
//            'form' => $form->createView(),
            'form2' => $form2->createView(),
        ]);
    }


    /**
     * @Route("/category/{name}/all", name="show_by_category")
     */
    public function showAllByCategory(Category $category) :Response
    {
        $categories = $category->getArticles();
        return $this->render('article.html.twig', ['list'=> $categories]);
    }

//    /**
//     * Getting a article with a formatted slug for title
//     *
//     * @param string $slug The slugger
//     *
//     * @Route("/{slug<^[a-zA-Z0-9-]+$>}",
//     *     defaults={"slug" = null},
//     *     name="blog_show")
//     *  @return Response A response instance
//     */
//    public function show($slug) : Response
//    {
//        if (!$slug) {
//            throw $this
//                ->createNotFoundException('No slug has been sent to toto an article in article\'s table.');
//        }
//
//        $slug = preg_replace(
//            '/-/',
//            ' ', ucwords(trim(strip_tags($slug)), "-")
//        );
//
//        $article = $this->getDoctrine()
//            ->getRepository(Article::class)
//            ->findOneBy(['title' => mb_strtolower($slug)]);
//
//        if (!$article) {
//            throw $this->createNotFoundException(
//                'No article with '.$slug.' title, found in article\'s table.'
//            );
//        }
//
//        return $this->render(
//            'blog/show.html.twig',
//            [
//                'article' => $article,
//                'slug' => $slug,
//            ]
//        );
//    }

    /**
     * @Route("/category/{category}", name="blog_show_category")
     */
    public function showByCategory(string $category) :Response
    {

        $category = $this->getDoctrine()->getRepository(Category::class)->findOneByName($category);

        $articles = $this->getDoctrine()->getRepository(Article::class)
            ->findBy(array('category' => $category), null, 3);

        return $this->render('blog/category.html.twig', ['articles'=>$articles, 'category'=>$category] );
    }

//    public function index()
//    {
//        $form = $this->createForm(
//            ArticleSearchType::class,
//            null,
//            ['method' => Request::METHOD_GET]
//        );
//
//        return $this->render(
//            'blog/index.html.twig', [
//                'articles' => $articles,
//                'form' => $form->createView(),
//            ]
//        );
//    }
}