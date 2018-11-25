<?php
/**
 * Created by PhpStorm.
 * User: nuand
 * Date: 25/11/18
 * Time: 23:46
 */

namespace App\Form;


use App\Entity\Category;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('title');
        $builder->add('content');
        $builder->add('category', EntityType::class, ['class' => Category::class, 'choice_label' => 'name',]);
    }
}