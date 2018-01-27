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
  <section class="details-section">
      <article class="details-article">
        <div class="breadcrumbs">
          <a href="index.php?page=agenda">Agenda</a> >
          <a href="index.php?page=agenda&day=<?php echo $day['id'] ?>"><?php echo $day['name'] ?></a> >
          <a href="index.php?page=detail&amp;id=<?php echo $event['id'] ?>"><?php echo $event['title'] ?></a>
        </div>
        <header><h2 class="detail-header-title"><?php echo $event['title']; ?></h2></header>
        <img class="event-card-img"
            src="assets/img/events/<?php echo $event["code"];?>/1.jpg"
            height="214" width="320"
             alt="blog-image">
       <div class="details-text">
         <p class="details-content"><?php echo $event['content'];?></p>
         <p class="details-practical"><?php echo $event['practical'];?></p>
       </div>
        <div class="details">
          <header>
            <h3 class="detail-header-h3"><?php echo $day['name'] ?></h3>
          </header>
          <div class="details-div">
            <p class="details-address"><?php echo $event['address'];?>, <?php echo $event['city'];?></p>
            <p class="details-datum"><?php echo $event['start'];?></p>
            <p class="details-uur"><?php echo $event['start'];?></p>
            <p class="details-link"><?php echo $event['link'];?></p>
            <ul>
              <?php foreach($tags as $tag): ?>
                    <?php foreach ($tag as $t): ?>
                      <li><?php echo $t['tag'];?></li>
                    <?php endforeach;?>
                  <?php endforeach;?>
            </ul>
          </div>
        </div>
      </article>
      <section class="related-events">

      </section>
  </section>
</main>
