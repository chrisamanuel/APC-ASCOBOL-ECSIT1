<?php

/* @var $this yii\web\View */
use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;

$this->title = 'My Page';
?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<div class="box">
	<div class="site-index">
			<center> 
				<h2>John Brian M.Gutierrez</h2>
				<h3>If I were to describe myself I'm</h3>
			</center> 	
		<div class="body-content">
			<div class="container">
				<div class="three-columns">
					<div>		
					  <p class="column-icon"><i class="fa fa-desktop" aria-hidden="true"></i></p>
					  <p class="column-title">A PC-ENTHUSIAST</p>
					  <p>I'm a PC Enthusiast I like Computers, assembling them, and appreciating the technology behind the computers ever since I was a kid also our family is poor but we have one computer at home
					  that we 3 siblings had to share or morelike can use for entertainment puposes because my parents bought the computer for our eldest brother so basically he owns it but I had a little time 
					  to use it and that how I learn the World of Computers.</p>
					  <br></br>
					  <a href="http://masteroverwatch.com/profile/pc/kr/Incursion-11162" class="read-more">My Dream Computer!</a>
					</div>
					<div>
					  <p class="column-icon"><i class="fa fa-headphones" aria-hidden="true"></i>
					  <p class="column-title">AMATURE AUDIOPHILE</p>
					  <p>And also an Audiophile I have alot of earphones with different usage first thing you need to learn is that there are two types of drivers that manufacturer uses
					  unto this earphones and headphones, Balance Armature and Dynamic driver. But in some case manufacturers started to use both drivers to deliver such audio to their customer
					  hence the creation of hybrid drivers that I specifically uses one Xiaomi Hybrids</p>
					  <br></br>
					  <a href="http://xiaomi-mi.com/in-ear-headphones/xiaomi-mi-in-ear-headphones-silver/" class="read-more">My Earphones!</a>
					</div>
					<div>
					  <p class="column-icon"><i class="fa fa-gamepad" aria-hidden="true"></i></p>
					  <p class="column-title">AVID GAMER</p>
					  <p>More than that I also like J-pop, K-pop, Rock, and sometimes oldies music for some reasons like backstreet boys and  50-80's songs Also I'm a gamer/game developer 
					  I played alot of games in the past like league of legends but I got bored to it beceause of the toxic players playing there and also due to busy schedule 
					  I wasn't able to play like I used to because playing those playing really consume your time very easily. Although I play Overwatch if you play overwatch
					  and have a free time, feel free to add me and lets play.</p>
					  <a href="http://masteroverwatch.com/profile/pc/kr/Incursion-11162" class="read-more">Let's play Overwatch!</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="box">
<div class="forms-model-index">

    <h1>Form Section</h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?php
			if (Yii::$app->user->isGuest) {
				
			} elseif(Yii::$app->user->identity->username) {
				echo Html::a('Create a Trivia', ['create'], ['class' => 'btn btn-success']); 
			}
			?>
    </p>
<?php Pjax::begin(); ?>    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id',
            'name',
            'nickname',
            'email:email',
            'home_address',
            // 'comment',
            // 'gender',
            // 'cellphone',

            ['class' => 'yii\grid\ActionColumn','template'=>'{view}'],
        ],
    ]); ?>
<?php Pjax::end(); ?>
</div>
</div>

<div class="box">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function()
{
    $("#show").click(function(){
        $("answers").toggle(500);
    });
});
</script>

<h1>Trivia Section</h1>
<p></p>
        <?php
			if (Yii::$app->user->isGuest) {
				
			} elseif(Yii::$app->user->identity->username) {
				echo Html::a('Edit a Trivia', ['trivia/index'], ['class' => 'btn btn-success']);
			}
			?>

<br></br>
<ul>
<?php foreach ($trivias as $trivia): ?>

    <li>
        <strong><?= Html::encode("{$trivia->question}") ?>:</strong>
		<br></br>	
		<answers style=display:none><?= $trivia->answer ?></answers>
		<br></br>	
    </li>	
<?php endforeach; ?>
<button id="show">Show all answer</button>
<p></p>
</ul>
</div>

