<h2><?php echo $title; ?></h2>
 
<?php echo validation_errors(); ?>
 
<?php echo form_open('news/create'); ?>    
    <table>
		 <tr>
            <td><label for="completeName">Complete Name</label></td>
            <td><input type="text" name="completeName" size="32" /></td>
        </tr>
		 <tr>
            <td><label for="nickname">Nickname</label></td>
            <td><input type="text" name="nickname" size="32" /></td>
        </tr>
		 <tr>
            <td><label for="emailAddress">Email Address</label></td>
            <td><input type="email" name="emailAddress" size="32" /></td>
        </tr>
		 <tr>
            <td><label for="homeAddress">Home Address</label></td>
            <td><textarea name="homeAddress" rows="5" cols="40" size="300"></textarea></td>
        </tr>
		<tr>
            <td><label for="gender">Gender</label></td>
            <td><input type="radio" name="gender" value="M" required>Male 
				<input type="radio" name="gender" value="F" required>Female
			</td>
        </tr>
		 <tr>
            <td><label for="cellphoneNumber">Cellphone Number</label></td>
            <td><input type="tel" name="cellphoneNumber" size="11"/></td>
        </tr>
		 <tr>
            <td><label for="comments">Comments</label></td>
            <td><textarea name="comments" rows="10" cols="40" size="300"></textarea></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="submit" value="Add new entry" /></td>
        </tr>
    </table>    
</form>