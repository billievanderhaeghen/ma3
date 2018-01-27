<!DOCTYPE html>
<html lang="nl">
  <head>
    <meta charset="utf-8">
    <title>Mobillieteit</title>
    <meta name="author" content="Billie Vanderhaeghen">
    <meta name="description" content="Week van de mobiliteit">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
    <?php echo $js;?>
    <?php echo $css;?>
  </head>
  <body>
    <div class="container">
      <?php echo $content; ?>
    </div>
    <footer class="footer">
      <div class="partners">
        <h3>Partners:</h3>
        <div class="links">
          <a href="#" class="partner-link"><div class="vlaanderen-img"></div></a>
          <a href="#" class="partner-link"><div class="nmbs-img"></div></a>
          <a href="#" class="partner-link"><div class="lijn-img"></div></a>
        </div>
      </div>
      <div class="social">
        <h3>Volg ons:</h3>
        <div class="links">
          <a href="#" class="social-link"><div class="fb-img"></div></a>
          <a href="#" class="social-link"><div class="tw-img"></div></a>
          <a href="#" class="social-link"><div class="ig-img"></div></a>
        </div>
      </div>
    </footer>
  </body>
</html>
