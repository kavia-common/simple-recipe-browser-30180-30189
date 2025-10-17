(function () {
  const btn = document.getElementById('button-55-928');
  if (btn) {
    btn.addEventListener('mouseenter', function () {
      btn.style.filter = 'brightness(1.05)';
    });
    btn.addEventListener('mouseleave', function () {
      btn.style.filter = 'none';
    });
    btn.addEventListener('click', function () {
      // Placeholder action
      console.log('Start Cooking clicked');
    });
  }
})();
