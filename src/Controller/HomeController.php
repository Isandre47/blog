<?php
/**
 * Created by PhpStorm.
 * User: nuand
 * Date: 04/11/2018
 * Time: 22:03
 */

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/")
     */
    public function index(){
        return $this->render('home.html.twig');
    }
}