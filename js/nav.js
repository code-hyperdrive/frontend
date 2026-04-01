/* Mobile nav toggle */
document.addEventListener('DOMContentLoaded', function () {
  var toggle = document.querySelector('.nav-toggle');
  var inner  = document.querySelector('.nav-inner');
  var links  = document.querySelector('.nav-links');

  if (toggle) {
    toggle.addEventListener('click', function () {
      inner.classList.toggle('open');
      links.classList.toggle('open');
      var expanded = inner.classList.contains('open');
      toggle.setAttribute('aria-expanded', expanded);
    });
  }

  /* Close nav on link click (mobile) */
  if (links) {
    links.querySelectorAll('a').forEach(function (a) {
      a.addEventListener('click', function () {
        inner.classList.remove('open');
        links.classList.remove('open');
      });
    });
  }

  /* Mark active nav link */
  var currentPath = window.location.pathname.split('/').pop() || 'index.html';
  document.querySelectorAll('.nav-links a').forEach(function (a) {
    var href = a.getAttribute('href').split('/').pop();
    if (href === currentPath || (currentPath === '' && href === 'index.html')) {
      a.classList.add('active');
    }
  });
});
