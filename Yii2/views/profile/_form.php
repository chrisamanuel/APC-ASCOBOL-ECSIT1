<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Profiles */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="profiles-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'slug')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'completeName')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nickname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'emailAddress')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'homeAddress')->textInput(['maxlength' => true]) ?>

	<?= $form->field($model, 'gender')->radio(['label' => 'Male', 'value' => 'M', 'uncheck' => null]) ?>
	
	<?= $form->field($model, 'gender')->radio(['label' => 'Female', 'value' => 'F', 'uncheck' => null]) ?>
	
    <?= $form->field($model, 'cellphoneNumber')->textInput() ?>

    <?= $form->field($model, 'comments')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->
isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
