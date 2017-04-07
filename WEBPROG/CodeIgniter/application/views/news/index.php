<h2><?php echo $title; ?></h2>
 
<table border='1' cellpadding='4'>
    <tr>       
		<td><strong>Complete Name</strong></td>
        <td><strong>Nickname</strong></td>
        <td><strong>Email Address</strong></td>
		<td><strong>Home Address</strong></td>
		<td><strong>Gender</strong></td>
        <td><strong>Cellphone Number</strong></td>
		<td><strong>Comments</strong></td>
		<td><strong>Action</strong></td>
    </tr>
<?php foreach ($news as $news_item): ?>
        <tr>
			<td><?php echo $news_item['completeName']; ?></td>
			<td><?php echo $news_item['nickname']; ?></td>
			<td><?php echo $news_item['emailAddress']; ?></td>
			<td><?php echo $news_item['homeAddress']; ?></td>
			<td><?php echo $news_item['gender']; ?></td>
			<td><?php echo $news_item['cellphoneNumber']; ?></td>
			<td><?php echo $news_item['comments']; ?></td>
            <td>
                <a href="<?php echo site_url('news/'.$news_item['slug']); ?>">View</a> |
                <a href="<?php echo site_url('news/edit/'.$news_item['id']); ?>">Edit</a> |
                <a href="<?php echo site_url('news/delete/'.$news_item['id']); ?>" onClick="return confirm('Are you sure you want to delete?')">Delete</a>
            </td>
        </tr>
<?php endforeach; ?>
</table>