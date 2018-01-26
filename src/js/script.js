// {
//   let $form;
//   let $searchInput;
//   let $postalInput;
//   let $tagInput;
//   let $results;
//
//   const init = () => {
//     if (document.querySelector(`form`)) {
//       const submitButton = document.querySelector(`form input[type=submit]`);
//       submitButton.style.display = `none`;
//
//       $form = document.querySelector(`form`);
//       $searchInput = document.querySelector(`[name="query"]`);
//       $postalInput = document.querySelector(`[name="postcode"]`);
//       $tagInput = document.querySelectorAll(`[name="tag"]`);
//       $results = document.querySelector(`.results`);
//
//       $searchInput.addEventListener(`input`, handleInputSearch);
//       $postalInput.addEventListener(`input`, handleInputPostal);
//       // console.log($tagInput);
//       $tagInput.forEach($tag => {
//         $tag.addEventListener(`change`, handleInputTag);
//         // console.log($tag.value);
//       });
//     }
//
//     console.log(window.location.href);
//
//   };
//
//   const handleInputSearch = () => {
//     const q = $searchInput.value.trim();
//     console.log(q);
//     fetch(`index.php?page=agenda-ajax&query=${q}`, {
//       headers: new Headers({
//         Accept: `application/json`,
//       }),
//     })
//       .then(r => r.json())
//       .then(data => parse(data));
//   };
//
//   const handleInputTag = $tag => {
//     const t = $tag.target.value;
//     console.log($tag);
//     console.log(t);
//     if ($tag.target.checked) {
//       fetch(`index.php?page=agenda&${encodeForm(new FormData($form))}`, {
//         headers: new Headers({
//           Accept: `application/json`,
//         }),
//       })
//         .then(r => r.json())
//         .then(data => parse(data));
//     }
//   };
//
//   const encodeForm = formData => {
//     return [...formData.entries()] // expand the elements from the .entries() iterator into an actual array
//       .map(e => `${encodeURIComponent(e[0])  }=${  encodeURIComponent(e[1])}`)  // transform the elements into encoded key-value-pairs
//       .join(`&`);
//   };
//
//   const handleInputPostal = () => {
//     const p = $postalInput.value.trim();
//     console.log(p);
//     fetch(`index.php?page=agenda-ajax&postcode=${p}`, {
//       headers: new Headers({
//         Accept: `application/json`,
//       }),
//     })
//       .then(r => r.json())
//       .then(data => parse(data));
//   };
//
//   const parse = results => {
//     $results.innerHTML = results
//       .map(product => createProductItem(product))
//       .join(``);
//   };
//
//   const createProductItem = result => {
//     return `<div>
//       <header>
//         <h2>${result.title}</h2>
//       </header>
//     </div>`;
//   };
//
//   init();
// }
