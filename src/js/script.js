{
  let $form;
  let $searchInput;
  let $postalInput;
  let $tagInput;
  let $dayInput;
  let $results;
  let $dayCheck;

  const init = () => {
    if (document.querySelector(`form`)) {
      const submitButton = document.querySelector(`form input[type=submit]`);
      submitButton.style.display = `none`;

      $form = document.querySelector(`form`);
      $searchInput = document.querySelector(`[name="query"]`);
      $postalInput = document.querySelector(`[name="postcode"]`);
      $tagInput = document.querySelectorAll(`[name="tag"]`);
      $dayInput = document.querySelectorAll(`[name="day"]`);
      $results = document.querySelector(`.events-agenda`);

      $searchInput.addEventListener(`input`, fetchHandler);
      $postalInput.addEventListener(`input`, fetchHandler);

      $tagInput.forEach($tag => {
        $tag.addEventListener(`change`, fetchHandler);
      });

      $dayInput.forEach($day => {
        if(document.querySelector(`.day-check`)) {
          $dayCheck = document.querySelector(`.day-check`);
          if ($dayCheck.innerHTML === $day.attributes.value.value) {
            $day.setAttribute(`checked`, true);
          }
        }
        $day.addEventListener(`change`, fetchHandler);
      });

    }

  };

  const fetchHandler = () => {
    fetch(`index.php?page=agenda&${encodeForm(new FormData($form))}`, {
      headers: new Headers({
        Accept: `application/json`,
      }),
    })
      .then(r => r.json())
      .then(data => parse(data));
  };

  const encodeForm = formData => {
    return [...formData.entries()] // expand the elements from the .entries() iterator into an actual array
      .map(e => `${encodeURIComponent(e[0])  }=${  encodeURIComponent(e[1])}`)  // transform the elements into encoded key-value-pairs
      .join(`&`);
  };

  const parse = results => {
    if (results.length > 0) {
      $results.innerHTML = results
        .map(product => createEventCard(product))
        .join(``);
    } else {
      $results.innerHTML = `<div class="results-space"></div>
      <p class="no-results">Sorry, er zijn evenementen gevonden met jouw voorwaarden</p>
      <div class="results-space"></div>`;
    }
  };

  const createEventCard = result => {
    let date;
    const $startDate = new Date(result.start).getDate();
    const $endDate = new Date(result.end).getDate();
    if ($startDate === $endDate) {
      date = `${$startDate}/09`;
    } else {
      date = `${$startDate}/09 - ${$endDate}`;
    }
    return `
        <article class="event-card">
          <a class="card-link" href="index.php?page=detail&amp;id=${result.id}">
          <picture class="event-card-img">
          <img class="event-card-img"
              src="assets/img/events/${result.code}/1.jpg"
              height="214" width="320"
               alt="blog-image">
          <picture>
          <div class="event-card-info">
            <header class="event-card-header">
              <h2 class="event-card-title">${result.title}</h2>
              <p class="event-card-start">${date}</p>
            </header>
          </div>
          </a>
        </article>`;
  };

  init();
}
