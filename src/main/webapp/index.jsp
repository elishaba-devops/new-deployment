<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop Premium</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    :root {
      --bg: #f4f7fb;
      --primary: #0f172a;
      --secondary: #1e293b;
      --accent: #38bdf8;
      --accent-hover: #0ea5e9;
      --gold: #f59e0b;
      --muted: #64748b;
      --card: rgba(255,255,255,0.88);
      --surface: #e2e8f0;
      --success: #22c55e;
      --danger: #ef4444;
      --radius: 20px;
      --shadow: 0 10px 30px rgba(15, 23, 42, 0.08);
      --container: 1280px;
    }

    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: Inter, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      overflow-x: hidden;
    }

    img { max-width: 100%; display: block; }
    a { text-decoration: none; color: inherit; }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: auto;
      padding: 0 20px;
    }

    .promo-bar {
      background: linear-gradient(90deg, var(--accent), var(--accent-hover));
      color: white;
      text-align: center;
      padding: 10px;
      font-weight: 600;
      font-size: 14px;
    }

    header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(255,255,255,0.78);
      backdrop-filter: blur(16px);
      border-bottom: 1px solid rgba(255,255,255,0.3);
      box-shadow: 0 4px 20px rgba(0,0,0,0.04);
    }

    .header-inner {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 16px 0;
      gap: 20px;
    }

    .brand {
      font-family: Poppins, sans-serif;
      font-size: 28px;
      font-weight: 800;
    }

    .brand span { color: var(--accent); }

    nav ul {
      display: flex;
      gap: 20px;
      list-style: none;
    }

    nav a {
      font-weight: 600;
      padding: 10px 14px;
      border-radius: 12px;
      transition: 0.3s;
    }

    nav a:hover {
      background: var(--surface);
      color: var(--accent-hover);
    }

    .search-box {
      display: flex;
      align-items: center;
      background: white;
      padding: 12px 18px;
      border-radius: 999px;
      box-shadow: var(--shadow);
      min-width: 280px;
    }

    .search-box input {
      border: none;
      outline: none;
      width: 100%;
      font-size: 14px;
    }

    .header-actions {
      display: flex;
      gap: 16px;
      align-items: center;
    }

    .icon-btn {
      font-size: 20px;
      cursor: pointer;
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: -8px;
      right: -10px;
      background: var(--danger);
      color: white;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 11px;
      font-weight: 700;
    }

    .hero {
      min-height: 90vh;
      display: flex;
      align-items: center;
      text-align: center;
      color: white;
      background:
        linear-gradient(135deg, rgba(15,23,42,0.8), rgba(30,41,59,0.7)),
        url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1600&q=90') center/cover no-repeat;
      border-radius: 0 0 40px 40px;
    }

    .hero-content h1 {
      font-size: clamp(42px, 7vw, 78px);
      font-family: Poppins, sans-serif;
      margin-bottom: 20px;
      line-height: 1.1;
    }

    .hero-content p {
      font-size: 18px;
      max-width: 750px;
      margin: auto auto 30px;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 28px;
      border-radius: 999px;
      border: none;
      cursor: pointer;
      font-weight: 700;
      transition: all 0.3s ease;
    }

    .btn-primary {
      background: linear-gradient(135deg, var(--accent), var(--accent-hover));
      color: white;
      box-shadow: 0 10px 25px rgba(56,189,248,0.35);
    }

    .btn-primary:hover {
      transform: translateY(-4px);
    }

    .btn-secondary {
      background: rgba(255,255,255,0.15);
      color: white;
      border: 1px solid rgba(255,255,255,0.25);
    }

    .section {
      padding: 80px 0;
    }

    .section-title {
      text-align: center;
      margin-bottom: 50px;
    }

    .section-title h2 {
      font-size: 42px;
      margin-bottom: 10px;
    }

    .section-title p {
      color: var(--muted);
    }

    .categories-grid,
    .products-grid {
      display: grid;
      gap: 24px;
    }

    .categories-grid {
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    }

    .products-grid {
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    }

    .cat-card,
    .product-card,
    .testimonial-card {
      background: var(--card);
      backdrop-filter: blur(14px);
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      transition: all 0.35s ease;
    }

    .cat-card {
      padding: 30px 20px;
      text-align: center;
    }

    .cat-card:hover,
    .product-card:hover,
    .testimonial-card:hover {
      transform: translateY(-10px);
    }

    .cat-card i {
      font-size: 38px;
      color: var(--accent);
      margin-bottom: 15px;
    }

    .product-card {
      overflow: hidden;
      position: relative;
    }

    .product-card img {
      height: 260px;
      width: 100%;
      object-fit: cover;
      transition: 0.4s;
    }

    .product-card:hover img {
      transform: scale(1.08);
    }

    .product-info {
      padding: 20px;
    }

    .product-info h3 {
      font-size: 20px;
      margin-bottom: 8px;
    }

    .price {
      color: var(--accent-hover);
      font-size: 24px;
      font-weight: 800;
    }

    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      margin-left: 10px;
    }

    .rating {
      color: var(--gold);
      margin: 12px 0;
    }

    .deal-section {
      background: linear-gradient(135deg, var(--primary), var(--secondary));
      color: white;
      border-radius: 30px;
      overflow: hidden;
      display: grid;
      grid-template-columns: 1fr 1fr;
      align-items: center;
    }

    .deal-content {
      padding: 50px;
    }

    .timer {
      display: flex;
      gap: 15px;
      margin: 25px 0;
    }

    .time-box {
      background: rgba(255,255,255,0.12);
      padding: 15px;
      border-radius: 14px;
      min-width: 80px;
      text-align: center;
    }

    .newsletter {
      text-align: center;
      background: linear-gradient(135deg, var(--primary), var(--secondary));
      color: white;
      padding: 70px 30px;
      border-radius: 30px;
    }

    .newsletter form {
      margin-top: 25px;
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }

    .newsletter input {
      padding: 14px 20px;
      border-radius: 999px;
      border: none;
      min-width: 320px;
    }

    footer {
      padding: 60px 0 30px;
      color: var(--muted);
    }

    .footer-grid {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 30px;
    }

    .scroll-reveal {
      opacity: 0;
      transform: translateY(30px);
      transition: all 0.8s ease;
    }

    .scroll-reveal.active {
      opacity: 1;
      transform: translateY(0);
    }

    @media (max-width: 900px) {
      nav { display: none; }
      .deal-section { grid-template-columns: 1fr; }
      .hero-content h1 { font-size: 48px; }
    }

    @media (max-width: 600px) {
      .search-box { display: none; }
      .hero-content h1 { font-size: 38px; }
      .section-title h2 { font-size: 32px; }
    }
  </style>
