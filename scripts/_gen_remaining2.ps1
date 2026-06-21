
$dir = "C:\Users\Dell\Documents\EnviEstudos"
$enc = New-Object System.Text.UTF8Encoding($false)

function W($name, $html) {
    [System.IO.File]::WriteAllText("$dir\$name", $html, $enc)
    Write-Host "OK: $name"
}

$NAV = '<nav class="navbar solid" role="navigation" aria-label="Main navigation"><div class="nav-inner"><a href="index.html" class="nav-logo" aria-label="Home"><img src="logo/logo.svg" alt="Enviestudos Logo" /><div class="nav-logo-text"><span class="nav-logo-name">ENVIESTUDOS</span><span class="nav-logo-tagline" data-i18n="nav.tagline">Consultoria Ambiental &amp; Servi&ccedil;os</span></div></a><ul class="nav-links" role="list"><li><a href="index.html" data-i18n="nav.home">Home</a></li><li><a href="about.html" data-i18n="nav.about">About</a></li><li><a href="services.html" data-i18n="nav.services">Services</a></li><li><a href="projects.html" class="active" data-i18n="nav.projects">Projects</a></li><li><a href="contact.html" data-i18n="nav.contact">Contact</a></li></ul><div class="nav-lang"><a href="contact.html" class="btn btn-primary nav-cta" data-i18n="nav.quote">Get a Quote</a><button class="lang-toggle" aria-label="Switch language"><span class="lang-flag">&#127760;</span><span data-i18n="lang.switch">PT</span></button></div><button class="nav-hamburger" aria-label="Toggle menu" aria-expanded="false"><span></span><span></span><span></span></button></div></nav><div class="mobile-nav" role="dialog" aria-label="Mobile navigation"><a href="index.html" data-i18n="nav.home">Home</a><a href="about.html" data-i18n="nav.about">About</a><a href="services.html" data-i18n="nav.services">Services</a><a href="projects.html" class="active" data-i18n="nav.projects">Projects</a><a href="contact.html" data-i18n="nav.contact">Contact</a><a href="contact.html" class="btn btn-primary" data-i18n="nav.consultation">Get a Consultation</a><button class="lang-toggle"><span class="lang-flag">&#127760;</span><span data-i18n="lang.switch">PT</span></button></div>'

$FOOT = '<footer role="contentinfo"><div class="container"><div class="footer-grid"><div class="footer-brand"><a href="index.html" class="nav-logo"><img src="logo/logo.svg" alt="Enviestudos Logo" style="height:40px;" /><div class="nav-logo-text"><span class="nav-logo-name">ENVIESTUDOS</span><span class="nav-logo-tagline" data-i18n="nav.tagline">Consultoria Ambiental &amp; Servi&ccedil;os</span></div></a><p data-i18n="footer.brand.desc">Pragmatic environmental solutions for sustainable development in Mozambique.</p></div><div class="footer-col"><h5 data-i18n="footer.col.services">Services</h5><ul class="footer-links"><li><a href="service-esia.html" data-i18n="footer.link.esia">Environmental Impact Assessment</a></li><li><a href="service-audit.html" data-i18n="footer.link.audits">Environmental Audits</a></li><li><a href="service-monitoring.html" data-i18n="footer.link.supervision">Supervision</a></li><li><a href="service-rap.html" data-i18n="footer.link.rap">Resettlement Plans</a></li></ul></div><div class="footer-col"><h5 data-i18n="footer.col.company">Company</h5><ul class="footer-links"><li><a href="about.html" data-i18n="footer.link.about">About Us</a></li><li><a href="projects.html" data-i18n="footer.link.projects">Projects</a></li><li><a href="contact.html" data-i18n="footer.link.contact">Contact</a></li></ul></div><div class="footer-col"><h5 data-i18n="footer.col.contact">Contact</h5><div class="footer-contact-items"><div class="footer-contact-item"><svg viewBox="0 0 24 24"><path d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/><path d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/></svg>Rua Viana da Mota NR.72, Maputo</div><div class="footer-contact-item"><svg viewBox="0 0 24 24"><path d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"/></svg>+258 82/84 3289330</div></div></div></div><div class="footer-bottom"><p class="footer-copy"><span data-i18n="footer.copy">&copy; 2025 Enviestudos, Consultoria Ambiental &amp; Servi&ccedil;os, Lda.</span></p><div class="footer-legal"><a href="#" data-i18n="footer.privacy">Privacy Policy</a><a href="#" data-i18n="footer.terms">Terms of Use</a></div></div></div></footer><div class="whatsapp-float" aria-label="Chat on WhatsApp"><span class="whatsapp-tooltip" data-i18n="wa.tooltip">Chat with us</span><a href="#" class="whatsapp-float-btn" data-wa data-i18n-aria="wa.chat"><svg viewBox="0 0 24 24" aria-hidden="true"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/></svg></a></div><button class="back-top" aria-label="Back to top"><svg viewBox="0 0 24 24" aria-hidden="true"><path d="M5 15l7-7 7 7" stroke="white" stroke-width="2.5" fill="none" stroke-linecap="round"/></svg></button><script src="js/main.js"></script><script src="js/i18n.js"></script>'

$HEAD = '<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />
'

$HEADEND = '<link rel="preconnect" href="https://fonts.googleapis.com" /><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
</head><body>'

$CTA = '<section class="cta-section section-pad"><div class="container"><div class="cta-inner reveal"><div class="section-label" data-i18n="proj.cta.label">Let''s Work Together</div><h2 data-i18n="proj.cta.title">Ready to Add Your Project to Our Portfolio?</h2><p data-i18n="proj.cta.desc">Contact us today to discuss your project''s environmental requirements.</p><div class="cta-actions"><a href="contact.html" class="btn btn-primary" data-i18n="proj.cta.btn1">Start a Conversation</a><a href="projects.html" class="btn btn-outline" data-i18n="proj.detail.all">All Projects</a></div></div></div></section>'

$SVGEIA = '<svg viewBox="0 0 24 24"><path d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"/></svg>'
$SVGSUP = '<svg viewBox="0 0 24 24"><path d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg>'

function Hero($pNum, $labelEN, $labelPT, $yr, $prov, $cl, $fund, $bc) {
    return @"
<header class="page-hero"><div class="container"><div class="page-hero-content">
  <div class="page-hero-label"><span class="lang-en">$labelEN</span><span class="lang-pt">$labelPT</span></div>
  <h1 data-i18n="proj.p$pNum.title"></h1>
  <div class="proj-hero-meta">
    <div class="proj-hero-meta-item"><span class="proj-hero-meta-label" data-i18n="proj.detail.year">Year</span><span class="proj-hero-meta-value">$yr</span></div>
    <div class="proj-hero-meta-item"><span class="proj-hero-meta-label" data-i18n="proj.detail.province">Province</span><span class="proj-hero-meta-value">$prov</span></div>
    <div class="proj-hero-meta-item"><span class="proj-hero-meta-label" data-i18n="proj.detail.client">Client</span><span class="proj-hero-meta-value">$cl</span></div>
    <div class="proj-hero-meta-item"><span class="proj-hero-meta-label" data-i18n="proj.detail.funder">Funder</span><span class="proj-hero-meta-value">$fund</span></div>
  </div>
  <nav class="breadcrumb" aria-label="Breadcrumb" style="margin-top:1.5rem;">
    <a href="index.html" data-i18n="bc.home">Home</a><span>&rsaquo;</span>
    <a href="projects.html" data-i18n="nav.projects">Projects</a><span>&rsaquo;</span>
    <span>$bc</span>
  </nav>
</div></div></header>
"@
}

function Sidebar($sec, $yr, $prov, $cl, $fund, $svd, $links) {
    return @"
<aside class="detail-sidebar reveal reveal-delay-2">
  <div class="sidebar-card">
    <div class="sidebar-card-title" data-i18n="proj.detail.details">Project Details</div>
    <div class="sidebar-row"><span class="sidebar-row-label" data-i18n="proj.detail.sector">Sector</span><span class="sidebar-row-value">$sec</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label" data-i18n="proj.detail.year">Year</span><span class="sidebar-row-value">$yr</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label" data-i18n="proj.detail.province">Province</span><span class="sidebar-row-value">$prov</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label" data-i18n="proj.detail.client">Client</span><span class="sidebar-row-value">$cl</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label" data-i18n="proj.detail.funder">Funder</span><span class="sidebar-row-value">$fund</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label" data-i18n="proj.detail.svc-del">Services Delivered</span><span class="sidebar-row-value">$svd</span></div>
  </div>
  <div class="sidebar-card">
    <div class="sidebar-card-title" data-i18n="proj.detail.svc-links">Related Services</div>
    <div class="sidebar-links">$links</div>
  </div>
</aside>
"@
}

function RelSection($cards) {
    return @"
<section class="section-pad" style="background:var(--clr-light-bg);"><div class="container">
  <div class="text-center reveal"><div class="section-label" data-i18n="proj.detail.more">More Projects</div><h2 class="section-title" data-i18n="proj.detail.related">Related Case Studies</h2></div>
  <div class="related-grid" style="margin-top:2rem;">$cards</div>
</div></section>
"@
}

