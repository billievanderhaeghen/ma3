<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Autovrij</title>
    <meta name="author" content="Billie Vanderhaeghen">
    <meta name="description" content="Week van de mobiliteit">
    <?php echo $css;?>
  </head>
  <body>
    <header>
      <a href="index.php"><span class="hidden">Week van de mobiliteit</span></a>
      <nav>
        <a href="index.php?page=agenda">Agenda</a>
        <a href="#">Praktisch</a>
        <a href="#">Over ons</a>
        <a href="#">Nieuws</a>
      </nav>
    </header>
    <div class="container">
      <?php if(!empty($_SESSION['info'])): ?><div class="alert alert-success"><?php echo $_SESSION['info'];?></div><?php endif; ?>
      <?php if(!empty($_SESSION['error'])): ?><div class="alert alert-danger"><?php echo $_SESSION['error'];?></div><?php endif; ?>

      <?php echo $content; ?>
    </div>

    <?php echo $js;?>
  </body>
</html>
