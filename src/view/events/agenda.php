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
  <section class="agenda-header">
    <header class="ag-header">
      <h2 class="agenda-title">Agenda</h2>
    </header>
    <div class="header-illustration">
      <picture class="banner-img">
        <source media="(max-width: 320px)" srcset="assets/img/illustrations_agenda_mobile.svg" type="image/svg+xml" />
        <source media="(max-width: 768px)" srcset="assets/img/illustrations_agenda_tablet.svg" type="image/svg+xml" />
        <source media="(max-width: 1024px)" srcset="assets/img/illustrations_agenda_desktop.svg" type="image/svg+xml" />
        <source media="(min-width: 1025px)" srcset="assets/img/illustrations_agenda_desktopHD.svg" type="image/svg+xml" />

        <img class="banner-image"
          srcset="assets/img/illustrations_agenda_mobile.svg 320w,
          assets/img/illustrations_agenda_tablet.svg 768w,
          assets/img/illustrations_agenda_desktop.svg 1024w,
          assets/img/illustrations_agenda_desktopHD.svg 1440w"

          sizes="100vw"
          src="assets/img/illustrations_agenda_desktopHD.svg" alt="fiets">
      </picture>
    </div>
  </section>
  <section class="agenda-form">
    <header>
      <h2 class="hidden">agenda form</h2>
    </header>
    <p class="day-check hidden"><?php if($_GET["day"]){ $day = $_GET["day"]; echo $day;} ?></p>
    <form class="form-search" action="index.php" method="get">
      <div class="form-basic">
        <div class="form-text-input">
          <input type="text" class="form-search-input" name="query" placeholder="zoeken..." value="" autocomplete="off">
          <input type="text" class="form-postcode-input" name="postcode" placeholder="postcode" value="" autocomplete="off">
        </div>
        <div class="days">
          <?php foreach($days as $day): ?>
            <input type="radio" name="day" class="hidden day-check" id="<?php echo $day['id'] ?>" value="<?php echo $day['id'] ?>">
            <label class="day-label" for="<?php echo $day['id'] ?>"><?php echo $day['name'] ?></label>
          <?php endforeach; ?>
        </div>
      </div>
      <div class="tags">
        <?php foreach($tags as $tag): ?>
          <input type="checkbox" name="tag" class="hidden tag-check" id="tag<?php echo $tag['id'] ?>" value="<?php echo $tag['tag'] ?>">
          <label class="tag-label label<?php echo $tag['id'] ?>" for="tag<?php echo $tag['id'] ?>"><?php echo $tag['tag'] ?></label>
        <?php endforeach; ?>
      </div>
      <input type="hidden" name="page" value="agenda">
      <input type="submit" name="action" value="zoeken" class="form-tag-submit">
    </form>
  </section>
  <section class="results">
    <header>
      <h2 class="hidden">resultaten</h2>
    </header>
    <div class="results-space"></div>
    <div class="event-cards events-agenda">
      <?php if(!$events): ?>
        <p class="no-results">Sorry, er zijn geen evenementen gevonden met jouw voorwaarden</p>
      <?php endif; ?>
      <?php foreach($events as $event): ?>
        <article class="event-card">
          <a class="card-link" href="index.php?page=detail&amp;id=<?php echo $event["id"]; ?>">
            <picture class="event-card-img">
              <source type="image/webp" srcset="assets/img/events/<?php echo $event["code"];?>/1.webp">
              <img class="event-card-img"
                  src="assets/img/events/<?php echo $event["code"];?>/1.jpg"
                  height="214" width="320"
                   alt="event-image">
            </picture>
          <div class="event-card-info">
            <header class="event-card-header">
              <h2 class="event-card-title"><?php echo $event['title']; ?></h2>
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
      <?php endforeach;?>
    </div>
    <div class="results-space"></div>
  </section>
</main>
