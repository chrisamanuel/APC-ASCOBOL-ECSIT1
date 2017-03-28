<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "trivia".
 *
 * @property integer $id
 * @property string $question
 * @property string $answer
 * @property integer $profile_id
 *
 * @property Profiles $profile
 */
class Trivia extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'trivia';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'question', 'answer', 'profile_id'], 'required'],
            [['id', 'profile_id'], 'integer'],
            [['question', 'answer'], 'string', 'max' => 100],
            [['profile_id'], 'exist', 'skipOnError' => true, 'targetClass' => Profiles::className(), 'targetAttribute' => ['profile_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'question' => 'Question',
            'answer' => 'Answer',
            'profile_id' => 'Profile ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProfile()
    {
        return $this->hasOne(Profiles::className(), ['id' => 'profile_id']);
    }
}