function RC($href, $label, $h4, $p) {
    return "<a href=`"$href`" class=`"related-card reveal`"><span class=`"related-card-label`">$label</span><h4>$h4</h4><p>$p</p><span class=`"related-card-arrow`" data-i18n=`"proj.detail.view`">View Project &rarr;</span></a>"
}

# ─────────────────────────────────────────────────────────────────────────────
# Project 12 – Alto Molocue Rural Electrification
# ─────────────────────────────────────────────────────────────────────────────
$body12 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos prepared the ESIA for a rural electrification project in Alto Molocue District, Zambezia Province, financed by the Indian Bank (EXIM Bank of India) and implemented by Mohan Exports of India. The project involved the construction of electrical distribution infrastructure to extend power supply to rural communities in the district.</p>
    <p>This was one of Enviestudos&rsquo; early projects, demonstrating the company&rsquo;s capacity to support Indian-financed development infrastructure in Mozambique from the outset.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos elaborou o EIA para um projecto de electrifica&ccedil;&atilde;o rural no Distrito de Alto Molocue, Prov&iacute;ncia de Zamb&eacute;zia, financiado pelo Indian Bank (EXIM Bank of India) e implementado pela Mohan Exports da &Iacute;ndia. O projecto envolveu a constru&ccedil;&atilde;o de infraestrutura de distribui&ccedil;&atilde;o el&eacute;ctrica para extender o fornecimento de energia &agrave;s comunidades rurais do distrito.</p>
    <p>Este foi um dos primeiros projectos da Enviestudos, demonstrando a capacidade da empresa para apoiar a infraestrutura de desenvolvimento financiada pela &Iacute;ndia em Mo&ccedil;ambique desde o in&iacute;cio.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Scoping Report and Terms of Reference preparation</li>
    <li>Environmental and socioeconomic baseline surveys in Alto Molocue District</li>
    <li>Assessment of impacts from distribution line construction and transformer station siting</li>
    <li>Vegetation clearance impact assessment along power line corridors</li>
    <li>Community consultation in affected villages</li>
    <li>Environmental Management Plan (EMP) preparation</li>
    <li>Full ESIA report in Portuguese for regulatory submission</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Elabora&ccedil;&atilde;o do Relat&oacute;rio de Delimita&ccedil;&atilde;o e Termos de Refer&ecirc;ncia</li>
    <li>Levantamentos de base ambiental e socioecon&oacute;mica no Distrito de Alto Molocue</li>
    <li>Avalia&ccedil;&atilde;o dos impactos da constru&ccedil;&atilde;o de linhas de distribui&ccedil;&atilde;o e localiza&ccedil;&atilde;o de postos transformadores</li>
    <li>Avalia&ccedil;&atilde;o do impacto da limpeza da vegeta&ccedil;&atilde;o ao longo dos corredores de linhas de energia</li>
    <li>Consulta comunit&aacute;ria nas aldeias afectadas</li>
    <li>Elabora&ccedil;&atilde;o do Plano de Gest&atilde;o Ambiental (PGA)</li>
    <li>Relat&oacute;rio Final de EIA em portugu&ecirc;s para submiss&atilde;o regulat&oacute;ria</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Vegetation clearance:</strong> Management of vegetation removal along power line corridors in Zambezia Province.</li>
    <li><strong>Bird &amp; wildlife:</strong> Assessment of impacts on avifauna and wildlife from new overhead power infrastructure.</li>
    <li><strong>Community land use:</strong> Impacts on agricultural land and community access along the power line corridor.</li>
    <li><strong>Electromagnetic fields:</strong> Assessment of community exposure to EMF from distribution infrastructure.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Limpeza da vegeta&ccedil;&atilde;o:</strong> Gest&atilde;o da remo&ccedil;&atilde;o de vegeta&ccedil;&atilde;o ao longo dos corredores de linhas de energia na Prov&iacute;ncia de Zamb&eacute;zia.</li>
    <li><strong>Aves e fauna:</strong> Avalia&ccedil;&atilde;o dos impactos sobre a avifauna e a fauna selvagem da nova infraestrutura el&eacute;ctrica a&eacute;rea.</li>
    <li><strong>Uso da terra comunit&aacute;rio:</strong> Impactos nas terras agr&iacute;colas e no acesso comunit&aacute;rio ao longo do corredor da linha de energia.</li>
    <li><strong>Campos electromn&eacute;ticos:</strong> Avalia&ccedil;&atilde;o da exposi&ccedil;&atilde;o da comunidade a CEM da infraestrutura de distribui&ccedil;&atilde;o.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>The ESIA provided regulatory compliance for the Alto Molocue rural electrification project, enabling expansion of electricity access to rural communities in Zambezia Province and establishing Enviestudos&rsquo; track record in the energy infrastructure sector.</p></div>
  <div class="lang-pt"><p>O EIA proporcionou a conformidade regulat&oacute;ria para o projecto de electrifica&ccedil;&atilde;o rural de Alto Molocue, permitindo a expans&atilde;o do acesso &agrave; electricidade para as comunidades rurais na Prov&iacute;ncia de Zamb&eacute;zia e estabelecendo o hist&oacute;rico da Enviestudos no sector de infraestrutura energ&eacute;tica.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">Indian Bank</span><span class="project-tag">ESIA</span><span class="project-tag">Rural Electrification</span><span class="project-tag">Energy</span><span class="project-tag">Zambezia</span>
  </div>
</div>
'@

