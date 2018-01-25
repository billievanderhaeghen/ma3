<main>
  <section class="agenda-header">
    <header class="ag-header">
      <h2 class="agenda-title">Agenda</h2>
    </header>
  </section>
  <section class="agenda-form">
    <div class="">

    </div>
    <?php
    function getAddress() {
      // $protocol = $_SERVER['HTTPS'] == 'on' ? 'https' : 'http';
      return '://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
    } ?>
    <form class="form-search" action="index.php" method="get">
      <input type="text" class="form-search-input" name="query" placeholder="zoeken..." value="" autocomplete="off">

      <input type="text" class="form-postcode-input" name="postcode" placeholder="postcode" value="" autocomplete="off">

      <?php foreach($tags as $tag): ?>
        <input type="checkbox" name="tag" id="<?php echo $tag['tag'] ?>" value="<?php echo $tag['tag'] ?>">
        <label for="<?php echo $tag['tag'] ?>"><?php echo $tag['tag'] ?></label>
        <? endforeach;?>
        <input type="hidden" name="page" value="agenda">
        <input type="submit" name="action" value="zoeken" class="form-tag-submit">
    </form>
  </section>
  <section class="results">
    <?php foreach($events as $event): ?>
      <article>
        <a href="index.php?page=detail&amp;id=<?php echo $event["id"]; ?>">
        <header><h2><?php echo $event['title']; ?></h2></header>
        <img class="events-result-item-img"
            src="assets/img/events/<?php echo $event["code"];?>/1.jpg"
            height="474" width="480"
             alt="blog-image">
        <dl>
          <dt>start</dt><dd><?php echo $event['start'];?></dd>
          <dt>end</dt><dd><?php echo $event['end'];?></dd>
        </dl>
        </a>
      </article>
    <? endforeach;?>
  </section>
</main>
<?php echo $jsfilter;?>
