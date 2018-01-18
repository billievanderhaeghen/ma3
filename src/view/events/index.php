<section class="header">

</section>
<section class="about">
  <header>
    <h2 class="hidden">Kort over ons</h2>
  </header>
  <article class="goedopweg">
    <img class="about-img" src="" alt="">
    <h2 class="about-title">#goedopweg</h2>
    <p class="about-p">Elk jaar zet de Week van de
Mobiliteit Vlaanderen #goedopweg
om mee(r) te autominderen.</p>
  </article>
  <article class="alternatieven">
    <img class="about-img" src="" alt="">
    <h2 class="about-title">Alternatieven</h2>
    <p class="about-p">Tal van acties tijdens de Week doen ons stilstaan
bij ons verplaatsingsgedrag en laten
proeven van de alternatieven.</p>
  </article>
  <article class="overstap">
    <img class="about-img" src="" alt="">
    <h2 class="about-title">De overstap</h2>
    <p class="about-p">Want wie de overstap maakt ontdekt zelf
de voordelen van het stappen,
trappen, trein/tram/bus of autodelen.</p>
  </article>
</section>
<section class="events">
  <header>
    <h2>In de kijker</h2>
  </header>
  <?php foreach($events as $event): ?>
    <article>
      <header><h2><?php echo $event['title']; ?></h2></header>
      <dl>
        <dt>city</dt><dd><?php echo $event['city'];?></dd>
        <dt>start</dt><dd><?php echo $event['start'];?></dd>
        <dt>end</dt><dd><?php echo $event['end'];?></dd>
      </dl>
    </article>
  <? endforeach;?>
</section>
