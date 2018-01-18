<section>
  <h1>Events</h1>
  <?php foreach($events as $event): ?>
    <article>
      <header><h2><?php echo $event['title']; ?></h2></header>
      <dl>
        <dt>code</dt><dd><?php echo $event['code'];?></dd>
        <dt>content</dt><dd><?php echo $event['content'];?></dd>
        <dt>practical</dt><dd><?php echo $event['practical'];?></dd>
        <dt>location</dt><dd><?php echo $event['location'];?></dd>
        <dt>address</dt><dd><?php echo $event['address'];?></dd>
        <dt>postal</dt><dd><?php echo $event['postal'];?></dd>
        <dt>city</dt><dd><?php echo $event['city'];?></dd>
        <dt>start</dt><dd><?php echo $event['start'];?></dd>
        <dt>end</dt><dd><?php echo $event['end'];?></dd>
        <dt>link</dt><dd><?php echo $event['link'];?></dd>
      </dl>
    </article>
  <? endforeach;?>
</section>
