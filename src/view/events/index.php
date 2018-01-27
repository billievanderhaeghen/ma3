<header class="header">
  <div class="header-container">
    <div class="active">
      <a class="logo" href="index.php"><div class="logo">WV<br/>DM</div></a>
    </div>
    <nav class="navigation">
      <a class="nav-a agenda" href="index.php?page=agenda"><div class="nav-icon"></div><p>Agenda</p></a>
      <a class="nav-a praktisch" href="#"><div class="nav-icon"></div><p>Praktisch</p></a>
      <a class="nav-a nieuws" href="#"><div class="nav-icon"></div><p>Nieuws</p></a>
    </nav>
  </div>
  <a href="index.php"><span class="hidden">Week van de mobiliteit</span></a>
</header>
<main>
  <section class="header-home">
    <header>
      <h2 class="hidden">Home</h2>
    </header>
    <picture class="banner-img">
      <source media="(max-width: 320px)" srcset="assets/img/illustrations_home_mobile.svg" type="image/svg+xml" />
      <source media="(max-width: 768px)" srcset="assets/img/illustrations_home_tablet.svg" type="image/svg+xml" />
      <source media="(max-width: 1024px)" srcset="assets/img/illustrations_home_desktop.svg" type="image/svg+xml" />
      <source media="(min-width: 1025px)" srcset="assets/img/illustrations_home_desktopHD.svg" type="image/svg+xml" />

      <img class="banner-image"
        srcset="assets/img/illustrations_home_mobile.svg 320w,
        assets/img/illustrations_home_tablet.svg 768w,
        assets/img/illustrations_home_desktop.svg 1024w,
        assets/img/illustrations_home_desktopHD.svg 1440w"

        sizes="100vw"
        src="assets/img/illustrations_home_desktopHD.svg" alt="404 not found">
      </picture>
  </section>
  <section class="about">
    <header class="hidden">
      <h2>Kort over ons</h2>
    </header>
    <article class="article-about goedopweg">
      <div class="positioning-about-img">
        <img class="about-img" src="assets/img/illustrations_duim.svg" alt="duim" width="153" height="146">
      </div>
      <h2 class="about-title">#goedopweg</h2>
      <p class="about-p">Elk jaar zet de Week van de
  Mobiliteit Vlaanderen #goedopweg
  om mee(r) te autominderen.</p>
    </article>
    <article class="article-about alternatieven">
      <div class="positioning-about-img">
        <img class="about-img" src="assets/img/illustrations_wiel.svg" alt="wiel" width="140" height="140">
      </div>
      <h2 class="about-title">Alternatieven</h2>
      <p class="about-p">Tal van acties tijdens de Week doen ons stilstaan
  bij ons verplaatsingsgedrag en laten
  proeven van de alternatieven.</p>
    </article>
    <article class="article-about overstap">
      <div class="positioning-about-img">
        <img class="about-img" src="assets/img/illustrations_schoen.svg" alt="schoen" width="197" height="111">
      </div>
      <h2 class="about-title">De overstap</h2>
      <p class="about-p">Want wie de overstap maakt ontdekt zelf
  de voordelen van het stappen,
  trappen, trein/tram/bus of autodelen.</p>
    </article>
  </section>
  <section class="events">
    <header class="events-header">
      <h2 class="events-title">In de kijker</h2>
    </header>
    <div class="event-cards events-home">
      <div class="results-space"></div>
      <?php foreach($events as $event): ?>
        <article class="event-card home-event<?php echo $event["id"]; ?>">
          <a class="card-link" href="index.php?page=detail&amp;id=<?php echo $event["id"]; ?>">
          <img class="event-card-img"
              src="assets/img/events/<?php echo $event["code"];?>/1.jpg"
              height="214" width="320"
               alt="blog-image">
          <div class="event-card-info">
            <header class="event-card-header">
              <h2 class="event-card-title"><?php echo $event['title']; ?></h2>
              <?php $date = date('d/m', strtotime($event['start']));?>
              <p class="event-card-start"><?php echo $date; ?></p>
            </header>
          </div>
          </a>
        </article>
      <?php endforeach; ?>
      <div class="results-space"></div>
    </div>

  </section>
  <section class="dagen">
    <header class="hidden">
      <h2>Dagen</h2>
    </header>
    <article class="dagen-article autovrij">
       <div class="date-border">
        <p class="date">16/09</p>
      </div>
      <div class="dag-div">
        <img class="dag-img" src="assets/img/illustrations_fiets.svg" alt="fiets" width="243" height="158">
        <h2 class="dag-title">Autovrije Zondag</h2>
        <p class="dag-p">Alle remmen los voor de Autoloze zondag op 16 september! Overal in België is er wel iets te doen. Zoek je een fiets? Dan is de tweedehands fietsenmarkt in Brussel zeker iets voor jou. Als je niet weet wat een monowheel is, kan je dan weer in Gent terecht.</p>
        <a href="index.php?page=agenda&day=1" class="dag-button">Bekijk evenementen</a>
      </div>
    </article>
    <article class="dagen-article carfree">
      <div class="date-border">
       <p class="date">16/09 - 22/09</p>
     </div>
      <div class="dag-div">
        <img class="dag-img" src="assets/img/illustrations_gitaar.svg" alt="gitaar" width="262" height="140">
        <h2 class="dag-title">Car Free Festival</h2>
        <p class="dag-p">Studio Brussel nodigt tallen muzikanten uit om je rit op het openbaar vervoer een heel wat sfeervoller te maken. Een partybus voor in de file, fietstaxi’s, zelfs een eigen Studio Brussel tram, je zal er zo veel plezier beleven dat het niet spoort!</p>
        <a href="index.php?page=agenda&day=2" class="dag-button">Bekijk evenementen</a>
      </div>
    </article>
    <article class="dagen-article strapdag">
      <div class="date-border">
       <p class="date">21/09</p>
     </div>
      <div class="dag-div">
        <img class="dag-img" src="assets/img/illustrations_helm.svg" alt="helm"  width="174" height="158">
        <h2 class="dag-title">Strapdag</h2>
        <p class="dag-p">Georganiseerd door Octopusplan, moedigt Strapdag kinderen én hun ouders aan om duurzaam en veilig naar school te gaan. Je kan genieten van straatanimatie, een workshop volgen om je fiets te pimpen, picknicken op straat, strap yourself in! </p>
        <a href="index.php?page=agenda&day=4" class="dag-button">Bekijk evenementen</a>
      </div>
    </article>
  </section>
</main>
