<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
  <title>Velora — Immersive E‑Commerce</title>

  <!-- Google Fonts + Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #fefefe;
      color: #121826;
      scroll-behavior: smooth;
      overflow-x: hidden;
    }

    /* modern color palette */
    :root {
      --bg: #ffffff;
      --surface: #f8fafd;
      --primary-dark: #0a0c10;
      --primary-deep: #131b2c;
      --accent-blue: #2d68ff;
      --accent-glow: #3b82f6;
      --muted-text: #5a6a7a;
      --border-light: rgba(0, 0, 0, 0.05);
      --shadow-sm: 0 12px 28px rgba(0, 0, 0, 0.04), 0 0 0 1px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 24px 48px -12px rgba(0, 0, 0, 0.15);
      --gradient-hero: linear-gradient(135deg, rgba(18, 28, 40, 0.85), rgba(10, 15, 27, 0.9));
      --radius-card: 1.5rem;
      --radius-element: 2rem;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 1.75rem;
    }

    /* glass header */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 255, 255, 0.92);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid var(--border-light);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 1rem;
      padding: 0.9rem 0;
    }

    .brand {
      font-family: 'Space Grotesk', monospace;
      font-weight: 700;
      font-size: 1.7rem;
      background: linear-gradient(135deg, #121826 0%, #2d68ff 100%);
      background-clip: text;
      -webkit-background-clip: text;
      color: transparent;
      letter-spacing: -0.02em;
    }

    .brand span {
      background: none;
      color: #2d68ff;
    }

    .main-nav ul {
      display: flex;
      gap: 1.8rem;
      list-style: none;
    }

    .main-nav a {
      font-weight: 500;
      font-size: 0.95rem;
      color: #1f2937;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }

    .main-nav a:hover {
      color: #2d68ff;
    }

    /* search modern */
    .search-group {
      background: var(--surface);
      border-radius: 2rem;
      padding: 0.5rem 1rem;
      display: flex;
      align-items: center;
      gap: 8px;
      border: 1px solid transparent;
      transition: 0.2s;
    }
    .search-group:focus-within {
      border-color: #2d68ff;
      background: white;
      box-shadow: 0 0 0 3px rgba(45, 104, 255, 0.1);
    }
    .search-group input {
      background: transparent;
      border: none;
      outline: none;
      width: 200px;
      font-size: 0.85rem;
    }
    .header-actions {
      display: flex;
      gap: 1rem;
      align-items: center;
    }
    .cart-icon {
      position: relative;
      background: var(--surface);
      padding: 0.5rem;
      border-radius: 2rem;
      transition: 0.2s;
    }
    .cart-count {
      position: absolute;
      top: -6px;
      right: -8px;
      background: #2d68ff;
      color: white;
      font-weight: 700;
      font-size: 0.7rem;
      width: 18px;
      height: 18px;
      border-radius: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    /* hero section fresh */
    .hero-modern {
      background: radial-gradient(circle at 10% 30%, rgba(45,104,255,0.05), rgba(0,0,0,0) 70%),
                  linear-gradient(105deg, #0a0e1a 0%, #101624 100%);
      color: white;
      border-radius: 0 0 2rem 2rem;
      margin: 0 1rem 2rem 1rem;
      padding: 4rem 2rem;
      position: relative;
      overflow: hidden;
    }
    .hero-modern h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 3.2rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      max-width: 700px;
    }
    .hero-modern .hero-badge {
      background: rgba(255,255,255,0.12);
      backdrop-filter: blur(4px);
      border-radius: 2rem;
      padding: 0.3rem 1rem;
      display: inline-block;
      font-size: 0.8rem;
      margin-bottom: 1rem;
    }
    .btn-modern {
      background: white;
      color: #0a0e1a;
      border: none;
      padding: 0.8rem 2rem;
      border-radius: 2rem;
      font-weight: 600;
      transition: 0.2s;
      cursor: pointer;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }
    .btn-outline-light {
      background: transparent;
      border: 1.5px solid rgba(255,255,255,0.4);
      color: white;
    }

    /* category cards premium */
    .section-title {
      font-size: 1.8rem;
      font-weight: 700;
      font-family: 'Space Grotesk', sans-serif;
      margin-bottom: 0.5rem;
    }
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
      gap: 1.5rem;
      margin: 2rem 0;
    }
    .cat-card-glow {
      background: white;
      padding: 1.5rem 0.5rem;
      border-radius: 2rem;
      text-align: center;
      transition: all 0.25s ease;
      cursor: pointer;
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(0,0,0,0.02);
    }
    .cat-card-glow:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: rgba(45,104,255,0.2);
    }
    .cat-icon {
      font-size: 2.2rem;
      color: #2d68ff;
      margin-bottom: 0.7rem;
    }

    /* products glass 3d style */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
      gap: 2rem;
      margin-top: 2rem;
    }
    .product-card {
      background: white;
      border-radius: 1.5rem;
      overflow: hidden;
      transition: all 0.3s cubic-bezier(0.2, 0, 0, 1);
      box-shadow: 0 8px 20px rgba(0,0,0,0.02), 0 2px 4px rgba(0,0,0,0.02);
      border: 1px solid #eff2f8;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 30px 40px -20px rgba(0, 0, 0, 0.2);
      border-color: #dce3f0;
    }
    .product-img {
      width: 100%;
      height: 260px;
      object-fit: cover;
      transition: transform 0.5s;
    }
    .product-card:hover .product-img {
      transform: scale(1.03);
    }
    .product-info {
      padding: 1.2rem;
    }
    .price-new {
      font-weight: 800;
      font-size: 1.4rem;
      color: #121826;
    }
    .price-old {
      text-decoration: line-through;
      color: #8e9aaf;
      font-size: 0.9rem;
    }
    .rating {
      color: #f5b042;
      letter-spacing: 2px;
    }
    .btn-add {
      background: #121826;
      border: none;
      color: white;
      border-radius: 2rem;
      padding: 0.6rem 1rem;
      font-weight: 600;
      width: 100%;
      cursor: pointer;
      transition: 0.2s;
    }
    .btn-add:hover {
      background: #2d68ff;
    }

    /* flash sale premium */
    .flash-sale {
      background: linear-gradient(115deg, #f4f9ff, #ffffff);
      border-radius: 2rem;
      padding: 2rem;
      margin: 2rem 0;
      display: flex;
      flex-wrap: wrap;
      gap: 2rem;
      align-items: center;
      border: 1px solid rgba(45,104,255,0.2);
    }
    .sale-img {
      flex: 1.2;
      border-radius: 1.5rem;
      overflow: hidden;
    }
    .sale-img img {
      width: 100%;
      height: 280px;
      object-fit: cover;
    }
    .sale-content {
      flex: 1;
    }
    .timer-modern {
      display: flex;
      gap: 1rem;
      margin: 1.5rem 0;
    }
    .time-unit {
      background: #121826;
      color: white;
      border-radius: 1rem;
      padding: 0.8rem 1.2rem;
      text-align: center;
      min-width: 70px;
    }

    /* testimonial carousel */
    .testimonial-scroll {
      display: flex;
      gap: 1.5rem;
      overflow-x: auto;
      padding: 1rem 0.2rem 2rem;
      scrollbar-width: thin;
    }
    .testi-card {
      background: white;
      border-radius: 1.5rem;
      min-width: 300px;
      padding: 1.5rem;
      box-shadow: var(--shadow-sm);
    }

    /* newsletter innovative */
    .newsletter-block {
      background: linear-gradient(125deg, #121826 0%, #1f2a44 100%);
      border-radius: 2rem;
      padding: 3rem;
      text-align: center;
      color: white;
    }
    .newsletter-block input {
      background: rgba(255,255,255,0.12);
      border: none;
      padding: 1rem 1.5rem;
      border-radius: 3rem;
      width: 280px;
      color: white;
      outline: none;
    }
    .footer-modern {
      background: #fafcff;
      border-top: 1px solid #eef2f9;
      padding: 3rem 0;
      margin-top: 2rem;
    }
    .mobile-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 1.4rem;
    }
    @media (max-width: 880px) {
      .main-nav { display: none; }
      .mobile-toggle { display: block; }
      .hero-modern h1 { font-size: 2rem; }
      .products-grid { grid-template-columns: repeat(auto-fill, minmax(240px, 1fr)); }
    }
    @media (max-width: 640px) {
      .container { padding: 0 1rem; }
      .flash-sale { flex-direction: column; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display: flex; align-items: center; gap: 1rem;">
      <button class="mobile-toggle" id="mobileMenuToggle"><i class="fas fa-bars"></i></button>
      <div class="brand">VELORA<span>.</span></div>
    </div>
    <nav class="main-nav">
      <ul>
        <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
        <li><a href="#categories"><i class="fas fa-layer-group"></i> Categories</a></li>
        <li><a href="#trending"><i class="fas fa-bolt"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-gem"></i> Flash</a></li>
      </ul>
    </nav>
    <div style="display: flex; gap: 1rem; align-items: center;">
      <div class="search-group">
        <i class="fas fa-search" style="color:#8a99b0;"></i>
        <input type="text" id="searchInput" placeholder="Search products...">
      </div>
      <div class="header-actions">
        <i class="far fa-heart" style="font-size: 1.2rem;"></i>
        <div class="cart-icon" id="cartBtn">
          <i class="fas fa-bag-shopping"></i>
          <span class="cart-count" id="cartCountDisplay">0</span>
        </div>
      </div>
    </div>
  </div>
  <!-- mobile drawer -->
  <div id="mobileDrawer" style="display: none; background: white; border-top: 1px solid #eee; padding: 1rem;">
    <ul style="list-style: none; display: flex; flex-direction: column; gap: 1rem;">
      <li><a href="#">Home</a></li>
      <li><a href="#categories">Categories</a></li>
      <li><a href="#trending">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
    </ul>
  </div>
</header>

<main>
  <!-- Hero 2.0 -->
  <div class="hero-modern container" style="margin-bottom: 2rem;">
    <div class="hero-badge"><i class="fas fa-fire"></i> limited winter drop</div>
    <h1>Beyond the ordinary. <br>Style meets intelligence.</h1>
    <p style="max-width: 500px; opacity: 0.85; margin: 1.2rem 0 2rem;">Discover curated selections, exclusive pricing & premium quality.</p>
    <div style="display: flex; gap: 1rem;">
      <button class="btn-modern" id="shopNowBtn">Shop Now <i class="fas fa-arrow-right"></i></button>
      <button class="btn-modern btn-outline-light" id="exploreDealsBtn">Explore Drops</button>
    </div>
  </div>

  <div class="container" id="categories">
    <div class="section-title">Shop by <span style="color: #2d68ff;">Vibes</span></div>
    <p class="muted-text" style="color:#5f6c80;">Inspired categories for your next upgrade</p>
    <div class="categories-grid" id="categoriesGrid"></div>
  </div>

  <div class="container" id="trending">
    <div class="section-title">✨ Curated for you</div>
    <p class="muted-text">Most loved picks from our community</p>
    <div class="products-grid" id="productsGrid"></div>
  </div>

  <!-- Flash sale premium  -->
  <div class="container" id="deals">
    <div class="flash-sale">
      <div class="sale-img">
        <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="HyperBoost X">
      </div>
      <div class="sale-content">
        <span style="background: #2d68ff10; padding: 5px 12px; border-radius: 30px; font-weight: 600; color:#2d68ff;">⚡ flash deal</span>
        <h2 style="font-size: 1.8rem; margin: 0.5rem 0;">HyperBoost X1</h2>
        <p>Next‑gen performance, ultra-light design. Limited quantity.</p>
        <div class="timer-modern" id="timerContainer">
          <div class="time-unit"><span id="dealDays">00</span><br><small>Days</small></div>
          <div class="time-unit"><span id="dealHours">00</span><br><small>Hrs</small></div>
          <div class="time-unit"><span id="dealMinutes">00</span><br><small>Mins</small></div>
          <div class="time-unit"><span id="dealSeconds">00</span><br><small>Sec</small></div>
        </div>
        <div style="display: flex; gap: 1rem; align-items: baseline;"><span class="price-new" style="font-size: 2rem;">$899</span> <span style="text-decoration: line-through; color:#6c7a91;">$1299</span><span style="background:#2d68ff20; padding:4px 12px; border-radius: 50px; font-weight: 700;">-30%</span></div>
        <button class="btn-modern" id="flashDealBtn" style="background: #121826; color: white; margin-top: 1rem;">Add to Bag <i class="fas fa-bolt"></i></button>
      </div>
    </div>
  </div>

  <!-- testimonials fresh -->
  <div class="container">
    <div class="section-title">Trusted voices</div>
    <div class="testimonial-scroll" id="testimonialsSection">
      <!-- dynamic but static for extra polish -->
    </div>
  </div>

  <!-- newsletter modern -->
  <div class="container" style="margin: 2rem auto;">
    <div class="newsletter-block">
      <i class="fas fa-envelope-open-text" style="font-size: 2rem; margin-bottom: 1rem;"></i>
      <h3>Join the cult⸱ure</h3>
      <p>Get early access to drops & 10% off first order</p>
      <form id="newsletterFormModern" style="display: flex; flex-wrap: wrap; justify-content: center; gap: 0.5rem; margin-top: 1rem;">
        <input type="email" id="newsEmail" placeholder="your@email.com" required>
        <button type="submit" class="btn-modern" style="background: white; color:#121826;">Subscribe</button>
      </form>
      <div id="newsMsg" style="margin-top: 12px; font-size: 0.8rem;"></div>
    </div>
  </div>
</main>

<footer class="footer-modern">
  <div class="container" style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 2rem;">
    <div><div class="brand" style="font-size: 1.7rem;">VELORA.</div><p style="color:#5f6c80; max-width: 260px;">Elevate your everyday — premium goods, seamless experience.</p></div>
    <div style="display: flex; gap: 3rem;"><div><strong>Explore</strong><br>New Arrivals<br>Best Sellers<br>Gift Guide</div><div><strong>Support</strong><br>FAQs<br>Returns<br>Contact</div></div>
  </div>
  <div class="container" style="text-align: center; margin-top: 2rem; color:#8892a5;">© 2025 Velora — minimal & bold</div>
</footer>

<script>
  // ---------- DATA (Enhanced with better images & names) ----------
  const CATEGORIES_DATA = [
    { id: "wear", name: "Wearables", icon: "fa-watch" },
    { id: "audio", name: "Audio", icon: "fa-headphones" },
    { id: "studio", name: "Studio", icon: "fa-camera" },
    { id: "kitchen", name: "Kitchen", icon: "fa-utensils" },
    { id: "gaming", name: "Gaming", icon: "fa-gamepad" },
    { id: "essentials", name: "Essentials", icon: "fa-bag-shopping" }
  ];

  const PRODUCTS_LIST = [
    { id: 101, title: "AetherPods Pro", price: 249, oldPrice: 329, rating: 4.8, reviews: 242, img: "https://images.unsplash.com/photo-1606220588913-b3aacb4d2f46?auto=format&fit=crop&w=600&q=80", category: "Audio", badge: "🔥 Bestseller" },
    { id: 102, title: "Orbit Smartwatch", price: 379, oldPrice: 499, rating: 4.9, reviews: 189, img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80", category: "Wearables", badge: "NEW" },
    { id: 103, title: "Canvas Laptop Sleeve", price: 59, oldPrice: 89, rating: 4.5, reviews: 76, img: "https://images.unsplash.com/photo-1547949003-9792a18a2601?auto=format&fit=crop&w=600&q=80", category: "Essentials" },
    { id: 104, title: "Fusion Keyboard", price: 129, rating: 4.7, reviews: 112, img: "https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=600&q=80", category: "Gaming", badge: "Gamer choice" },
    { id: 105, title: "NeoBlend Station", price: 189, oldPrice: 259, rating: 4.6, reviews: 58, img: "https://images.unsplash.com/photo-1570222094114-d054a817e56b?auto=format&fit=crop&w=600&q=80", category: "Kitchen" },
    { id: 106, title: "Studio Mic X1", price: 159, rating: 4.9, reviews: 204, img: "https://images.unsplash.com/photo-1590602847861-f357a9332bbc?auto=format&fit=crop&w=600&q=80", category: "Studio" },
    { id: 107, title: "Lumina Glass Flask", price: 45, oldPrice: 65, rating: 4.4, reviews: 93, img: "https://images.unsplash.com/photo-1602143407151-7111542de6e8?auto=format&fit=crop&w=600&q=80", category: "Essentials" },
    { id: 108, title: "Wireless Earbuds ZEN", price: 99, rating: 4.7, reviews: 312, img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80", category: "Audio", badge: "SALE" }
  ];

  let cartItemsCount = 0;
  const cartCountSpan = document.getElementById('cartCountDisplay');
  const productsContainer = document.getElementById('productsGrid');
  const categoriesContainer = document.getElementById('categoriesGrid');
  const searchInputElem = document.getElementById('searchInput');

  // Helper render categories
  function renderCategories() {
    categoriesContainer.innerHTML = '';
    CATEGORIES_DATA.forEach(cat => {
      const card = document.createElement('div');
      card.className = 'cat-card-glow';
      card.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><small style="color:#6c7a91;">shop now</small>`;
      card.addEventListener('click', () => {
        searchInputElem.value = cat.name;
        filterProducts(cat.name);
        document.getElementById('trending').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      categoriesContainer.appendChild(card);
    });
  }

  function renderProducts(productArray) {
    productsContainer.innerHTML = '';
    productArray.forEach(p => {
      const productDiv = document.createElement('div');
      productDiv.className = 'product-card';
      const badgeHtml = p.badge ? `<span style="position: absolute; background: #2d68ff; color:white; padding: 0.2rem 0.8rem; border-radius: 2rem; font-size: 0.7rem; font-weight: 600; margin: 0.7rem;">${p.badge}</span>` : '';
      productDiv.style.position = 'relative';
      productDiv.innerHTML = `
        ${badgeHtml}
        <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-info">
          <h4 style="margin-bottom: 0.3rem;">${p.title}</h4>
          <div class="rating">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 ? '½' : ''} <span style="color:#8e9aaf;">(${p.reviews})</span></div>
          <div style="display: flex; gap: 0.5rem; align-items: baseline; margin: 0.7rem 0;">
            <span class="price-new">$${p.price.toLocaleString()}</span>
            ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
          </div>
          <button class="btn-add" data-id="${p.id}"><i class="fas fa-shopping-cart"></i> Quick add</button>
        </div>
      `;
      productsContainer.appendChild(productDiv);
    });
    // Attach add to cart events
    document.querySelectorAll('.btn-add').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = parseInt(btn.dataset.id);
        const product = PRODUCTS_LIST.find(prod => prod.id === id);
        if (product) {
          cartItemsCount++;
          cartCountSpan.innerText = cartItemsCount;
          const originalText = btn.innerHTML;
          btn.innerHTML = '<i class="fas fa-check"></i> Added';
          btn.style.background = "#28a745";
          setTimeout(() => {
            btn.innerHTML = originalText;
            btn.style.background = "#121826";
          }, 1000);
          // micro animation feedback
        }
      });
    });
  }

  function filterProducts(query) {
    const q = query.trim().toLowerCase();
    if (q === "") {
      renderProducts(PRODUCTS_LIST);
      return;
    }
    const filtered = PRODUCTS_LIST.filter(prod => prod.title.toLowerCase().includes(q) || prod.category.toLowerCase().includes(q));
    renderProducts(filtered);
  }

  // countdown timer
  function initDealTimer() {
    const targetTime = new Date().getTime() + (27 * 3600 * 1000) + (15 * 60 * 1000);
    const timerInterval = setInterval(() => {
      const now = new Date().getTime();
      const diff = targetTime - now;
      if (diff <= 0) {
        document.getElementById('dealDays').innerText = "00";
        document.getElementById('dealHours').innerText = "00";
        document.getElementById('dealMinutes').innerText = "00";
        document.getElementById('dealSeconds').innerText = "00";
        clearInterval(timerInterval);
        return;
      }
      const days = Math.floor(diff / (1000 * 60 * 60 * 24));
      const hours = Math.floor((diff % (86400000)) / (3600000));
      const mins = Math.floor((diff % 3600000) / 60000);
      const secs = Math.floor((diff % 60000) / 1000);
      document.getElementById('dealDays').innerText = days < 10 ? '0'+days : days;
      document.getElementById('dealHours').innerText = hours < 10 ? '0'+hours : hours;
      document.getElementById('dealMinutes').innerText = mins < 10 ? '0'+mins : mins;
      document.getElementById('dealSeconds').innerText = secs < 10 ? '0'+secs : secs;
    }, 1000);
  }

  // testimonial cards dynamic
  function loadTestimonials() {
    const testimonialsData = [
      { name: "Elena R.", text: "Absolutely stunning quality! The design is next level — fast delivery.", rating: 5, avatar: "https://randomuser.me/api/portraits/women/44.jpg" },
      { name: "Marcus L.", text: "Best customer experience and the products are premium. Loved it!", rating: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" },
      { name: "Sophia Chen", text: "Flash sale was insane. Will definitely buy again. 10/10", rating: 4.9, avatar: "https://randomuser.me/api/portraits/women/68.jpg" }
    ];
    const containerTesti = document.getElementById('testimonialsSection');
    containerTesti.innerHTML = '';
    testimonialsData.forEach(t => {
      const stars = '★'.repeat(Math.floor(t.rating)) + (t.rating % 1 ? '½' : '');
      const div = document.createElement('div');
      div.className = 'testi-card';
      div.innerHTML = `<div class="rating">${stars}</div><p style="margin: 0.5rem 0;">“${t.text}”</p><div style="display: flex; align-items: center; gap: 0.6rem; margin-top: 1rem;"><div style="background:#ddd; width: 38px; height: 38px; border-radius: 50%; background-image: url(${t.avatar}); background-size: cover;"></div><div><strong>${t.name}</strong><br><small style="color:#6f7c93;">verified</small></div></div>`;
      containerTesti.appendChild(div);
    });
  }

  // mobile menu
  const toggleBtn = document.getElementById('mobileMenuToggle');
  const drawer = document.getElementById('mobileDrawer');
  toggleBtn?.addEventListener('click', () => {
    if (drawer.style.display === 'none' || getComputedStyle(drawer).display === 'none') drawer.style.display = 'block';
    else drawer.style.display = 'none';
  });

  // event handlers
  document.getElementById('shopNowBtn')?.addEventListener('click', () => document.getElementById('trending').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('exploreDealsBtn')?.addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('flashDealBtn')?.addEventListener('click', () => {
    cartItemsCount++;
    cartCountSpan.innerText = cartItemsCount;
    alert('🔥 HyperBoost X1 added to cart');
  });
  document.getElementById('cartBtn')?.addEventListener('click', () => alert(`Cart contains ${cartItemsCount} item(s)`));
  
  // search events
  document.getElementById('searchInput')?.addEventListener('keyup', (e) => filterProducts(e.target.value));
  // newsletter modern
  const newsForm = document.getElementById('newsletterFormModern');
  const newsMsgDiv = document.getElementById('newsMsg');
  newsForm?.addEventListener('submit', (e) => {
    e.preventDefault();
    const email = document.getElementById('newsEmail').value.trim();
    if (email.includes('@') && email.includes('.')) {
      newsMsgDiv.innerHTML = '✨ Thanks! Welcome to Velora.';
      newsMsgDiv.style.color = "#caf0f8";
      document.getElementById('newsEmail').value = '';
      setTimeout(() => newsMsgDiv.innerHTML = '', 2500);
    } else {
      newsMsgDiv.innerHTML = 'Please provide a valid email.';
      newsMsgDiv.style.color = "#ffb3b3";
    }
  });

  // initial load
  renderCategories();
  renderProducts(PRODUCTS_LIST);
  initDealTimer();
  loadTestimonials();
  cartCountSpan.innerText = cartItemsCount;
</script>
</body>
</html>
