<?php

namespace App\Admin\Controllers;

use App\Helicopter;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class HelicopterController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Helicopter';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Helicopter());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('description', __('Description'));
        $grid->column('pictures', __('Pictures'))->display(function ($pictures) {
            return $pictures;
        })->image('', 100, 100);
        $grid->column('passengers', __('Passengers'));
        $grid->column('speed', __('Speed'));
        $grid->column('flight_length', __('Flight length'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Helicopter::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('description', __('Description'));
        $show->pictures()->image();
        $show->field('passengers', __('Passengers'));
        $show->field('speed', __('Speed'));
        $show->field('flight_length', __('Flight length'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Helicopter());

        $form->text('name', __('Name'));
        $form->textarea('description', __('Description'));
        $form->multipleImage('pictures', __('Pictures'));
        $form->number('passengers', __('Passengers'));
        $form->number('speed', __('Speed'));
        $form->number('flight_length', __('Flight length'));

        return $form;
    }
}
