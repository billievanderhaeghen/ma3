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
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 248.57"><defs><style>.cls-1{fill:none;}.cls-1,.cls-2,.cls-3,.cls-5{stroke:#825a60;stroke-linecap:round;stroke-linejoin:round;stroke-width:5.16px;}.cls-2{fill:#f57d90;}.cls-3{fill:#f8efd0;}.cls-4{fill:#f5b3bd;}.cls-5{fill:#2bcdc9;}</style></defs><title>illustrations</title><g id="agenda_illustratie_copy" data-name="agenda illustratie copy"><line class="cls-1" x1="-360.81" y1="211.48" x2="1169.36" y2="211.48"/><line class="cls-2" x1="-360.38" y1="226.77" x2="1168.93" y2="226.77"/><line class="cls-2" x1="-360.38" y1="242.06" x2="1168.93" y2="242.06"/></g><g id="fiets_copy" data-name="fiets copy"><g id="fiets-2" data-name="fiets"><g id="wiel"><path class="cls-2" d="M197.83,158.13a41,41,0,1,0,41,41A41,41,0,0,0,197.83,158.13Z"/><circle class="cls-3" cx="197.83" cy="199.1" r="25.79"/><line class="cls-1" x1="197.83" y1="173.81" x2="197.83" y2="224.38"/><line class="cls-1" x1="175.93" y1="211.74" x2="219.73" y2="186.45"/><line class="cls-1" x1="219.73" y1="211.74" x2="175.93" y2="186.45"/><g id="schaduw"><path class="cls-4" d="M212.51,170.22c6.46,2.33,10.34,8.4,13.84,13.95,1.32,2.1,4.67.16,3.34-2-4.11-6.5-8.62-13-16.15-15.72-2.35-.85-3.36,2.89-1,3.73Z"/></g></g><path class="cls-1" d="M95.67,157.62H48.13c-8.1,0-16.19-2-21.25-5.05"/><polyline class="cls-1" points="66.33 199.09 115.9 196.06 112.26 139.41"/><polyline class="cls-1" points="112.55 139.41 175.58 140.43 115.9 196.06"/><path class="cls-5" d="M98.91,127.84h23.25a8,8,0,0,1,8,8V136a8,8,0,0,1-8,8H98.91a0,0,0,0,1,0,0V127.84A0,0,0,0,1,98.91,127.84Z"/><path class="cls-1" d="M197.83,199.1l-22.25-58.67,9.1-20.23V103h16.19c7.08,0,9.1,4,9.1,8.09"/></g><g id="pedalen_copy" data-name="pedalen copy"><circle class="cls-1" cx="115.9" cy="196.06" r="14.16"/><polyline class="cls-1" points="115.9 196.06 123.84 218.87 132.94 218.87"/><polyline class="cls-1" points="115.9 196.06 107.96 173.25 98.85 173.25"/></g><g id="wiel-2" data-name="wiel"><path class="cls-2" d="M66.33,158.13a41,41,0,1,0,41,41A41,41,0,0,0,66.33,158.13Z"/><circle class="cls-3" cx="66.33" cy="199.1" r="25.79"/><line class="cls-1" x1="66.33" y1="173.81" x2="66.33" y2="224.38"/><line class="cls-1" x1="44.43" y1="211.74" x2="88.23" y2="186.45"/><line class="cls-1" x1="88.23" y1="211.74" x2="44.43" y2="186.45"/><path class="cls-4" d="M80.83,170.22c6.46,2.33,10.34,8.4,13.84,13.95,1.33,2.1,4.68.16,3.34-2-4.1-6.5-8.62-13-16.15-15.72-2.35-.85-3.36,2.89-1,3.73Z"/></g></g></svg>
    </div>
  </section>
  <section class="agenda-form">
    <?php
    function getAddress() {
      // $protocol = $_SERVER['HTTPS'] == 'on' ? 'https' : 'http';
      return '://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
    } ?>
    <form class="form-search" action="index.php" method="get">
      <div class="form-basic">
        <div class="form-text-input">
          <input type="text" class="form-search-input" name="query" placeholder="zoeken..." value="" autocomplete="off">
          <input type="text" class="form-postcode-input" name="postcode" placeholder="postcode" value="" autocomplete="off">
        </div>
        <div class="days">
          <?php foreach($days as $day): ?>
            <input type="radio" name="day" class="hidden day-check" id="<?php echo $day['name'] ?>" value="<?php echo $day['name'] ?>">
            <label class="day-label" for="<?php echo $day['name'] ?>"><?php echo $day['name'] ?></label>
          <?php endforeach; ?>
        </div>
      </div>
      <div class="tags">
        <?php foreach($tags as $tag): ?>
          <input type="checkbox" name="tag" class="hidden tag-check" id="<?php echo $tag['tag'] ?>" value="<?php echo $tag['tag'] ?>">
          <label class="tag-label" for="<?php echo $tag['tag'] ?>"><?php echo $tag['tag'] ?></label>
        <?php endforeach; ?>
      </div>
      <div class="hidden">
        <input type="hidden" name="page" value="agenda">
        <input type="submit" name="action" value="zoeken" class="form-tag-submit">
      </div>
    </form>
  </section>
  <section class="results">
    <div class="event-cards">
      <?php foreach($events as $event): ?>
        <article class="event-card">
          <a class="card-link" href="index.php?page=detail&amp;id=<?php echo $event["id"]; ?>">
          <img class="event-card-img"
              src="assets/img/events/<?php echo $event["code"];?>/1.jpg"
              height="214" width="320"
               alt="blog-image">
          <div class="event-card-info">
            <header class="event-card-header">
              <h2 class="event-card-title"><?php echo $event['title']; ?></h2>
              <p class="event-card-start"><?php echo $event['start'];?></p>
            </header>
          </div>
          </a>
        </article>
      <?php endforeach;?>
    </div>
  </section>
</main>
<?php echo $jsfilter;?>
