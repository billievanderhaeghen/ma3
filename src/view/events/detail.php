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
      <header>
        <h2 class="hidden">details</h2>
      </header>
      <article class="details-article">
        <header class="details-header">
          <h2 class="detail-header-title"><?php echo $event['title']; ?></h2>
          <div class="breadcrumbs">
            <a href="index.php?page=agenda">Agenda</a> >
            <a href="index.php?page=agenda&day=<?php echo $day['id'] ?>"><?php echo $day['name'] ?></a> >
            <a href="index.php?page=detail&amp;id=<?php echo $event['id'] ?>"><?php echo $event['title'] ?></a>
          </div>
        </header>
        <div class="details-img-div">
          <img class="details-img"
              src="assets/img/events/<?php echo $event["code"];?>/1.jpg"
              height="214" width="320"
               alt="blog-image">
        </div>
       <div class="details-text">
         <p class="details-content"><?php echo $event['content'];?></p>
         <p class="details-practical"><?php echo $event['practical'];?></p>
       </div>
       <section class="details-section">
         <div class="details">
           <header>
             <h3 class="detail-header-h3"><?php echo $day['name'] ?></h3>
           </header>
           <div class="details-div">
             <p class="details-address"><?php echo $event['address'];?>, <?php echo $event['city'];?></p>
             <?php $date = date('d/m', strtotime($event['start'])); $time = date('h:i', strtotime($event['start'])); ?>
             <div class="details-date">
               <p class="details-datum"><?php echo $date;?></p>
               <p class="details-uur"><?php echo $time;?></p>
             </div>
             <a class="details-link" href="<?php echo $event['link'];?>">over <?php echo $day['name'] ?></a>
             <ul class="details-tags">
               <?php foreach($tags as $tag): ?>
                     <?php foreach ($tag as $t): ?>
                       <li class="details-tag"><?php echo $t['tag'];?></li>
                     <?php endforeach;?>
                   <?php endforeach;?>
             </ul>
           </div>
         </div>
       </section>
      </article>
      <section class="related-events">
        <header>
          <h2 class="hidden">gerelateerde events</h2>
        </header>

      </section>
  </section>
</main>
