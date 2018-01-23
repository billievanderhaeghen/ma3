<main>
  <section class="agenda-header">
    <header class="ag-header">
      <h2 class="agenda-title">Agenda</h2>
    </header>
  </section>
  <section class="agenda-form">
    <div class="">

    </div>
    <form class="form-search" action="index.php?page=agenda" method="get">
      <input type="text" class="form-search-input" name="query" placeholder="zoeken..." value="" autocomplete="off">
      <input type="hidden" name="page" value="agenda">
      <input type="submit" name="action" value="zoeken" class="form-search-submit">
    </form>
    <form class="form-postcode" action="index.php?page=agenda" method="get">
      <input type="text" class="form-postcode-input" name="postcode" placeholder="postcode" value="" autocomplete="off">
      <input type="hidden" name="page" value="agenda">
      <input type="submit" name="action" value="zoeken" class="form-postcode-submit">
    </form>
    <form class="form-tags" action="index.php?page=agenda" method="get">
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
        <header><h2><?php echo $event['title']; ?></h2></header>
        <dl>
          <dt>start</dt><dd><?php echo $event['start'];?></dd>
          <dt>end</dt><dd><?php echo $event['end'];?></dd>
        </dl>
      </article>
    <? endforeach;?>
  </section>
</main>
