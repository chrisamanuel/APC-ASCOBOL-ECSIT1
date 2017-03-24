<h2><?php echo $title; ?></h2>
 
<?php echo validation_errors(); ?>
 
<?php echo form_open('news/edit/'.$news_item['id']); ?>
    <table>
		<tr>
            <td><label for="completeName">Complete Name</label></td>
            <td><input type="text" name="completeName" size="32" value="<?php echo $news_item['completeName'] ?>" /></td>
        </tr>
		 <tr>
            <td><label for="nickname">Nickname</label></td>
            <td><input type="text" name="nickname" size="32" value="<?php echo $news_item['nickname'] ?>" /></td>
        </tr>
		 <tr>
            <td><label for="emailAddress">Email</label></td>
            <td><input type="email" name="emailAddress" size="32" value="<?php echo $news_item['emailAddress'] ?>" /></td>
        </tr>
		 <tr>
            <td><label for="homeAddress">Home Address</label></td>
            <td><textarea name="homeAddress" rows="5" cols="40" size="300"></textarea></td>
        </tr>
		<tr>
            <td><label for="gender">Gender</label></td>
            <td><input type="radio" name="gender" value="Male" required 
				<?php if (isset($news_item['gender']) && $news_item['gender']=="M") echo 'checked';?>>Male
				<input type="radio" name="gender" value="Female" required
				<?php if (isset($news_item['gender']) && $news_item['gender']=="F") echo 'checked';?>>Female
			</td>
        </tr>
		 <tr>
            <td><label for="cellphoneNumber">Cellphone Number</label></td>
            <td><input type="tel" name="cellphoneNumber" size="11" value="<?php echo $news_item['cellphoneNumber'] ?>" /></td>
        </tr>
		 <tr>
            <td><label for="comments">Comments</label></td>
            <td><textarea name="comments" rows="10" cols="40" size="300"><?php echo $news_item['comments'] ?></textarea></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="submit" value="Edit entry" /></td>
        </tr>
    </table>
</form>