</head>
<body>

<div class="promo-bar">Free Shipping on Orders Above $50 | Limited Summer Deals Live Now</div>

<header>
  <div class="container header-inner">
    <div class="brand">Nexus<span>Shop</span></div>
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Products</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </nav>
    <div class="search-box">
      <input type="text" placeholder="Search premium products...">
      <i class="fas fa-search"></i>
    </div>
    <div class="header-actions">
      <div class="icon-btn"><i class="far fa-user"></i></div>
      <div class="icon-btn"><i class="far fa-heart"></i></div>
      <div class="icon-btn">
        <i class="fas fa-shopping-cart"></i>
        <span class="cart-count" id="cartCount">0</span>
      </div>
    </div>
  </div>
</header>

<section class="hero">
  <div class="container hero-content">
    <h1>Elevate Your Shopping Experience</h1>
    <p>Discover premium fashion, cutting-edge gadgets, and exclusive accessories curated for modern lifestyles.</p>
    <div>
      <button class="btn btn-primary">Shop Now</button>
      <button class="btn btn-secondary">Explore Deals</button>
    </div>
  </div>
</section>

<section class="section" id="categories">
  <div class="container">
    <div class="section-title">
      <h2>Shop by Category</h2>
      <p>Explore our curated premium collections</p>
    </div>
    <div class="categories-grid">
      <div class="cat-card scroll-reveal"><i class="fas fa-mobile-alt"></i><h3>Smartphones</h3></div>
      <div class="cat-card scroll-reveal"><i class="fas fa-laptop"></i><h3>Laptops</h3></div>
      <div class="cat-card scroll-reveal"><i class="fas fa-headphones"></i><h3>Audio</h3></div>
      <div class="cat-card scroll-reveal"><i class="fas fa-tshirt"></i><h3>Fashion</h3></div>
      <div class="cat-card scroll-reveal"><i class="fas fa-shoe-prints"></i><h3>Footwear</h3></div>
      <div class="cat-card scroll-reveal"><i class="fas fa-watch"></i><h3>Accessories</h3></div>
    </div>
  </div>
