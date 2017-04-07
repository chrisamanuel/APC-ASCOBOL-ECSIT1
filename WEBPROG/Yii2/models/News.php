<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "news".
 *
 * @property integer $id
 * @property string $slug
 * @property string $completeName
 * @property string $nickname
 * @property string $emailAddress
 * @property string $homeAddress
 * @property string $gender
 * @property integer $cellphoneNumber
 * @property string $comments
 */
class News extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'news';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['slug', 'completeName', 'nickname', 'emailAddress', 'gender', 'cellphoneNumber'], 'required'],
            [['cellphoneNumber'], 'integer'],
            [['slug', 'completeName', 'nickname', 'emailAddress', 'homeAddress', 'comments'], 'string', 'max' => 128],
            [['gender'], 'string', 'max' => 1],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'slug' => 'Slug',
            'completeName' => 'Complete Name',
            'nickname' => 'Nickname',
            'emailAddress' => 'Email Address',
            'homeAddress' => 'Home Address',
            'gender' => 'Gender',
            'cellphoneNumber' => 'Cellphone Number',
            'comments' => 'Comments',
        ];
    }
}
