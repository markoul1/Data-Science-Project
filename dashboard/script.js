function loadContent(page, element) {
    document.getElementById("content-frame").src = page;
    // Remove the 'active' class from any other link
    document.querySelectorAll('nav ul li a').forEach(link => {
      link.classList.remove('active');
  });

  // Add 'active' class to the clicked link
  element.classList.add('active');
}


(function() {
  const originalPrint = window.print;
  window.print = function() {
      console.log('Print dialog blocked');
      // Do nothing to prevent the print dialog from appearing
  };
})();