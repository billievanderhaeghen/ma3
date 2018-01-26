<header class="header">
  <div class="header-container">
    <a class="logo" href="index.php"><div class="logo">WV<br/>DM</div></a>
    <nav class="navigation">
      <a class="nav-a agenda active" href="index.php?page=agenda"><div class="nav-icon"></div><p>Agenda</p></a>
      <a class="nav-a praktisch" href="#"><div class="nav-icon"></div><p>Praktisch</p></a>
      <a class="nav-a nieuws" href="#"><div class="nav-icon"></div><p>Nieuws</p></a>
    </nav>
  </div>
  <a href="index.php"><span class="hidden">Week van de mobiliteit</span></a>
</header>
<main>
  <section>
      <article class="breadcrumbs">
        <a href="index.php?agenda">Agenda</a><p>></p><a href="index.php?page=agenda&day=<?php echo $day['id'] ?>"><?php echo $day['name'] ?></a>
      </article>
      <article>
        <header><h2><?php echo $event['title']; ?></h2></header>
        <img class="event-card-img"
            src="assets/img/events/<?php echo $event["code"];?>/1.jpg"
            height="214" width="320"
             alt="blog-image">
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
          <dt>tags</dt>
          <dd>
            <ul><?php foreach($tags as $tag): ?>
                  <?php foreach ($tag as $t): ?>
                    <li><?php echo $t['tag'];?></li>
                  <?php endforeach;?>
                <?php endforeach;?>
            </ul>
          </dd>
        </dl>
      </article>
  </section>
</main>
