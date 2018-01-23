<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Autovrij</title>
    <meta name="author" content="Billie Vanderhaeghen">
    <meta name="description" content="Week van de mobiliteit">
    <script>
    WebFontConfig = {
     google: {
       families: ['Nunito']
     },
     custom: {
      families: ['MairyBold', 'MairyBook'],
      urls: ['assets/fonts/Mairy/MairyBold.css', 'assets/fonts/Mairy/MairyBook.css']
    }
   };

   (function(d) {
      var wf = d.createElement('script'), s = d.scripts[0];
      wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js';
      wf.async = true;
      s.parentNode.insertBefore(wf, s);
   })(document);
   </script>
    <?php echo $css;?>
  </head>
  <body>
    <header class="header">
      <div class="header-container">
        <a class="logo" href="index.php"><div class="logo">WV<br/>DM</div></a>
        <nav class="navigation">
          <a class="nav-a agenda" href="index.php?page=agenda"><div class="nav-icon"></div><p>Agenda</p></a>
          <a class="nav-a praktisch" href="#"><div class="nav-icon"></div><p>Praktisch</p></a>
          <a class="nav-a nieuws" href="#"><div class="nav-icon"></div><p>Nieuws</p></a>
        </nav>
      </div>
      <a href="index.php"><span class="hidden">Week van de mobiliteit</span></a>
    </header>
    <div class="container">
      <?php if(!empty($_SESSION['info'])): ?><div class="alert alert-success"><?php echo $_SESSION['info'];?></div><?php endif; ?>
      <?php if(!empty($_SESSION['error'])): ?><div class="alert alert-danger"><?php echo $_SESSION['error'];?></div><?php endif; ?>

      <?php echo $content; ?>
    </div>
    <footer class="footer">
      <div class="partners">
        <h3>Partners:</h3>
        <a href="#" class="partner-link"><div class="partner-img"></div></a>
        <a href="#" class="partner-link"><div class="partner-img"></div></a>
        <a href="#" class="partner-link"><div class="partner-img"></div></a>
      </div>
      <div class="social">
        <a href="#" class="social-link"><div class="fb-img"></div></a>
        <a href="#" class="social-link"><div class="tw-img"></div></a>
        <a href="#" class="social-link"><div class="ig-img"></div></a>
      </div>
    </footer>
    <?php echo $js;?>
  </body>
</html>