$sd12  = Sidebar 'Energy' '2006' 'Zambezia' 'Mohan Exports, India' 'Indian Bank (EXIM)' 'ESIA &bull; Scoping &bull; EMP &bull; Community Consultation' "<a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a>"
$rel12 = RelSection ((RC 'project-milange-esia.html' 'Roads &amp; Bridges &bull; 2007&ndash;2008' 'ESIA &mdash; Milange&ndash;Mocuba Road Upgrading' 'Comprehensive ESIA for EU-financed road upgrading in Zambezia Province, prepared for BCEOM.') + (RC 'project-en1-namacurra.html' 'Roads &amp; Bridges &bull; 2005&ndash;2008' 'ESIA Supervision &mdash; EN1, Namacurra&ndash;Rio Ligonha' 'Three-year ESIA supervision for EU-financed EN1 road rehabilitation in Zambezia Province.'))
$h12   = Hero '12' 'Energy &bull; Zambezia Province' 'Energia &bull; Prov&iacute;ncia de Zamb&eacute;zia' '2006' 'Zambezia' 'Mohan Exports, India' 'Indian Bank (EXIM)' 'Alto Molocue Rural Electrification ESIA'
W 'project-alto-molocue.html' ($HEAD + '<meta name="description" content="ESIA for rural electrification in Alto Molocue District, Zambezia Province, Indian Bank financed — Enviestudos." /><title>ESIA Rural Electrification Alto Molocue | Enviestudos Projects</title>' + $HEADEND + $NAV + $h12 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body12 + $sd12 + '</div></div></section>' + $rel12 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 13 – ANE Gaza Floods
# ─────────────────────────────────────────────────────────────────────────────
$body13 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Following major flooding in Gaza Province, Enviestudos provided technical assistance to the Roads Authority of Mozambique (ANE) in Gaza Province for the environmental management of flood damage repair and road rehabilitation works, financed by the World Bank and implemented via SMEC International.</p>
    <p>Gaza Province is prone to severe flooding from the Limpopo and its tributaries, and the emergency repair works required rapid environmental assessment and management oversight to meet World Bank environmental safeguard standards while enabling fast rehabilitation of damaged road sections.</p>
  </div>
  <div class="lang-pt">
    <p>Ap&oacute;s as grandes cheias na Prov&iacute;ncia de Gaza, a Enviestudos prestou assist&ecirc;ncia t&eacute;cnica &agrave; Administra&ccedil;&atilde;o Nacional de Estradas (ANE) em Gaza para a gest&atilde;o ambiental das obras de repara&ccedil;&atilde;o de danos de cheias e reabilita&ccedil;&atilde;o de estradas, financiadas pelo Banco Mundial e implementadas atrav&eacute;s da SMEC International.</p>
    <p>A Prov&iacute;ncia de Gaza est&aacute; sujeita a cheias graves do Limpopo e seus afluentes, e os trabalhos de repara&ccedil;&atilde;o de emerg&ecirc;ncia exigiram uma r&aacute;pida avalia&ccedil;&atilde;o e supervis&atilde;o ambiental para cumprir as normas do Banco Mundial.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Rapid Environmental Assessment (REA) of flood-damaged road sections across Gaza Province</li>
    <li>Environmental review and update of existing EMPs for rehabilitation sections</li>
    <li>EHS monitoring of emergency repair works along multiple road corridors</li>
    <li>Community liaison and grievance management for affected roadside communities</li>
    <li>Periodic EHS monitoring reports to the World Bank and ANE</li>
    <li>Technical advisory on flood-resilient environmental management practices</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Avalia&ccedil;&atilde;o Ambiental R&aacute;pida (AAR) das sec&ccedil;&otilde;es rodovi&aacute;rias danificadas pelas cheias na Prov&iacute;ncia de Gaza</li>
    <li>Revis&atilde;o e actualiza&ccedil;&atilde;o ambiental dos PGAs existentes para sec&ccedil;&otilde;es de reabilita&ccedil;&atilde;o</li>
    <li>Monitoriza&ccedil;&atilde;o de HSA das obras de repara&ccedil;&atilde;o de emerg&ecirc;ncia ao longo de v&aacute;rios corredores rodovi&aacute;rios</li>
    <li>Liga&ccedil;&atilde;o comunit&aacute;ria e gest&atilde;o de queixas para as comunidades afectadas</li>
    <li>Relat&oacute;rios peri&oacute;dicos de monitoriza&ccedil;&atilde;o de HSA para o Banco Mundial e a ANE</li>
    <li>Consultoria t&eacute;cnica em pr&aacute;ticas de gest&atilde;o ambiental resilientes a cheias</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Emergency response:</strong> Balancing rapid implementation of flood repairs with environmental protection requirements.</li>
    <li><strong>Riparian zones:</strong> Protection of Limpopo River and tributary riparian areas during repair works.</li>
    <li><strong>Community displacement:</strong> Monitoring of flood-affected community resettlement and compensation.</li>
    <li><strong>Hazardous waste:</strong> Management of flood-damaged infrastructure debris and construction materials.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Resposta de emerg&ecirc;ncia:</strong> Equil&iacute;brio entre a implementa&ccedil;&atilde;o r&aacute;pida de repara&ccedil;&otilde;es de cheias e os requisitos de prote&ccedil;&atilde;o ambiental.</li>
    <li><strong>Zonas rip&aacute;rias:</strong> Prote&ccedil;&atilde;o das &aacute;reas rip&aacute;rias do Rio Limpopo e afluentes durante os trabalhos de repara&ccedil;&atilde;o.</li>
    <li><strong>Deslocamento comunit&aacute;rio:</strong> Monitoriza&ccedil;&atilde;o do reassentamento e compensa&ccedil;&atilde;o das comunidades afectadas pelas cheias.</li>
    <li><strong>Res&iacute;duos perigosos:</strong> Gest&atilde;o de escombros de infraestrutura danificada pelas cheias e materiais de constru&ccedil;&atilde;o.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>The technical assistance enabled ANE to meet World Bank environmental safeguard requirements for emergency road rehabilitation in Gaza Province, ensuring environmental compliance was maintained under the challenging conditions of post-flood repair work.</p></div>
  <div class="lang-pt"><p>A assist&ecirc;ncia t&eacute;cnica permitiu &agrave; ANE cumprir os requisitos de salvaguarda ambiental do Banco Mundial para a reabilita&ccedil;&atilde;o de estradas de emerg&ecirc;ncia na Prov&iacute;ncia de Gaza, garantindo a conformidade ambiental nas condi&ccedil;&otilde;es desafiantes das obras p&oacute;s-cheia.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">World Bank</span><span class="project-tag">EHS Supervision</span><span class="project-tag">Emergency Works</span><span class="project-tag">Gaza</span><span class="project-tag">ANE</span>
  </div>
</div>
'@

$sd13  = Sidebar 'Roads &amp; Bridges' '2015&ndash;2016' 'Gaza' 'SMEC International' 'World Bank' 'Rapid Environmental Assessment &bull; EHS Monitoring &bull; Periodic Reports' "<a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a><a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a>"
$rel13 = RelSection ((RC 'project-cuamba-road.html' 'Roads &amp; Bridges &bull; 2020&ndash;2021' 'ESIA &mdash; Cuamba&ndash;Insaca &amp; Cuamba&ndash;Metarica Roads' 'Full ESIA for World Bank-financed road rehabilitation in Niassa Province, prepared for Think Tank Consultants SA.') + (RC 'project-n1-save.html' 'Roads &amp; Bridges &bull; 2015&ndash;2016' 'ESS Road N1 Rio Save&ndash;Muxungue' 'Environmental Simplified Study for EU-financed N1 road rehabilitation in Sofala Province.'))
$h13   = Hero '13' 'Roads &amp; Bridges &bull; Gaza Province' 'Estradas e Pontes &bull; Prov&iacute;ncia de Gaza' '2015&ndash;2016' 'Gaza' 'SMEC International' 'World Bank' 'ANE Gaza Floods Technical Support'
W 'project-ane-gaza.html' ($HEAD + '<meta name="description" content="Technical assistance to ANE for environmental management of flood damage repair works in Gaza Province, World Bank financed — Enviestudos." /><title>Technical Support ANE Gaza Province Floods | Enviestudos Projects</title>' + $HEADEND + $NAV + $h13 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body13 + $sd13 + '</div></div></section>' + $rel13 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 14 – Milange Phase II Lot 2
# ─────────────────────────────────────────────────────────────────────────────
$body14 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos performed EHS supervision for civil works on Milange&ndash;Mocuba Road Phase II, Lot 2, in Zambezia Province, financed by the European Union and implemented as part of the supervision team led by Nicholas O&rsquo;Dwyer Ltd. (Ireland). The work involved monitoring the contractor&rsquo;s compliance with the approved Environmental and Social Management Plan throughout road rehabilitation construction.</p>
    <p>This engagement complemented Enviestudos&rsquo; earlier decommissioning supervision work on the same corridor, providing full-cycle environmental management expertise on this major EU transport corridor.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos realizou a supervis&atilde;o de HSA das obras de engenharia civil na Estrada Milange&ndash;Mocuba Fase II, Lote 2, na Prov&iacute;ncia de Zamb&eacute;zia, financiada pela Uni&atilde;o Europeia e implementada como parte da equipa de supervis&atilde;o liderada pela Nicholas O&rsquo;Dwyer Ltd. (Irlanda). O trabalho envolveu a monitoriza&ccedil;&atilde;o da conformidade do empreiteiro com o PGAS aprovado durante a reabilita&ccedil;&atilde;o rodovi&aacute;ria.</p>
    <p>Este envolvimento complementou os trabalhos anteriores de supervis&atilde;o de descomissionamento da Enviestudos no mesmo corredor, proporcionando uma especializa&ccedil;&atilde;o ambiental de ciclo completo.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Regular EHS site inspections along Milange&ndash;Mocuba road Lot 2 section</li>
    <li>Monitoring of contractor compliance with the approved ESMP</li>
    <li>Non-conformance identification and corrective action tracking</li>
    <li>Borrow pit, quarry, and construction camp environmental audits</li>
    <li>Community liaison and grievance management</li>
    <li>Preparation of periodic EHS monitoring reports for EU and ANE</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Inspec&ccedil;&otilde;es de campo peri&oacute;dicas de HSA ao longo da sec&ccedil;&atilde;o do Lote 2</li>
    <li>Monitoriza&ccedil;&atilde;o da conformidade do empreiteiro com o PGAS aprovado</li>
    <li>Identifica&ccedil;&atilde;o de n&atilde;o-conformidades e acompanhamento de ac&ccedil;&otilde;es correctivas</li>
    <li>Auditorias ambientais de zonas de empr&eacute;stimo, pedreiras e acampamentos de constru&ccedil;&atilde;o</li>
    <li>Liga&ccedil;&atilde;o comunit&aacute;ria e gest&atilde;o de queixas</li>
    <li>Elabora&ccedil;&atilde;o de relat&oacute;rios peri&oacute;dicos de monitoriza&ccedil;&atilde;o de HSA para a UE e a ANE</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Forest habitat:</strong> Construction camp and borrow pit management in Zambezia Province forest areas.</li>
    <li><strong>River crossings:</strong> Environmental protection of Licungo River and tributaries during bridge and culvert construction.</li>
    <li><strong>Dust &amp; noise:</strong> Monitoring of dust and noise impacts on roadside communities during active construction.</li>
    <li><strong>Community health:</strong> HIV/AIDS prevention and construction worker community interaction management.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Habitat florestal:</strong> Gest&atilde;o de acampamentos de constru&ccedil;&atilde;o e zonas de empr&eacute;stimo em &aacute;reas florestais da Prov&iacute;ncia de Zamb&eacute;zia.</li>
    <li><strong>Travessias fluviais:</strong> Prote&ccedil;&atilde;o ambiental do Rio Licungo e afluentes durante a constru&ccedil;&atilde;o de pontes e aquedutos.</li>
    <li><strong>P&oacute; e ru&iacute;do:</strong> Monitoriza&ccedil;&atilde;o dos impactos de p&oacute; e ru&iacute;do nas comunidades marginais durante a constru&ccedil;&atilde;o activa.</li>
    <li><strong>Sa&uacute;de comunit&aacute;ria:</strong> Preven&ccedil;&atilde;o do VIH/SIDA e gest&atilde;o da intera&ccedil;&atilde;o dos trabalhadores de constru&ccedil;&atilde;o com as comunidades.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>EHS supervision of Milange&ndash;Mocuba Phase II Lot 2 maintained EU environmental and social compliance throughout construction, building on Enviestudos&rsquo; long engagement with this strategic road corridor and reinforcing its position as the go-to EHS supervisor on EU-financed transport infrastructure in Zambezia Province.</p></div>
  <div class="lang-pt"><p>A supervis&atilde;o de HSA da Fase II Lote 2 de Milange&ndash;Mocuba manteve a conformidade ambiental e social da UE durante a constru&ccedil;&atilde;o, refor&ccedil;ando o posicionamento da Enviestudos como o supervisor de HSA de refer&ecirc;ncia na infraestrutura de transportes financiada pela UE na Prov&iacute;ncia de Zamb&eacute;zia.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">EU</span><span class="project-tag">EHS Supervision</span><span class="project-tag">Roads</span><span class="project-tag">Zambezia</span><span class="project-tag">Milange&ndash;Mocuba</span>
  </div>
</div>
'@

$sd14  = Sidebar 'Roads &amp; Bridges' '2015' 'Zambezia' 'Nicholas O&rsquo;Dwyer Ltd.' 'European Union' 'EHS Supervision &bull; ESMP Monitoring &bull; Periodic Reports' "<a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a><a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a>"
$rel14 = RelSection ((RC 'project-milange-decommission.html' 'Roads &amp; Bridges &bull; 2019' 'ESIA Decommissioning &mdash; Milange&ndash;Mocuba Phase II' 'Environmental studies for decommissioning of Phase II road works, EU-financed, in Zambezia Province.') + (RC 'project-milange-esia.html' 'Roads &amp; Bridges &bull; 2007&ndash;2008' 'ESIA &mdash; Milange&ndash;Mocuba Road Upgrading' 'Comprehensive ESIA for EU-financed road upgrading in Zambezia Province, prepared for BCEOM.'))
$h14   = Hero '14' 'Roads &amp; Bridges &bull; Zambezia Province' 'Estradas e Pontes &bull; Prov&iacute;ncia de Zamb&eacute;zia' '2015' 'Zambezia' 'Nicholas O&rsquo;Dwyer Ltd.' 'European Union' 'Milange Lot 2 EHS Supervision'
W 'project-milange-lot2.html' ($HEAD + '<meta name="description" content="EHS Supervision for Milange-Mocuba Road Phase II Lot 2 civil works, EU financed, Zambezia Province — Enviestudos." /><title>EHS Supervision Milange Mocuba Phase II Lot 2 | Enviestudos Projects</title>' + $HEADEND + $NAV + $h14 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body14 + $sd14 + '</div></div></section>' + $rel14 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 15 – N14 Supervision Marrupa-Ruaça
# ─────────────────────────────────────────────────────────────────────────────
$body15 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos performed Health and Safety (H&amp;S) supervision as part of the supervision team for civil works on N14 Road, Marrupa&ndash;Rua&ccedil;a Lot B in Niassa Province, financed by the World Bank under the EGIS/BCEOM consortium. The assignment involved a focused short-term H&amp;S supervision engagement during October and November 2011.</p>
    <p>The N14 is a critical link in northern Mozambique connecting Niassa Province&rsquo;s inland districts, and the rehabilitation works required rigorous H&amp;S oversight in a remote and logistically challenging environment.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos realizou a supervis&atilde;o de Sa&uacute;de e Seguran&ccedil;a (S&amp;S) como parte da equipa de supervis&atilde;o das obras civis na Estrada N14, Marrupa&ndash;Rua&ccedil;a Lote B na Prov&iacute;ncia de Niassa, financiada pelo Banco Mundial no &acirc;mbito do cons&oacute;rcio EGIS/BCEOM. O trabalho envolveu uma supervis&atilde;o de S&amp;S de curto prazo durante Outubro e Novembro de 2011.</p>
    <p>A N14 &eacute; um elo cr&iacute;tico no norte de Mo&ccedil;ambique ligando os distritos do interior de Niassa, e os trabalhos de reabilita&ccedil;&atilde;o exigiram uma rigorosa supervis&atilde;o de S&amp;S num ambiente remoto e logisticamente desafiante.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>H&amp;S inspections of construction sites along the N14 Lot B corridor</li>
    <li>Review and assessment of contractor H&amp;S plans and procedures</li>
    <li>Construction camp safety inspection and compliance monitoring</li>
    <li>Incident reporting and investigation support</li>
    <li>Provision of H&amp;S inspection reports to supervision team and EGIS/BCEOM</li>
    <li>Corrective action recommendation for H&amp;S non-conformances</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Inspec&ccedil;&otilde;es de S&amp;S dos estaleiros ao longo do corredor do Lote B da N14</li>
    <li>Revis&atilde;o e avalia&ccedil;&atilde;o dos planos e procedimentos de S&amp;S do empreiteiro</li>
    <li>Inspec&ccedil;&atilde;o e monitoriza&ccedil;&atilde;o da conformidade dos acampamentos de constru&ccedil;&atilde;o</li>
    <li>Apoio ao relato e investiga&ccedil;&atilde;o de incidentes</li>
    <li>Elabora&ccedil;&atilde;o de relat&oacute;rios de inspec&ccedil;&atilde;o de S&amp;S para a equipa de supervis&atilde;o e a EGIS/BCEOM</li>
    <li>Recomenda&ccedil;&atilde;o de ac&ccedil;&otilde;es correctivas para n&atilde;o-conformidades de S&amp;S</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Remote location safety:</strong> H&amp;S compliance monitoring in a remote Niassa Province location with limited emergency response infrastructure.</li>
    <li><strong>Heavy equipment safety:</strong> Inspection of earthmoving and construction plant operation safety practices.</li>
    <li><strong>Explosive materials:</strong> Safety oversight of rock blasting operations required for road construction in rocky terrain.</li>
    <li><strong>Worker welfare:</strong> Construction camp conditions monitoring including sanitation, food, water, and accommodation standards.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Seguran&ccedil;a em local remoto:</strong> Monitoriza&ccedil;&atilde;o da conformidade de S&amp;S numa localiza&ccedil;&atilde;o remota de Niassa com infraestrutura de resposta de emerg&ecirc;ncia limitada.</li>
    <li><strong>Seguran&ccedil;a de equipamento pesado:</strong> Inspec&ccedil;&atilde;o das pr&aacute;ticas de seguran&ccedil;a na opera&ccedil;&atilde;o de m&aacute;quinas de terraplanagem e constru&ccedil;&atilde;o.</li>
    <li><strong>Materiais explosivos:</strong> Supervis&atilde;o de seguran&ccedil;a das opera&ccedil;&otilde;es de detonagem de rocha necess&aacute;rias para a constru&ccedil;&atilde;o rodovi&aacute;ria em terreno rochoso.</li>
    <li><strong>Bem-estar dos trabalhadores:</strong> Monitoriza&ccedil;&atilde;o das condi&ccedil;&otilde;es dos acampamentos incluindo padr&otilde;es de saneamento, alimenta&ccedil;&atilde;o, &aacute;gua e alojamento.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>The focused H&amp;S supervision engagement on N14 Lot B provided the World Bank-financed supervision team with compliant H&amp;S monitoring documentation and identified corrective measures to ensure contractor safety performance on this remote northern Mozambique road rehabilitation project.</p></div>
  <div class="lang-pt"><p>O trabalho de supervis&atilde;o de S&amp;S no Lote B da N14 proporcionou &agrave; equipa de supervis&atilde;o financiada pelo Banco Mundial documenta&ccedil;&atilde;o de monitoriza&ccedil;&atilde;o de S&amp;S conforme e identificou medidas correctivas para garantir o desempenho de seguran&ccedil;a do empreiteiro neste projecto de reabilita&ccedil;&atilde;o rodovi&aacute;ria remoto.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">World Bank</span><span class="project-tag">H&amp;S Supervision</span><span class="project-tag">Road N14</span><span class="project-tag">Niassa</span>
  </div>
</div>
'@

$sd15  = Sidebar 'Roads &amp; Bridges' 'Oct&ndash;Nov 2011' 'Niassa' 'EGIS / BCEOM' 'World Bank' 'H&amp;S Supervision &bull; Inspection Reports &bull; Corrective Actions' "<a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a>"
$rel15 = RelSection ((RC 'project-n103-roads.html' 'Roads &amp; Bridges &bull; 2014&ndash;2016' 'EHS Supervision &mdash; Roads N103 and R657' 'EHS supervision for rehabilitation of N103 and R657 roads in Zambezia and Niassa, World Bank financed.') + (RC 'project-n14-emp.html' 'Roads &amp; Bridges &bull; 2009' 'EMP Review &mdash; Road N14, Niassa Province' 'Environmental Management Plan review for World Bank-financed N14 road rehabilitation in Niassa Province.'))
$h15   = Hero '15' 'Roads &amp; Bridges &bull; Niassa Province' 'Estradas e Pontes &bull; Prov&iacute;ncia de Niassa' 'Oct&ndash;Nov 2011' 'Niassa' 'EGIS / BCEOM' 'World Bank' 'N14 Supervision, Marrupa&ndash;Rua&ccedil;a Lot B'
W 'project-n14-supervision.html' ($HEAD + '<meta name="description" content="Health and Safety supervision for N14 Road rehabilitation, Marrupa-Ruaca Lot B, Niassa Province, World Bank financed — Enviestudos." /><title>H&amp;S Supervision Road N14 Marrupa-Ruaça Lot B | Enviestudos Projects</title>' + $HEADEND + $NAV + $h15 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body15 + $sd15 + '</div></div></section>' + $rel15 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 16 – AIAS Water Supply
# ─────────────────────────────────────────────────────────────────────────────
$body16 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos provided Technical Assistance (TA) to AIAS (Investment and Assets Administration of Water and Sanitation) for environmental and social assessment of water supply and sanitation investment projects across multiple provinces, financed by the World Bank. The work was carried out alongside Brisbane City Enterprises (Australia) and SMEC International.</p>
    <p>AIAS manages water supply infrastructure across Mozambique&rsquo;s secondary cities and towns, and this TA assignment helped build AIAS&rsquo;s capacity to meet World Bank environmental and social safeguard requirements across its investment portfolio.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos prestou Assist&ecirc;ncia T&eacute;cnica (AT) ao AIAS (Administra&ccedil;&atilde;o de Infra-estruturas de &Aacute;gua e Saneamento) para a avalia&ccedil;&atilde;o ambiental e social de projectos de investimento em abastecimento de &aacute;gua e saneamento em v&aacute;rias prov&iacute;ncias, financiada pelo Banco Mundial. O trabalho foi realizado em conjunto com a Brisbane City Enterprises (Austr&aacute;lia) e a SMEC International.</p>
    <p>O AIAS gere infraestrutura de abastecimento de &aacute;gua nas cidades secund&aacute;rias e vilas de Mo&ccedil;ambique, e esta miss&atilde;o de AT ajudou a refor&ccedil;ar a capacidade do AIAS para cumprir os requisitos de salvaguarda ambiental e social do Banco Mundial.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Environmental screening of AIAS water supply sub-projects across multiple provinces</li>
    <li>Preparation of Environmental and Social Management Frameworks (ESMF)</li>
    <li>Site-specific Environmental and Social Impact Assessments (ESIA) for priority investments</li>
    <li>Capacity building: training AIAS staff in environmental screening and ESMP preparation</li>
    <li>Review of contractor EMPs for water supply construction works</li>
    <li>Technical guidance on World Bank Operational Policies for water sector projects</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Triagem ambiental de sub-projectos de abastecimento de &aacute;gua do AIAS em v&aacute;rias prov&iacute;ncias</li>
    <li>Elabora&ccedil;&atilde;o de Quadros de Gest&atilde;o Ambiental e Social (QGAS)</li>
    <li>Avalia&ccedil;&otilde;es de Impacto Ambiental e Social (AIAS) espec&iacute;ficas por local para investimentos priorit&aacute;rios</li>
    <li>Refor&ccedil;o de capacidades: forma&ccedil;&atilde;o do pessoal do AIAS em triagem ambiental e elabora&ccedil;&atilde;o de PGA</li>
    <li>Revis&atilde;o dos PGAs dos empreiteiros para obras de constru&ccedil;&atilde;o de abastecimento de &aacute;gua</li>
    <li>Orienta&ccedil;&atilde;o t&eacute;cnica sobre as Pol&iacute;ticas Operacionais do Banco Mundial para projectos do sector da &aacute;gua</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Water source protection:</strong> Assessment of groundwater and surface water source protection zones for each sub-project.</li>
    <li><strong>Sanitation &amp; public health:</strong> Environmental health impacts of water supply improvements and associated sanitation.</li>
    <li><strong>Urban construction:</strong> Management of construction impacts in urban and peri-urban areas of secondary towns.</li>
    <li><strong>Community engagement:</strong> Consultation frameworks for communities affected by water supply infrastructure works.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Prote&ccedil;&atilde;o da fonte de &aacute;gua:</strong> Avalia&ccedil;&atilde;o das zonas de prote&ccedil;&atilde;o das fontes de &aacute;gua subterr&acirc;nea e superficial para cada sub-projecto.</li>
    <li><strong>Saneamento e sa&uacute;de p&uacute;blica:</strong> Impactos na sa&uacute;de ambiental das melhorias no abastecimento de &aacute;gua e no saneamento associado.</li>
    <li><strong>Constru&ccedil;&atilde;o urbana:</strong> Gest&atilde;o dos impactos da constru&ccedil;&atilde;o em &aacute;reas urbanas e periurbanas das cidades secund&aacute;rias.</li>
    <li><strong>Envolvimento comunit&aacute;rio:</strong> Quadros de consulta para as comunidades afectadas pelas obras de infraestrutura de abastecimento de &aacute;gua.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>The TA to AIAS helped systematise environmental and social safeguard implementation across AIAS&rsquo;s World Bank-financed water supply portfolio, building institutional capacity within the sector that remained relevant beyond the project period.</p></div>
  <div class="lang-pt"><p>A AT ao AIAS ajudou a sistematizar a implementa&ccedil;&atilde;o de salvaguardas ambientais e sociais na carteira de abastecimento de &aacute;gua financiada pelo Banco Mundial, construindo capacidade institucional no sector que permaneceu relevante para al&eacute;m do per&iacute;odo do projecto.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">World Bank</span><span class="project-tag">ESIA</span><span class="project-tag">Water Supply</span><span class="project-tag">AIAS</span><span class="project-tag">Capacity Building</span>
  </div>
</div>
'@

$sd16  = Sidebar 'Water &amp; Sanitation' '2011' 'Multiple Provinces' 'Brisbane City Enterprises &amp; SMEC' 'World Bank' 'ESIA &bull; ESMF &bull; Capacity Building &bull; ESMP Review' "<a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a><a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a>"
$rel16 = RelSection ((RC 'project-nacala-water.html' 'Water &amp; Sanitation &bull; 2016&ndash;2018' 'Environmental Supervision &mdash; Nacala Porto Water Supply Network' 'Environmental supervision for IDA-financed water supply rehabilitation in Nampula Province.') + (RC 'project-sanitation-cities.html' 'Water &amp; Sanitation &bull; 2010&ndash;2011' 'ESIA &mdash; Sanitation Improvements, Pemba, Nampula &amp; Quelimane' 'ESIAs for sanitation improvements in three Mozambican cities, MCC Compact financed.'))
$h16   = Hero '16' 'Water &amp; Sanitation &bull; Multiple Provinces' '&Aacute;gua e Saneamento &bull; V&aacute;rias Prov&iacute;ncias' '2011' 'Multiple Provinces' 'Brisbane City Enterprises &amp; SMEC' 'World Bank' 'AIAS Water Supply Technical Assistance'
W 'project-aias-water.html' ($HEAD + '<meta name="description" content="Technical Assistance to AIAS for water supply and sanitation environmental assessments, World Bank financed — Enviestudos." /><title>Technical Assistance AIAS Water Supply and Sanitation | Enviestudos Projects</title>' + $HEADEND + $NAV + $h16 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body16 + $sd16 + '</div></div></section>' + $rel16 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 17 – N14 EMP Review
# ─────────────────────────────────────────────────────────────────────────────
$body17 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos undertook the review and update of the Environmental Management Plan (EMP) for Road N14 in Niassa Province, financed by the World Bank and implemented under BCEOM consultancy. The review assessed the adequacy of the existing EMP against actual construction conditions and updated mitigation measures as required.</p>
    <p>EMP reviews are a critical quality assurance mechanism in World Bank-financed projects, ensuring that environmental management commitments remain relevant and effective as construction progresses and site conditions evolve.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos realizou a revis&atilde;o e actualiza&ccedil;&atilde;o do Plano de Gest&atilde;o Ambiental (PGA) da Estrada N14 na Prov&iacute;ncia de Niassa, financiado pelo Banco Mundial e implementado sob consultoria da BCEOM. A revis&atilde;o avaliou a adequa&ccedil;&atilde;o do PGA existente face &agrave;s condi&ccedil;&otilde;es reais de constru&ccedil;&atilde;o e actualizou as medidas de mitiga&ccedil;&atilde;o conforme necess&aacute;rio.</p>
    <p>As revis&otilde;es de PGA s&atilde;o um mecanismo cr&iacute;tico de garantia de qualidade nos projectos financiados pelo Banco Mundial, garantindo que os compromissos de gest&atilde;o ambiental permane&ccedil;am relevantes e eficazes &agrave; medida que a constru&ccedil;&atilde;o avan&ccedil;a.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Review of the existing N14 ESIA and EMP documents against World Bank OP 4.01 requirements</li>
    <li>Site assessments of key environmental sensitivities along the N14 corridor in Niassa</li>
    <li>Gap analysis between EMP commitments and construction site realities</li>
    <li>Consultation with ANE, contractor, and supervision team</li>
    <li>Updated/revised EMP document with enhanced mitigation measures</li>
    <li>Recommendations for EMP implementation and monitoring procedures</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Revis&atilde;o dos documentos de EIA e PGA existentes da N14 face aos requisitos do OP 4.01 do Banco Mundial</li>
    <li>Avalia&ccedil;&otilde;es de campo das principais sensibilidades ambientais ao longo do corredor N14 em Niassa</li>
    <li>An&aacute;lise de lacunas entre os compromissos do PGA e as realidades do estaleiro de constru&ccedil;&atilde;o</li>
    <li>Consulta com a ANE, o empreiteiro e a equipa de supervis&atilde;o</li>
    <li>Documento de PGA actualizado/revisto com medidas de mitiga&ccedil;&atilde;o melhoradas</li>
    <li>Recomenda&ccedil;&otilde;es para os procedimentos de implementa&ccedil;&atilde;o e monitoriza&ccedil;&atilde;o do PGA</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Miombo woodland:</strong> N14 passes through Miombo woodland ecosystem in Niassa Province; assessment of vegetation clearance management adequacy.</li>
    <li><strong>Water resources:</strong> Review of watercourse crossing management practices and drainage design along the N14.</li>
    <li><strong>Wildlife corridors:</strong> Assessment of wildlife movement impacts and mitigation in the N14 corridor.</li>
    <li><strong>Community land access:</strong> Review of compensation and resettlement commitments for roadside communities in Niassa.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Floresta de Miombo:</strong> A N14 atravessa o ecossistema de floresta de Miombo em Niassa; avalia&ccedil;&atilde;o da adequa&ccedil;&atilde;o da gest&atilde;o da limpeza de vegeta&ccedil;&atilde;o.</li>
    <li><strong>Recursos h&iacute;dricos:</strong> Revis&atilde;o das pr&aacute;ticas de gest&atilde;o de travessias de cursos de &aacute;gua e projecto de drenagem ao longo da N14.</li>
    <li><strong>Corredores de fauna:</strong> Avalia&ccedil;&atilde;o dos impactos na movimenta&ccedil;&atilde;o da fauna e mitiga&ccedil;&atilde;o no corredor N14.</li>
    <li><strong>Acesso &agrave; terra comunit&aacute;rio:</strong> Revis&atilde;o dos compromissos de compensa&ccedil;&atilde;o e reassentamento para as comunidades marginais em Niassa.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>The EMP review and update for Road N14 provided a strengthened environmental management framework aligned with actual construction conditions in Niassa Province, supporting World Bank safeguard compliance for this strategic northern Mozambique road rehabilitation project.</p></div>
  <div class="lang-pt"><p>A revis&atilde;o e actualiza&ccedil;&atilde;o do PGA da Estrada N14 forneceu um quadro de gest&atilde;o ambiental refor&ccedil;ado alinhado com as condi&ccedil;&otilde;es reais de constru&ccedil;&atilde;o na Prov&iacute;ncia de Niassa, apoiando a conformidade com as salvaguardas do Banco Mundial.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">World Bank</span><span class="project-tag">EMP Review</span><span class="project-tag">Road N14</span><span class="project-tag">Niassa</span>
  </div>
</div>
'@

$sd17  = Sidebar 'Roads &amp; Bridges' '2009' 'Niassa' 'BCEOM' 'World Bank' 'EMP Review &bull; Gap Analysis &bull; Updated EMP' "<a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a><a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a>"
$rel17 = RelSection ((RC 'project-n14-supervision.html' 'Roads &amp; Bridges &bull; Oct&ndash;Nov 2011' 'H&amp;S Supervision &mdash; N14 Road, Marrupa&ndash;Rua&ccedil;a Lot B' 'Health and Safety supervision for civil works on N14 in Niassa Province, World Bank financed.') + (RC 'project-cuamba-road.html' 'Roads &amp; Bridges &bull; 2020&ndash;2021' 'ESIA &mdash; Cuamba&ndash;Insaca &amp; Cuamba&ndash;Metarica Roads' 'Full ESIA for World Bank-financed road rehabilitation in Niassa Province.'))
$h17   = Hero '17' 'Roads &amp; Bridges &bull; Niassa Province' 'Estradas e Pontes &bull; Prov&iacute;ncia de Niassa' '2009' 'Niassa' 'BCEOM' 'World Bank' 'EMP Review Road N14, Niassa'
W 'project-n14-emp.html' ($HEAD + '<meta name="description" content="EMP Review for Road N14 rehabilitation in Niassa Province, World Bank financed — Enviestudos." /><title>EMP Review Road N14 Niassa Province | Enviestudos Projects</title>' + $HEADEND + $NAV + $h17 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body17 + $sd17 + '</div></div></section>' + $rel17 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 18 – Milange ESIA
# ─────────────────────────────────────────────────────────────────────────────
$body18 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos prepared a comprehensive ESIA for the upgrading of Milange&ndash;Mocuba Road in Zambezia Province, financed by the European Union. The study was prepared for BCEOM (France), the leading engineering consultancy on the project. The Milange&ndash;Mocuba corridor is one of Zambezia&rsquo;s most strategically important road links, connecting the Malawi border town of Milange with the provincial capital Quelimane via Mocuba.</p>
    <p>This project represents one of the larger and more complex ESIAs completed by Enviestudos, covering a lengthy rural road corridor passing through diverse environments including agricultural land, forest areas, and river crossings in central Zambezia Province.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos elaborou um EIA abrangente para a melhoria da Estrada Milange&ndash;Mocuba na Prov&iacute;ncia de Zamb&eacute;zia, financiado pela Uni&atilde;o Europeia. O estudo foi preparado para a BCEOM (Fran&ccedil;a), a consultora l&iacute;der de engenharia no projecto. O corredor Milange&ndash;Mocuba &eacute; um dos elos rodovi&aacute;rios mais estrategicamente importantes de Zamb&eacute;zia, ligando a cidade fronteiri&ccedil;a do Malawi, Milange, com a capital provincial Quelimane via Mocuba.</p>
    <p>Este projecto representa um dos EIAs maiores e mais complexos realizados pela Enviestudos, abrangendo um longo corredor rodovi&aacute;rio rural que atravessa ambientes diversos.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Scoping Report and Terms of Reference for regulatory submission</li>
    <li>Comprehensive baseline surveys: ecology, hydrology, soils, socioeconomics, archaeology</li>
    <li>Identification and assessment of project-affected people (PAP) along the corridor</li>
    <li>Multi-stakeholder public consultation programme</li>
    <li>Full Environmental Impact Assessment and significance evaluation</li>
    <li>Integrated Environmental and Social Management Plan (ESMP)</li>
    <li>Resettlement Action Plan (RAP) preparation support</li>
    <li>Final ESIA report in Portuguese for submission to ANAMA and EU</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Relat&oacute;rio de Delimita&ccedil;&atilde;o e Termos de Refer&ecirc;ncia para submiss&atilde;o regulat&oacute;ria</li>
    <li>Levantamentos de base abrangentes: ecologia, hidrologia, solos, socioecon&oacute;mica, arqueologia</li>
    <li>Identifica&ccedil;&atilde;o e avalia&ccedil;&atilde;o de pessoas afectadas pelo projecto (PAP) ao longo do corredor</li>
    <li>Programa de consulta p&uacute;blica multi-partes interessadas</li>
    <li>Avalia&ccedil;&atilde;o Ambiental completa e avalia&ccedil;&atilde;o da signific&acirc;ncia</li>
    <li>Plano de Gest&atilde;o Ambiental e Social (PGAS) integrado</li>
    <li>Apoio &agrave; elabora&ccedil;&atilde;o do Plano de Ac&ccedil;&atilde;o de Reassentamento (PAR)</li>
    <li>Relat&oacute;rio Final de EIA em portugu&ecirc;s para submiss&atilde;o ao ANAMA e &agrave; UE</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Forest habitats:</strong> Impact assessment on Zambezia Province miombo woodland and forest patches along the road corridor.</li>
    <li><strong>Licungo River:</strong> Hydrological and aquatic ecology assessment of Licungo River crossing and its tributaries.</li>
    <li><strong>Agricultural land:</strong> Assessment of impacts on smallholder agricultural land and food security along the corridor.</li>
    <li><strong>Community resettlement:</strong> Assessment of PAP and resettlement requirements for road upgrading works.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Habitats florestais:</strong> Avalia&ccedil;&atilde;o dos impactos na floresta de Miombo da Prov&iacute;ncia de Zamb&eacute;zia e parcelas florestais ao longo do corredor rodovi&aacute;rio.</li>
    <li><strong>Rio Licungo:</strong> Avalia&ccedil;&atilde;o hidrol&oacute;gica e de ecologia aqu&aacute;tica da travessia do Rio Licungo e seus afluentes.</li>
    <li><strong>Terra agr&iacute;cola:</strong> Avalia&ccedil;&atilde;o dos impactos nas terras agr&iacute;colas de pequenos agricultores e seguran&ccedil;a alimentar ao longo do corredor.</li>
    <li><strong>Reassentamento comunit&aacute;rio:</strong> Avalia&ccedil;&atilde;o das PAP e requisitos de reassentamento para as obras de melhoria rodovi&aacute;ria.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>The comprehensive ESIA for Milange&ndash;Mocuba Road Upgrading provided both EU and Mozambican regulatory compliance documentation, enabling one of Zambezia Province&rsquo;s most important road corridors to proceed to construction. Enviestudos subsequently supported EHS supervision on the same corridor in 2015 and decommissioning studies in 2019.</p></div>
  <div class="lang-pt"><p>O EIA abrangente para a Melhoria da Estrada Milange&ndash;Mocuba forneceu documenta&ccedil;&atilde;o de conformidade regulat&oacute;ria da UE e mo&ccedil;ambicana, permitindo que um dos corredores rodovi&aacute;rios mais importantes da Prov&iacute;ncia de Zamb&eacute;zia avan&ccedil;asse para a constru&ccedil;&atilde;o. A Enviestudos apoiou posteriormente a supervis&atilde;o de HSA no mesmo corredor em 2015 e os estudos de descomissionamento em 2019.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">EU</span><span class="project-tag">ESIA</span><span class="project-tag">Road Upgrading</span><span class="project-tag">Zambezia</span><span class="project-tag">RAP</span>
  </div>
</div>
'@

$sd18  = Sidebar 'Roads &amp; Bridges' '2007&ndash;2008' 'Zambezia' 'BCEOM, France' 'European Union' 'ESIA &bull; Scoping &bull; ESMP &bull; RAP Support &bull; Public Consultations' "<a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a><a href='service-rap.html' class='sidebar-link'>$SVGSUP Resettlement Planning</a>"
$rel18 = RelSection ((RC 'project-milange-lot2.html' 'Roads &amp; Bridges &bull; 2015' 'EHS Supervision &mdash; Milange&ndash;Mocuba Phase II Lot 2' 'EHS supervision for EU-financed Milange-Mocuba road rehabilitation civil works, Zambezia Province.') + (RC 'project-milange-decommission.html' 'Roads &amp; Bridges &bull; 2019' 'ESIA Decommissioning &mdash; Milange&ndash;Mocuba Phase II' 'Environmental decommissioning studies for the Milange-Mocuba Phase II road project, Zambezia Province.'))
$h18   = Hero '18' 'Roads &amp; Bridges &bull; Zambezia Province' 'Estradas e Pontes &bull; Prov&iacute;ncia de Zamb&eacute;zia' '2007&ndash;2008' 'Zambezia' 'BCEOM, France' 'European Union' 'ESIA Milange&ndash;Mocuba Road Upgrading'
W 'project-milange-esia.html' ($HEAD + '<meta name="description" content="Comprehensive ESIA for Milange-Mocuba Road Upgrading, Zambezia Province, EU financed — Enviestudos." /><title>ESIA Milange-Mocuba Road Upgrading | Enviestudos Projects</title>' + $HEADEND + $NAV + $h18 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body18 + $sd18 + '</div></div></section>' + $rel18 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 19 – EN1 Namacurra
# ─────────────────────────────────────────────────────────────────────────────
$body19 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos carried out ESIA Supervision for the EN1 Road rehabilitation between Namacurra and Rio Ligonha in Zambezia Province, financed by the European Union and implemented by BCEOM. This was a three-year ESIA supervision assignment (2005&ndash;2008), covering the construction phase of EN1 rehabilitation through coastal and riverside environments in northern Zambezia.</p>
    <p>This project represents one of Enviestudos&rsquo; earliest and longest-running ESIA supervision engagements, demonstrating the company&rsquo;s capacity to sustain multi-year supervision mandates from its founding years.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos realizou a Supervis&atilde;o de EIA para a reabilita&ccedil;&atilde;o da Estrada EN1 entre Namacurra e Rio Ligonha na Prov&iacute;ncia de Zamb&eacute;zia, financiada pela Uni&atilde;o Europeia e implementada pela BCEOM. Esta foi uma miss&atilde;o de supervis&atilde;o de EIA de tr&ecirc;s anos (2005&ndash;2008), abrangendo a fase de constru&ccedil;&atilde;o da reabilita&ccedil;&atilde;o da EN1 atrav&eacute;s de ambientes costeiros e ribeirinhos no norte de Zamb&eacute;zia.</p>
    <p>Este projecto representa um dos primeiros e mais longos compromissos de supervis&atilde;o de EIA da Enviestudos, demonstrando a capacidade da empresa para sustentar mandatos de supervis&atilde;o plurianuais desde os seus anos fundadores.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Regular ESIA site inspections along the EN1 Namacurra&ndash;Rio Ligonha corridor over three years</li>
    <li>Monitoring of contractor ESMP compliance throughout the construction phase</li>
    <li>Periodic environmental monitoring reports to BCEOM and EU</li>
    <li>Community liaison and grievance management along the road corridor</li>
    <li>Supervision of environmental mitigation at river crossings and wetland areas</li>
    <li>Non-conformance identification and corrective action follow-up</li>
    <li>Final ESIA monitoring completion report at project close-out</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Inspec&ccedil;&otilde;es peri&oacute;dicas de EIA ao longo do corredor EN1 Namacurra&ndash;Rio Ligonha durante tr&ecirc;s anos</li>
    <li>Monitoriza&ccedil;&atilde;o da conformidade do empreiteiro com o PGAS durante a fase de constru&ccedil;&atilde;o</li>
    <li>Relat&oacute;rios de monitoriza&ccedil;&atilde;o ambiental peri&oacute;dicos para a BCEOM e a UE</li>
    <li>Liga&ccedil;&atilde;o comunit&aacute;ria e gest&atilde;o de queixas ao longo do corredor rodovi&aacute;rio</li>
    <li>Supervis&atilde;o da mitiga&ccedil;&atilde;o ambiental nas travessias fluviais e &aacute;reas h&uacute;midas</li>
    <li>Identifica&ccedil;&atilde;o de n&atilde;o-conformidades e seguimento de ac&ccedil;&otilde;es correctivas</li>
    <li>Relat&oacute;rio Final de monitoriza&ccedil;&atilde;o de EIA no encerramento do projecto</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Coastal environment:</strong> ESIA supervision through coastal and estuarine zones in northern Zambezia Province.</li>
    <li><strong>Wetlands &amp; mangroves:</strong> Monitoring of construction impacts on wetland and mangrove habitats along the EN1 corridor.</li>
    <li><strong>Rio Ligonha crossing:</strong> Environmental supervision of the major Ligonha River bridge construction and ecological protection.</li>
    <li><strong>Agricultural communities:</strong> Monitoring of construction impacts on smallholder farming communities in the corridor.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Ambiente costeiro:</strong> Supervis&atilde;o de EIA atrav&eacute;s de zonas costeiras e estuarinas no norte da Prov&iacute;ncia de Zamb&eacute;zia.</li>
    <li><strong>Zonas h&uacute;midas e mangais:</strong> Monitoriza&ccedil;&atilde;o dos impactos da constru&ccedil;&atilde;o nos habitats de zonas h&uacute;midas e mangais ao longo do corredor EN1.</li>
    <li><strong>Travessia do Rio Ligonha:</strong> Supervis&atilde;o ambiental da constru&ccedil;&atilde;o da ponte do Rio Ligonha e prote&ccedil;&atilde;o ecol&oacute;gica.</li>
    <li><strong>Comunidades agr&iacute;colas:</strong> Monitoriza&ccedil;&atilde;o dos impactos da constru&ccedil;&atilde;o nas comunidades de pequenos agricultores no corredor.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>Three years of continuous ESIA supervision on EN1 Namacurra&ndash;Rio Ligonha provided the EU and Government of Mozambique with a comprehensive monitoring record throughout construction, ensuring EU environmental requirements were met for one of Zambezia Province&rsquo;s principal road links.</p></div>
  <div class="lang-pt"><p>Tr&ecirc;s anos de supervis&atilde;o cont&iacute;nua de EIA na EN1 Namacurra&ndash;Rio Ligonha forneceu &agrave; UE e ao Governo de Mo&ccedil;ambique um registo de monitoriza&ccedil;&atilde;o abrangente durante a constru&ccedil;&atilde;o, garantindo que os requisitos ambientais da UE foram cumpridos para um dos principais elos rodovi&aacute;rios da Prov&iacute;ncia de Zamb&eacute;zia.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">EU</span><span class="project-tag">ESIA Supervision</span><span class="project-tag">Road EN1</span><span class="project-tag">Zambezia</span><span class="project-tag">Coastal</span>
  </div>
</div>
'@

$sd19  = Sidebar 'Roads &amp; Bridges' '2005&ndash;2008' 'Zambezia' 'BCEOM, France' 'European Union' 'ESIA Supervision &bull; Periodic Reports &bull; Community Liaison' "<a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a><a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a>"
$rel19 = RelSection ((RC 'project-milange-esia.html' 'Roads &amp; Bridges &bull; 2007&ndash;2008' 'ESIA &mdash; Milange&ndash;Mocuba Road Upgrading' 'Comprehensive ESIA for EU-financed road upgrading in Zambezia Province, prepared for BCEOM.') + (RC 'project-en1-vilanculos.html' 'Roads &amp; Bridges &bull; 2002' 'ESMP &mdash; EN1, Nhachengue&ndash;Vilanculos' 'ESMP for EU-financed EN1 rehabilitation in Inhambane Province &mdash; one of Enviestudos&rsquo; founding projects.'))
$h19   = Hero '19' 'Roads &amp; Bridges &bull; Zambezia Province' 'Estradas e Pontes &bull; Prov&iacute;ncia de Zamb&eacute;zia' '2005&ndash;2008' 'Zambezia' 'BCEOM, France' 'European Union' 'ESIA Supervision EN1 Namacurra&ndash;Rio Ligonha'
W 'project-en1-namacurra.html' ($HEAD + '<meta name="description" content="Three-year ESIA Supervision for EN1 road rehabilitation, Namacurra to Rio Ligonha, EU financed, Zambezia Province — Enviestudos." /><title>ESIA Supervision EN1 Namacurra-Rio Ligonha | Enviestudos Projects</title>' + $HEADEND + $NAV + $h19 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body19 + $sd19 + '</div></div></section>' + $rel19 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 20 – EN1 Vilanculos
# ─────────────────────────────────────────────────────────────────────────────
$body20 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos prepared the Environmental and Social Management Plan (ESMP) for the EN1 Road rehabilitation between Nhachengue and Vilanculos in Inhambane Province, financed by the European Union and implemented by Austral Consultoria &amp; WSP-MBS. This project was one of Enviestudos&rsquo; founding projects, undertaken in 2002 shortly after the company&rsquo;s establishment.</p>
    <p>The EN1 Nhachengue&ndash;Vilanculos section passes through one of Mozambique&rsquo;s most important coastal tourist zones, including the approaches to Vilanculos town and the Bazaruto Archipelago area, requiring careful environmental management of road rehabilitation works.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos elaborou o Plano de Gest&atilde;o Ambiental e Social (PGAS) para a reabilita&ccedil;&atilde;o da Estrada EN1 entre Nhachengue e Vilanculos na Prov&iacute;ncia de Inhambane, financiada pela Uni&atilde;o Europeia e implementada pela Austral Consultoria &amp; WSP-MBS. Este projecto foi um dos projectos fundadores da Enviestudos, realizado em 2002 pouco ap&oacute;s a constitui&ccedil;&atilde;o da empresa.</p>
    <p>A sec&ccedil;&atilde;o EN1 Nhachengue&ndash;Vilanculos atravessa uma das zonas costeiras tur&iacute;sticas mais importantes de Mo&ccedil;ambique, incluindo as imediações da cidade de Vilanculos e do Arquip&eacute;lago de Bazaruto, exigindo uma cuidadosa gest&atilde;o ambiental das obras de reabilita&ccedil;&atilde;o rodovi&aacute;ria.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Review of existing ESIA documentation for the EN1 Nhachengue&ndash;Vilanculos section</li>
    <li>Site assessment of environmental sensitivities along the road corridor in Inhambane Province</li>
    <li>Preparation of an integrated ESMP tailored to the coastal tourism context</li>
    <li>Environmental mitigation measures for road construction near coastal and dune habitats</li>
    <li>Construction phase environmental management guidelines and procedures</li>
    <li>ESMP monitoring framework and reporting requirements</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Revis&atilde;o da documenta&ccedil;&atilde;o de EIA existente para a sec&ccedil;&atilde;o EN1 Nhachengue&ndash;Vilanculos</li>
    <li>Avalia&ccedil;&atilde;o de campo das sensibilidades ambientais ao longo do corredor rodovi&aacute;rio na Prov&iacute;ncia de Inhambane</li>
    <li>Elabora&ccedil;&atilde;o de um PGAS integrado adaptado ao contexto de turismo costeiro</li>
    <li>Medidas de mitiga&ccedil;&atilde;o ambiental para constru&ccedil;&atilde;o rodovi&aacute;ria perto de habitats costeiros e de dunas</li>
    <li>Directrizes e procedimentos de gest&atilde;o ambiental da fase de constru&ccedil;&atilde;o</li>
    <li>Quadro de monitoriza&ccedil;&atilde;o do PGAS e requisitos de relato</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Coastal dunes &amp; beaches:</strong> Protection of coastal dune ecosystems and beach habitats near the EN1 corridor south of Vilanculos.</li>
    <li><strong>Bazaruto Archipelago proximity:</strong> Environmental sensitivity of construction near the internationally recognised Bazaruto Archipelago marine park.</li>
    <li><strong>Tourism infrastructure:</strong> Impact management for road construction activities in proximity to existing tourist facilities and lodges.</li>
    <li><strong>Dust &amp; visual impact:</strong> Management of dust, noise, and visual impacts on the tourist environment during construction.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Dunas costeiras e praias:</strong> Prote&ccedil;&atilde;o dos ecossistemas de dunas costeiras e habitats de praia perto do corredor EN1 a sul de Vilanculos.</li>
    <li><strong>Proximidade ao Arquip&eacute;lago de Bazaruto:</strong> Sensibilidade ambiental da constru&ccedil;&atilde;o perto do parque marinho do Arquip&eacute;lago de Bazaruto, internacionalmente reconhecido.</li>
    <li><strong>Infraestrutura tur&iacute;stica:</strong> Gest&atilde;o de impactos das actividades de constru&ccedil;&atilde;o de estradas na proximidade de instala&ccedil;&otilde;es e alojamentos tur&iacute;sticos existentes.</li>
    <li><strong>P&oacute; e impacto visual:</strong> Gest&atilde;o do p&oacute;, ru&iacute;do e impactos visuais no ambiente tur&iacute;stico durante a constru&ccedil;&atilde;o.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>The ESMP for EN1 Nhachengue&ndash;Vilanculos provided EU-compliant environmental management documentation for one of Mozambique&rsquo;s most environmentally sensitive road corridors. Delivered in 2002 as one of Enviestudos&rsquo; first projects, it helped establish the company&rsquo;s reputation and capabilities in the country&rsquo;s transport infrastructure sector.</p></div>
  <div class="lang-pt"><p>O PGAS para a EN1 Nhachengue&ndash;Vilanculos forneceu documenta&ccedil;&atilde;o de gest&atilde;o ambiental em conformidade com a UE para um dos corredores rodovi&aacute;rios mais sensíveis do ambiente em Mo&ccedil;ambique. Entregue em 2002 como um dos primeiros projectos da Enviestudos, ajudou a estabelecer a reputa&ccedil;&atilde;o e as capacidades da empresa no sector de infraestrutura de transportes do pa&iacute;s.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">EU</span><span class="project-tag">ESMP</span><span class="project-tag">Road EN1</span><span class="project-tag">Inhambane</span><span class="project-tag">Coastal</span>
  </div>
</div>
'@

$sd20  = Sidebar 'Roads &amp; Bridges' '2002' 'Inhambane' 'Austral Consultoria &amp; WSP-MBS' 'European Union' 'ESMP &bull; Environmental Guidelines &bull; Monitoring Framework' "<a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a><a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a>"
$rel20 = RelSection ((RC 'project-en1-namacurra.html' 'Roads &amp; Bridges &bull; 2005&ndash;2008' 'ESIA Supervision &mdash; EN1, Namacurra&ndash;Rio Ligonha' 'Three-year ESIA supervision for EU-financed EN1 road rehabilitation in Zambezia Province.') + (RC 'project-milange-esia.html' 'Roads &amp; Bridges &bull; 2007&ndash;2008' 'ESIA &mdash; Milange&ndash;Mocuba Road Upgrading' 'Comprehensive ESIA for EU-financed road upgrading in Zambezia Province, prepared for BCEOM.'))
$h20   = Hero '20' 'Roads &amp; Bridges &bull; Inhambane Province' 'Estradas e Pontes &bull; Prov&iacute;ncia de Inhambane' '2002' 'Inhambane' 'Austral Consultoria &amp; WSP-MBS' 'European Union' 'ESMP EN1 Nhachengue&ndash;Vilanculos'
W 'project-en1-vilanculos.html' ($HEAD + '<meta name="description" content="ESMP for EN1 road rehabilitation, Nhachengue to Vilanculos, Inhambane Province, EU financed — Enviestudos." /><title>ESMP Road EN1 Nhachengue-Vilanculos | Enviestudos Projects</title>' + $HEADEND + $NAV + $h20 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body20 + $sd20 + '</div></div></section>' + $rel20 + $CTA + $FOOT + '</body></html>')

Write-Host "Projects 12-20 written."
