/* ============================================================
   ENVIESTUDOS — Main JavaScript
   ============================================================ */

(function () {
  'use strict';

  const WA_NUMBER  = '258823289330';
  const WA_MESSAGE = 'Hello%2C%20I%20would%20like%20to%20inquire%20about%20your%20environmental%20consultancy%20services.';
  const WA_URL     = `https://wa.me/${WA_NUMBER}?text=${WA_MESSAGE}`;

  /* ── Sticky Navigation ── */
  const navbar    = document.querySelector('.navbar');
  const backTop   = document.querySelector('.back-top');

  function onScroll() {
    const scrolled = window.scrollY > 50;

    if (navbar) {
      if (navbar.classList.contains('transparent')) {
        navbar.classList.toggle('scrolled', scrolled);
      }
    }

    if (backTop) {
      backTop.classList.toggle('show', window.scrollY > 400);
    }
  }

  window.addEventListener('scroll', onScroll, { passive: true });

  if (backTop) {
    backTop.addEventListener('click', () => window.scrollTo({ top: 0, behavior: 'smooth' }));
  }

  /* ── Mobile Navigation ── */
  const hamburger = document.querySelector('.nav-hamburger');
  const mobileNav = document.querySelector('.mobile-nav');

  if (hamburger && mobileNav) {
    hamburger.addEventListener('click', () => {
      const isOpen = mobileNav.classList.toggle('open');
      hamburger.classList.toggle('open', isOpen);
      document.body.style.overflow = isOpen ? 'hidden' : '';
    });

    // Close on link click
    mobileNav.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        mobileNav.classList.remove('open');
        hamburger.classList.remove('open');
        document.body.style.overflow = '';
      });
    });
  }

  /* ── Active Nav Link ── */
  const currentPath = window.location.pathname.split('/').pop() || 'index.html';
  document.querySelectorAll('.nav-links a, .mobile-nav a').forEach(link => {
    const href = link.getAttribute('href') || '';
    if (href === currentPath || (currentPath === '' && href === 'index.html')) {
      link.classList.add('active');
    }
  });

  /* ── Scroll Reveal ── */
  const revealEls = document.querySelectorAll('.reveal');

  if (revealEls.length > 0) {
    const revealObserver = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('visible');
          revealObserver.unobserve(entry.target);
        }
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });

    revealEls.forEach(el => revealObserver.observe(el));
  }

  /* ── Counter Animation ── */
  function animateCounter(el) {
    const target = parseInt(el.dataset.target, 10);
    const suffix = el.dataset.suffix || '';
    const duration = 1800;
    const start = performance.now();

    function step(now) {
      const progress = Math.min((now - start) / duration, 1);
      const eased = 1 - Math.pow(1 - progress, 3);
      el.textContent = Math.floor(eased * target) + suffix;
      if (progress < 1) requestAnimationFrame(step);
    }

    requestAnimationFrame(step);
  }

  const counters = document.querySelectorAll('[data-counter]');
  if (counters.length > 0) {
    const counterObserver = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          animateCounter(entry.target);
          counterObserver.unobserve(entry.target);
        }
      });
    }, { threshold: 0.5 });

    counters.forEach(el => counterObserver.observe(el));
  }

  /* ── Project Filter Tabs ── */
  const filterTabs = document.querySelectorAll('.filter-tab');
  const projectCards = document.querySelectorAll('.project-card[data-category]');

  filterTabs.forEach(tab => {
    tab.addEventListener('click', () => {
      const cat = tab.dataset.filter;

      filterTabs.forEach(t => t.classList.remove('active'));
      tab.classList.add('active');

      projectCards.forEach(card => {
        const match = cat === 'all' || card.dataset.category === cat;
        card.style.display = match ? '' : 'none';
        if (match) {
          setTimeout(() => card.classList.add('visible'), 50);
        } else {
          card.classList.remove('visible');
        }
      });
    });
  });

  /* ── WhatsApp Links ── */
  document.querySelectorAll('[data-wa]').forEach(el => {
    el.addEventListener('click', (e) => {
      e.preventDefault();
      window.open(WA_URL, '_blank', 'noopener,noreferrer');
    });
    el.setAttribute('href', WA_URL);
  });

  /* ── Contact Form ── */
  const contactForm = document.querySelector('#contactForm');
  if (contactForm) {
    const successMsg = contactForm.querySelector('.form-message.success');
    const errorMsg   = contactForm.querySelector('.form-message.error');
    const submitBtn  = contactForm.querySelector('[type="submit"]');

    contactForm.addEventListener('submit', function (e) {
      e.preventDefault();

      // Gather form data
      const name    = contactForm.querySelector('[name="name"]').value.trim();
      const email   = contactForm.querySelector('[name="email"]').value.trim();
      const service = contactForm.querySelector('[name="service"]').value;
      const message = contactForm.querySelector('[name="message"]').value.trim();

      if (!name || !email || !message) {
        if (errorMsg) {
          errorMsg.textContent = 'Please fill in all required fields.';
          errorMsg.classList.add('show');
          setTimeout(() => errorMsg.classList.remove('show'), 4000);
        }
        return;
      }

      // Build WhatsApp message with form data
      const waText = encodeURIComponent(
        `Hello Enviestudos,\n\nMy name is ${name} (${email}).\n` +
        (service ? `I'm interested in: ${service}.\n\n` : '\n') +
        `${message}`
      );

      const btnText = submitBtn.innerHTML;
      submitBtn.innerHTML = 'Sending…';
      submitBtn.disabled = true;

      setTimeout(() => {
        if (successMsg) {
          successMsg.textContent = 'Message sent! We will contact you shortly. Redirecting to WhatsApp…';
          successMsg.classList.add('show');
        }

        submitBtn.innerHTML = btnText;
        submitBtn.disabled = false;
        contactForm.reset();

        setTimeout(() => {
          window.open(`https://wa.me/${WA_NUMBER}?text=${waText}`, '_blank', 'noopener,noreferrer');
        }, 1500);

        setTimeout(() => successMsg && successMsg.classList.remove('show'), 6000);
      }, 900);
    });
  }

  /* ── Newsletter Form ── */
  const newsletterForm = document.querySelector('#newsletterForm');
  if (newsletterForm) {
    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const input = newsletterForm.querySelector('input[type="email"]');
      if (!input.value) return;
      const btn = newsletterForm.querySelector('button');
      btn.textContent = 'Subscribed!';
      btn.style.background = '#1A6B4A';
      input.value = '';
      setTimeout(() => { btn.textContent = 'Subscribe'; btn.style.background = ''; }, 3000);
    });
  }

  /* ── Smooth Scroll for anchor links ── */
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', (e) => {
      const target = document.querySelector(anchor.getAttribute('href'));
      if (target) {
        e.preventDefault();
        const offset = parseInt(getComputedStyle(document.documentElement).getPropertyValue('--nav-h'), 10) || 76;
        window.scrollTo({ top: target.offsetTop - offset, behavior: 'smooth' });
      }
    });
  });

})();