</section>

<section class="section" id="products">
  <div class="container">
    <div class="section-title">
      <h2>Trending Products</h2>
      <p>Top-rated premium products customers love</p>
    </div>
    <div class="products-grid">
      <div class="product-card scroll-reveal">
        <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=800&q=80" alt="iPhone">
        <div class="product-info">
          <h3>iPhone 15 Pro Max</h3>
          <div><span class="price">$1199</span><span class="old-price">$1299</span></div>
          <div class="rating">★★★★★</div>
          <button class="btn btn-primary add-cart">Add to Cart</button>
        </div>
      </div>

      <div class="product-card scroll-reveal">
        <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=800&q=80" alt="Macbook">
        <div class="product-info">
          <h3>MacBook Pro M3</h3>
          <div><span class="price">$2099</span></div>
          <div class="rating">★★★★★</div>
          <button class="btn btn-primary add-cart">Add to Cart</button>
        </div>
      </div>

      <div class="product-card scroll-reveal">
        <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80" alt="Nike">
        <div class="product-info">
          <h3>Nike Air Max</h3>
          <div><span class="price">$199</span><span class="old-price">$249</span></div>
          <div class="rating">★★★★☆</div>
          <button class="btn btn-primary add-cart">Add to Cart</button>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="section" id="deals">
  <div class="container">
    <div class="deal-section scroll-reveal">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal Product">
      <div class="deal-content">
        <h2>Flash Sale: MacBook Air M3</h2>
        <p>Ultra-thin performance powerhouse with limited-time pricing.</p>
        <div class="timer">
          <div class="time-box"><div id="days">1</div><small>Days</small></div>
          <div class="time-box"><div id="hours">12</div><small>Hours</small></div>
          <div class="time-box"><div id="minutes">45</div><small>Minutes</small></div>
        </div>
        <div class="price">$999 <span class="old-price">$1299</span></div>
        <br>
        <button class="btn btn-primary">Buy Now</button>
      </div>
    </div>
  </div>
</section>

<section class="section">
  <div class="container">
    <div class="newsletter scroll-reveal">
      <h2>Stay Updated</h2>
      <p>Get exclusive offers, product launches, and members-only deals.</p>
      <form>
        <input type="email" placeholder="Enter your email">
        <button class="btn btn-primary">Subscribe</button>
      </form>
    </div>
  </div>
</section>

<footer id="contact">
  <div class="container footer-grid">
    <div>
      <h3>NexusShop</h3>
      <p>Modern premium shopping for the next generation.</p>
    </div>
    <div>
      <h4>Company</h4>
      <p>About<br>Careers<br>Support</p>
    </div>
    <div>
      <h4>Follow Us</h4>
      <p><i class="fab fa-facebook"></i> Facebook<br><i class="fab fa-instagram"></i> Instagram</p>
    </div>
  </div>
  <div style="text-align:center; margin-top:30px;">© 2026 NexusShop. All rights reserved.</div>
</footer>

<script>
  let cart = 0;
  const cartCount = document.getElementById('cartCount');

  document.querySelectorAll('.add-cart').forEach(button => {
    button.addEventListener('click', () => {
      cart++;
      cartCount.textContent = cart;
      button.textContent = 'Added ✓';
      setTimeout(() => button.textContent = 'Add to Cart', 1200);
    });
  });

  function revealOnScroll() {
    document.querySelectorAll('.scroll-reveal').forEach(el => {
      const top = el.getBoundingClientRect().top;
      if (top < window.innerHeight - 80) {
        el.classList.add('active');
      }
    });
  }

  window.addEventListener('scroll', revealOnScroll);
  revealOnScroll();

  const target = new Date().getTime() + (36 * 60 * 60 * 1000);
  setInterval(() => {
    const now = new Date().getTime();
    const diff = target - now;
    const days = Math.floor(diff / (1000 * 60 * 60 * 24));
    const hours = Math.floor((diff / (1000 * 60 * 60)) % 24);
    const minutes = Math.floor((diff / (1000 * 60)) % 60);

    document.getElementById('days').textContent = days;
    document.getElementById('hours').textContent = hours;
    document.getElementById('minutes').textContent = minutes;
  }, 1000);
</script>

</body>
</html>
