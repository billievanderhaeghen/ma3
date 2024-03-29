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
          <picture class="details-img">
            <source type="image/webp" srcset="assets/img/events/<?php echo $event["code"];?>/1.webp">
            <img class="details-img"
                src="assets/img/events/<?php echo $event["code"];?>/1.jpg"
                height="214" width="320"
                 alt="event-image">
          </picture>
        </div>
       <div class="details-text">
         <p class="details-content"><?php echo $event['content'];?></p>
         <p class="details-practical"><?php echo $event['practical'];?></p>
       </div>
       <section class="details-section details-list">
         <div class="details">
           <header>
             <h3 class="detail-header-h3"><?php echo $day['name'] ?></h3>
           </header>
           <div class="details-div">
             <p class="details-address"><?php echo $event['address'];?>, <?php echo $event['city'];?></p>
             <?php $time = date('h:i', strtotime($event['start'])); ?>
             <div class="details-date">
               <?php $startDate = date('d/m', strtotime($event['start']));
               $endDate = date('d/m', strtotime($event['end'])); ?>
               <?php if ($startDate === $endDate): ?>
                 <p class="details-datum"><?php echo $startDate;?></p>
                 <p class="details-uur"><?php echo $time;?></p>
               <?php else: ?>
                 <p class="details-datum"><?php echo $startDate;?> - <?php echo $endDate;?></p>
               <?php endif; ?>
             </div>
             <a class="details-link" href="<?php echo $event['link'];?>">meer info</a>
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
       <section class="related-events">
         <header class="related-title">
           <h2>Anderen bekeken ook:</h2>
         </header>
         <div class="detail-events">
           <?php foreach ($relatedEvents as $relatedEvent): ?>
             <article class="event-card detail-event-card">
               <a class="card-link" href="index.php?page=detail&amp;id=<?php echo $relatedEvent["id"]; ?>">
                 <picture class="event-card-img">
                   <source type="image/webp" srcset="assets/img/events/<?php echo $relatedEvent["code"];?>/1.webp">
                   <img class="event-card-img"
                       src="assets/img/events/<?php echo $relatedEvent["code"];?>/1.jpg"
                       height="214" width="320"
                        alt="event-image">
                 </picture>
               <div class="event-card-info detail-event-card-info">
                 <header class="event-card-header">
                   <h2 class="event-card-title"><?php echo $relatedEvent['title']; ?></h2>
                   <?php $startDate = date('d/m', strtotime($event['start']));
                   $endDate = date('d/m', strtotime($event['end'])); ?>
                   <?php if ($startDate === $endDate): ?>
                     <p class="event-card-start"><?php echo $startDate;?></p>
                   <?php else: ?>
                     <p class="event-card-start"><?php echo $startDate;?> - <?php echo $endDate;?></p>
                   <?php endif; ?>
                 </header>
               </div>
               </a>
             </article>
           <?php endforeach; ?>
         </div>
       </section>
       <div class="results-space">

       </div>
      </article>
  </section>
</main>
