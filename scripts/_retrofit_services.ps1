
$dir = "C:\Users\Dell\Documents\EnviEstudos"
$enc = New-Object System.Text.UTF8Encoding($false)
function W($name, $html) { [System.IO.File]::WriteAllText("$dir\$name", $html, $enc); Write-Host "OK: $name" }

$NAV_SVC = '<nav class="navbar solid" role="navigation" aria-label="Main navigation"><div class="nav-inner"><a href="index.html" class="nav-logo" aria-label="Home"><img src="logo/logo.svg" alt="Enviestudos Logo" /><div class="nav-logo-text"><span class="nav-logo-name">ENVIESTUDOS</span><span class="nav-logo-tagline" data-i18n="nav.tagline">Consultoria Ambiental &amp; Servi&ccedil;os</span></div></a><ul class="nav-links" role="list"><li><a href="index.html" data-i18n="nav.home">Home</a></li><li><a href="about.html" data-i18n="nav.about">About</a></li><li><a href="services.html" class="active" data-i18n="nav.services">Services</a></li><li><a href="projects.html" data-i18n="nav.projects">Projects</a></li><li><a href="contact.html" data-i18n="nav.contact">Contact</a></li></ul><div class="nav-lang"><a href="contact.html" class="btn btn-primary nav-cta" data-i18n="nav.quote">Get a Quote</a><button class="lang-toggle" aria-label="Switch language" data-i18n-aria="lang.aria"><span class="lang-flag">&#127760;</span><span data-i18n="lang.switch">PT</span></button></div><button class="nav-hamburger" aria-label="Toggle menu" aria-expanded="false"><span></span><span></span><span></span></button></div></nav><div class="mobile-nav" role="dialog" aria-label="Mobile navigation"><a href="index.html" data-i18n="nav.home">Home</a><a href="about.html" data-i18n="nav.about">About</a><a href="services.html" class="active" data-i18n="nav.services">Services</a><a href="projects.html" data-i18n="nav.projects">Projects</a><a href="contact.html" data-i18n="nav.contact">Contact</a><a href="contact.html" class="btn btn-primary" data-i18n="nav.consultation">Get a Consultation</a><button class="lang-toggle" data-i18n-aria="lang.aria"><span class="lang-flag">&#127760;</span><span data-i18n="lang.switch">PT</span></button></div>'

$FOOT = '<footer role="contentinfo"><div class="container"><div class="footer-grid"><div class="footer-brand"><a href="index.html" class="nav-logo"><img src="logo/logo.svg" alt="Enviestudos Logo" style="height:40px;" /><div class="nav-logo-text"><span class="nav-logo-name">ENVIESTUDOS</span><span class="nav-logo-tagline" data-i18n="nav.tagline">Consultoria Ambiental &amp; Servi&ccedil;os</span></div></a><p data-i18n="footer.brand.desc">Pragmatic environmental solutions for sustainable development in Mozambique.</p></div><div class="footer-col"><h5 data-i18n="footer.col.services">Services</h5><ul class="footer-links"><li><a href="service-esia.html" data-i18n="footer.link.esia">Environmental Impact Assessment</a></li><li><a href="service-audit.html" data-i18n="footer.link.audits">Environmental Audits</a></li><li><a href="service-monitoring.html" data-i18n="footer.link.supervision">Supervision</a></li><li><a href="service-rap.html" data-i18n="footer.link.rap">Resettlement Plans</a></li></ul></div><div class="footer-col"><h5 data-i18n="footer.col.company">Company</h5><ul class="footer-links"><li><a href="about.html" data-i18n="footer.link.about">About Us</a></li><li><a href="projects.html" data-i18n="footer.link.projects">Projects</a></li><li><a href="contact.html" data-i18n="footer.link.contact">Contact</a></li></ul></div><div class="footer-col"><h5 data-i18n="footer.col.contact">Contact</h5><div class="footer-contact-items"><div class="footer-contact-item"><svg viewBox="0 0 24 24"><path d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/><path d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/></svg>Rua Viana da Mota NR.72, Maputo</div><div class="footer-contact-item"><svg viewBox="0 0 24 24"><path d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"/></svg>+258 82/84 3289330</div></div></div></div><div class="footer-bottom"><p class="footer-copy"><span data-i18n="footer.copy">&copy; 2025 Enviestudos, Consultoria Ambiental &amp; Servi&ccedil;os, Lda.</span></p><div class="footer-legal"><a href="#" data-i18n="footer.privacy">Privacy Policy</a><a href="#" data-i18n="footer.terms">Terms of Use</a></div></div></div></footer><div class="whatsapp-float" aria-label="Chat on WhatsApp"><span class="whatsapp-tooltip" data-i18n="wa.tooltip">Chat with us</span><a href="#" class="whatsapp-float-btn" data-wa data-i18n-aria="wa.chat"><svg viewBox="0 0 24 24" aria-hidden="true"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/></svg></a></div><button class="back-top" aria-label="Back to top"><svg viewBox="0 0 24 24" aria-hidden="true"><path d="M5 15l7-7 7 7" stroke="white" stroke-width="2.5" fill="none" stroke-linecap="round"/></svg></button><script src="js/main.js"></script><script src="js/i18n.js"></script>'

$SVGEIA = '<svg viewBox="0 0 24 24"><path d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"/></svg>'
$SVGSUP = '<svg viewBox="0 0 24 24"><path d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"/><path d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"/></svg>'
$SVGRAP = '<svg viewBox="0 0 24 24"><path d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z"/></svg>'
$SVGAUD = '<svg viewBox="0 0 24 24"><path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"/></svg>'

# ─────────────────────────────────────────────────────────────────────────────
# service-esia.html
# ─────────────────────────────────────────────────────────────────────────────
$esia = @'
<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Environmental and Social Impact Assessment (ESIA) services by Enviestudos — scoping reports, public consultations, ESMP preparation, and regulatory licensing support in Mozambique." />
<title>ESIA Services | Enviestudos</title>
<link rel="preconnect" href="https://fonts.googleapis.com" /><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" /></head><body>
'@
$esia += $NAV_SVC
$esia += @'

<header class="page-hero"><div class="container"><div class="page-hero-content">
  <div class="page-hero-label"><span class="lang-en">Environmental &amp; Social Assessment</span><span class="lang-pt">Avalia&ccedil;&atilde;o Ambiental e Social</span></div>
  <h1 data-i18n="svc.esia.title">Environmental &amp; Social Impact Assessment</h1>
  <p class="page-hero-desc" data-i18n="svc.esia.tagline">Full-cycle ESIA studies that meet Mozambican regulatory requirements and international funder standards.</p>
  <nav class="breadcrumb" aria-label="Breadcrumb" style="margin-top:1.5rem;">
    <a href="index.html" data-i18n="bc.home">Home</a><span>&rsaquo;</span>
    <a href="services.html" data-i18n="nav.services">Services</a><span>&rsaquo;</span>
    <span data-i18n="svc.esia.title">ESIA</span>
  </nav>
</div></div></header>

<section class="section-pad" style="background:var(--clr-white);"><div class="container"><div class="detail-layout">
<div class="detail-body reveal">

  <h2 data-i18n="svc.detail.whatwedo">What We Do</h2>
  <div class="lang-en"><p>Enviestudos delivers end-to-end Environmental and Social Impact Assessment studies for infrastructure, extractive industry, energy, and urban development projects in Mozambique. Our studies satisfy both national regulations (Decree 54/2015 and its amendments) and international funder safeguard frameworks including World Bank OP/BP 4.01, African Development Bank IESIA, and EU Environmental Impact Assessment directives.</p>
  <ul>
    <li>Project categorisation and submission of the Instruction Process (Processo de Instrução) to ANAMA</li>
    <li>Pre-feasibility Environmental Scoping Reports</li>
    <li>Terms of Reference (ToR) preparation and regulatory submission</li>
    <li>Baseline surveys: ecology, hydrology, air quality, noise, socioeconomics, cultural heritage</li>
    <li>Community and stakeholder public consultation facilitation</li>
    <li>Impact identification, prediction, and significance evaluation</li>
    <li>Mitigation hierarchy development and ESMP preparation</li>
    <li>Full ESIA Report preparation in Portuguese and English</li>
    <li>Regulatory review support through to Licença Ambiental issuance</li>
  </ul></div>
  <div class="lang-pt"><p>A Enviestudos realiza estudos de Avalia&ccedil;&atilde;o de Impacto Ambiental e Social de ciclo completo para projectos de infraestrutura, ind&uacute;stria extractiva, energia e desenvolvimento urbano em Mo&ccedil;ambique. Os nossos estudos satisfazem tanto os regulamentos nacionais (Decreto 54/2015 e suas altera&ccedil;&otilde;es) como os quadros de salvaguarda dos financiadores internacionais, incluindo OP/BP 4.01 do Banco Mundial, IESIA do Banco Africano de Desenvolvimento e as directivas de Avalia&ccedil;&atilde;o de Impacto Ambiental da UE.</p>
  <ul>
    <li>Categoriza&ccedil;&atilde;o de projectos e submiss&atilde;o do Processo de Instru&ccedil;&atilde;o ao ANAMA</li>
    <li>Relat&oacute;rios de Delimita&ccedil;&atilde;o Ambiental de Pr&eacute;-viabilidade</li>
    <li>Elabora&ccedil;&atilde;o dos Termos de Refer&ecirc;ncia (ToR) e submiss&atilde;o regulat&oacute;ria</li>
    <li>Levantamentos de base: ecologia, hidrologia, qualidade do ar, ru&iacute;do, socioecon&oacute;mica, patrim&oacute;nio cultural</li>
    <li>Facilita&ccedil;&atilde;o de consultas p&uacute;blicas com a comunidade e partes interessadas</li>
    <li>Identifica&ccedil;&atilde;o, previs&atilde;o e avalia&ccedil;&atilde;o da signific&acirc;ncia dos impactos</li>
    <li>Desenvolvimento da hierarquia de mitiga&ccedil;&atilde;o e elabora&ccedil;&atilde;o do PGAS</li>
    <li>Elabora&ccedil;&atilde;o do Relat&oacute;rio de ESIA completo em Portugu&ecirc;s e Ingl&ecirc;s</li>
    <li>Apoio na revis&atilde;o regulat&oacute;ria at&eacute; &agrave; emiss&atilde;o da Licen&ccedil;a Ambiental</li>
  </ul></div>

  <h2 data-i18n="svc.detail.process">Our Process</h2>
  <div class="detail-process">
    <div class="detail-process-step">
      <div class="step-num">1</div>
      <div class="step-body"><h4 class="lang-en">Scoping &amp; Categorisation</h4><h4 class="lang-pt">Delimita&ccedil;&atilde;o e Categoriza&ccedil;&atilde;o</h4>
        <p class="lang-en">Project categorisation under Mozambican regulations, Scoping Report preparation, and submission of the Instruction Process (Processo de Instrução) to ANAMA.</p>
        <p class="lang-pt">Categoriza&ccedil;&atilde;o do projecto nos termos dos regulamentos mo&ccedil;ambicanos, elabora&ccedil;&atilde;o do Relat&oacute;rio de Delimita&ccedil;&atilde;o e submiss&atilde;o do Processo de Instru&ccedil;&atilde;o ao ANAMA.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">2</div>
      <div class="step-body"><h4 class="lang-en">Terms of Reference</h4><h4 class="lang-pt">Termos de Refer&ecirc;ncia</h4>
        <p class="lang-en">Preparation and submission of study Terms of Reference, incorporating regulatory feedback and aligning scope with funder requirements.</p>
        <p class="lang-pt">Elabora&ccedil;&atilde;o e submiss&atilde;o dos Termos de Refer&ecirc;ncia do estudo, incorporando o feedback regulat&oacute;rio e alinhando o &acirc;mbito com os requisitos dos financiadores.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">3</div>
      <div class="step-body"><h4 class="lang-en">Baseline Studies</h4><h4 class="lang-pt">Estudos de Base</h4>
        <p class="lang-en">Field surveys covering ecology, hydrology, air, noise, soils, cultural heritage, and socioeconomics &mdash; conducted with qualified specialists and participatory methods.</p>
        <p class="lang-pt">Levantamentos de campo abrangendo ecologia, hidrologia, ar, ru&iacute;do, solos, patrim&oacute;nio cultural e socioecon&oacute;mica &mdash; realizados com especialistas qualificados e m&eacute;todos participativos.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">4</div>
      <div class="step-body"><h4 class="lang-en">Public Consultations</h4><h4 class="lang-pt">Consultas P&uacute;blicas</h4>
        <p class="lang-en">Facilitation of community meetings and stakeholder consultation sessions in local languages, with formal documentation of community feedback and concerns.</p>
        <p class="lang-pt">Facilita&ccedil;&atilde;o de reuni&otilde;es comunit&aacute;rias e sess&otilde;es de consulta das partes interessadas em l&iacute;nguas locais, com documenta&ccedil;&atilde;o formal do feedback e preocupa&ccedil;&otilde;es da comunidade.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">5</div>
      <div class="step-body"><h4 class="lang-en">Impact Assessment &amp; ESMP</h4><h4 class="lang-pt">Avalia&ccedil;&atilde;o de Impactos e PGAS</h4>
        <p class="lang-en">Systematic impact identification, prediction, and significance evaluation, followed by mitigation measure design integrated into the Environmental and Social Management Plan.</p>
        <p class="lang-pt">Identifica&ccedil;&atilde;o sistem&aacute;tica de impactos, previs&atilde;o e avalia&ccedil;&atilde;o da signific&acirc;ncia, seguida da concep&ccedil;&atilde;o de medidas de mitiga&ccedil;&atilde;o integradas no Plano de Gest&atilde;o Ambiental e Social.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">6</div>
      <div class="step-body"><h4 class="lang-en">Report &amp; Licensing</h4><h4 class="lang-pt">Relat&oacute;rio e Licenciamento</h4>
        <p class="lang-en">Preparation of the final bilingual ESIA report, regulatory submission, and continued support throughout the licensing review process to Licença Ambiental issuance.</p>
        <p class="lang-pt">Elabora&ccedil;&atilde;o do relat&oacute;rio final de ESIA biling&uuml;e, submiss&atilde;o regulat&oacute;ria e apoio cont&iacute;nuo durante o processo de revis&atilde;o do licenciamento at&eacute; &agrave; emiss&atilde;o da Licen&ccedil;a Ambiental.</p>
      </div>
    </div>
  </div>

  <h2 data-i18n="svc.detail.standards">Standards Applied</h2>
  <div class="tags-row">
    <span class="project-tag">Decreto 54/2015</span>
    <span class="project-tag">World Bank OP/BP 4.01</span>
    <span class="project-tag">AfDB IESIA Guidelines</span>
    <span class="project-tag">IFC Performance Standards</span>
    <span class="project-tag">EU EIA Directive</span>
    <span class="project-tag">ISO 14001</span>
  </div>
</div>

<aside class="detail-sidebar reveal reveal-delay-2">
  <div class="sidebar-card">
    <div class="sidebar-card-title" data-i18n="svc.detail.facts">Service Facts</div>
    <div class="sidebar-row"><span class="sidebar-row-label">20+</span><span class="sidebar-row-value lang-en">ESIA studies delivered</span><span class="sidebar-row-value lang-pt">estudos de ESIA entregues</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label">6</span><span class="sidebar-row-value lang-en">Mozambican provinces covered</span><span class="sidebar-row-value lang-pt">Prov&iacute;ncias mo&ccedil;ambicanas cobertas</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label">2002</span><span class="sidebar-row-value lang-en">Delivering studies since</span><span class="sidebar-row-value lang-pt">A entregar estudos desde</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label lang-en">Languages</span><span class="sidebar-row-label lang-pt">L&iacute;nguas</span><span class="sidebar-row-value">PT / EN</span></div>
  </div>
  <div class="sidebar-card">
    <div class="sidebar-card-title" data-i18n="svc.detail.svc-links">Related Services</div>
    <div class="sidebar-links">
      <a href="service-monitoring.html" class="sidebar-link">__SVGSUP__<span class="lang-en">Environmental Supervision</span><span class="lang-pt">Supervis&atilde;o Ambiental</span></a>
      <a href="service-audit.html" class="sidebar-link">__SVGAUD__<span class="lang-en">Environmental Audits</span><span class="lang-pt">Auditorias Ambientais</span></a>
      <a href="service-rap.html" class="sidebar-link">__SVGRAP__<span class="lang-en">Resettlement Plans (RAP)</span><span class="lang-pt">Planos de Reassentamento (RAP)</span></a>
    </div>
  </div>
</aside>
</div></div></section>

<section class="section-pad" style="background:var(--clr-light-bg);"><div class="container">
  <div class="text-center reveal">
    <div class="section-label" data-i18n="svc.detail.proj-links">Related Projects</div>
    <h2 class="section-title" data-i18n="svc.detail.more">More Services</h2>
  </div>
  <div class="related-grid" style="margin-top:2rem;">
    <a href="project-chongoene.html" class="related-card reveal reveal-delay-1">
      <span class="related-card-label">Infrastructure &bull; Gaza &bull; 2022</span>
      <h4>ESIA &mdash; Port Infrastructure Construction, Chongoene</h4>
      <p class="lang-en">Full ESIA for coastal port development in Gaza Province, financed by Chinese Bank.</p>
      <p class="lang-pt">ESIA completo para o desenvolvimento portu&aacute;rio costeiro na Prov&iacute;ncia de Gaza, financiado por Banco Chin&ecirc;s.</p>
      <span class="related-card-arrow" data-i18n="proj.detail.view">View Project &rarr;</span>
    </a>
    <a href="project-lurio.html" class="related-card reveal reveal-delay-2">
      <span class="related-card-label">Roads &amp; Bridges &bull; 2021&ndash;2022</span>
      <h4>ESIA &mdash; Bridge over L&uacute;rio River</h4>
      <p class="lang-en">Cross-province bridge ESIA connecting Niassa and Nampula, financed by Chinese Bank.</p>
      <p class="lang-pt">ESIA de ponte inter-provincial ligando Niassa e Nampula, financiado por Banco Chin&ecirc;s.</p>
      <span class="related-card-arrow" data-i18n="proj.detail.view">View Project &rarr;</span>
    </a>
    <a href="project-cuamba-road.html" class="related-card reveal reveal-delay-3">
      <span class="related-card-label">Roads &bull; Niassa &bull; 2016&ndash;2017</span>
      <h4>ESIA &amp; ESMP &mdash; Cuamba&ndash;Lichinga Road</h4>
      <p class="lang-en">Environmental study for road upgrading in Niassa Province, financed by the African Development Bank.</p>
      <p class="lang-pt">Estudo ambiental para a reabilita&ccedil;&atilde;o rodo vi&aacute;ria na Prov&iacute;ncia de Niassa, financiado pelo Banco Africano de Desenvolvimento.</p>
      <span class="related-card-arrow" data-i18n="proj.detail.view">View Project &rarr;</span>
    </a>
  </div>
</div></section>

<section class="cta-section section-pad"><div class="container"><div class="cta-inner reveal">
  <div class="section-label" data-i18n="svc.cta.label">Let''s Work Together</div>
  <h2 data-i18n="svc.cta.title">Need an ESIA for Your Project?</h2>
  <p data-i18n="svc.cta.desc">We work with project developers, consultants, and funders across Mozambique. Contact us to discuss your study requirements.</p>
  <div class="cta-actions">
    <a href="contact.html" class="btn btn-primary" data-i18n="svc.cta.btn1">Get a Quote</a>
    <a href="services.html" class="btn btn-outline" data-i18n="svc.detail.all">All Services</a>
  </div>
</div></div></section>
'@
$esia += $FOOT + '</body></html>'
$esia = $esia.Replace('__SVGSUP__', $SVGSUP).Replace('__SVGAUD__', $SVGAUD).Replace('__SVGRAP__', $SVGRAP)
W 'service-esia.html' $esia

# ─────────────────────────────────────────────────────────────────────────────
# service-audit.html
# ─────────────────────────────────────────────────────────────────────────────
$audit = @'
<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Environmental audit services by Enviestudos — compliance audits, operational due diligence, EHS management system reviews, and post-construction audits for projects in Mozambique." />
<title>Environmental Audit Services | Enviestudos</title>
<link rel="preconnect" href="https://fonts.googleapis.com" /><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" /></head><body>
'@
$audit += $NAV_SVC
$audit += @'

<header class="page-hero"><div class="container"><div class="page-hero-content">
  <div class="page-hero-label"><span class="lang-en">Compliance &amp; Due Diligence</span><span class="lang-pt">Conformidade e Due Diligence</span></div>
  <h1 data-i18n="svc.audit.title">Environmental Audits</h1>
  <p class="page-hero-desc" data-i18n="svc.audit.tagline">Independent, evidence-based audits assessing environmental compliance, EHS management systems, and operational performance.</p>
  <nav class="breadcrumb" aria-label="Breadcrumb" style="margin-top:1.5rem;">
    <a href="index.html" data-i18n="bc.home">Home</a><span>&rsaquo;</span>
    <a href="services.html" data-i18n="nav.services">Services</a><span>&rsaquo;</span>
    <span data-i18n="svc.audit.title">Environmental Audits</span>
  </nav>
</div></div></header>

<section class="section-pad" style="background:var(--clr-white);"><div class="container"><div class="detail-layout">
<div class="detail-body reveal">

  <h2 data-i18n="svc.detail.whatwedo">What We Do</h2>
  <div class="lang-en"><p>Enviestudos conducts independent environmental audits for operating projects, infrastructure assets, and industrial facilities in Mozambique. Our audits provide rigorous, evidence-based assessments against national regulations, international standards, and project-specific environmental commitments.</p>
  <p>We provide four primary audit types, each tailored to specific project phases and client needs:</p></div>
  <div class="lang-pt"><p>A Enviestudos realiza auditorias ambientais independentes para projectos em opera&ccedil;&atilde;o, activos de infraestrutura e instala&ccedil;&otilde;es industriais em Mo&ccedil;ambique. As nossas auditorias fornecem avalia&ccedil;&otilde;es rigorosas e baseadas em evid&ecirc;ncias face aos regulamentos nacionais, normas internacionais e compromissos ambientais espec&iacute;ficos do projecto.</p>
  <p>Fornecemos quatro tipos prim&aacute;rios de auditoria, cada um adaptado a fases espec&iacute;ficas do projecto e &agrave;s necessidades do cliente:</p></div>

  <div class="audit-types" style="margin-top:1.5rem;">
    <div class="audit-type-card" style="border-left:3px solid var(--clr-accent);padding:1rem 1.25rem;margin-bottom:1rem;background:var(--clr-light-bg);border-radius:0 6px 6px 0;">
      <h4 class="lang-en">A &mdash; Compliance Audits</h4><h4 class="lang-pt">A &mdash; Auditorias de Conformidade</h4>
      <p class="lang-en">Assessment of project compliance with Mozambican environmental law, Licença Ambiental conditions, and applicable international standards. Identifies gaps and provides a corrective action register.</p>
      <p class="lang-pt">Avalia&ccedil;&atilde;o da conformidade do projecto com a legisla&ccedil;&atilde;o ambiental mo&ccedil;ambicana, condi&ccedil;&otilde;es da Licen&ccedil;a Ambiental e normas internacionais aplic&aacute;veis. Identifica lacunas e fornece um registo de ac&ccedil;&otilde;es correctivas.</p>
    </div>
    <div class="audit-type-card" style="border-left:3px solid var(--clr-accent);padding:1rem 1.25rem;margin-bottom:1rem;background:var(--clr-light-bg);border-radius:0 6px 6px 0;">
      <h4 class="lang-en">B &mdash; EHS Management System Reviews</h4><h4 class="lang-pt">B &mdash; Revis&otilde;es do Sistema de Gest&atilde;o de HSA</h4>
      <p class="lang-en">Evaluation of EHS management systems against ISO 14001, ISO 45001, and project ESMP commitments, covering procedures, records, organisational capacity, and performance monitoring.</p>
      <p class="lang-pt">Avalia&ccedil;&atilde;o dos sistemas de gest&atilde;o de HSA face &agrave; ISO 14001, ISO 45001 e compromissos do PGAS do projecto, abrangendo procedimentos, registos, capacidade organizacional e monitoriza&ccedil;&atilde;o do desempenho.</p>
    </div>
    <div class="audit-type-card" style="border-left:3px solid var(--clr-accent);padding:1rem 1.25rem;margin-bottom:1rem;background:var(--clr-light-bg);border-radius:0 6px 6px 0;">
      <h4 class="lang-en">C &mdash; Post-Construction Audits (PCA)</h4><h4 class="lang-pt">C &mdash; Auditorias P&oacute;s-Constru&ccedil;&atilde;o (APC)</h4>
      <p class="lang-en">Verification that construction-phase mitigation measures were implemented as specified in the ESMP, assessing residual impacts and determining whether additional remedial action is required.</p>
      <p class="lang-pt">Verifica&ccedil;&atilde;o de que as medidas de mitiga&ccedil;&atilde;o da fase de constru&ccedil;&atilde;o foram implementadas conforme especificado no PGAS, avaliando os impactos residuais e determinando se &eacute; necess&aacute;ria ac&ccedil;&atilde;o correctiva adicional.</p>
    </div>
    <div class="audit-type-card" style="border-left:3px solid var(--clr-accent);padding:1rem 1.25rem;margin-bottom:1rem;background:var(--clr-light-bg);border-radius:0 6px 6px 0;">
      <h4 class="lang-en">D &mdash; Environmental Due Diligence (EDD)</h4><h4 class="lang-pt">D &mdash; Due Diligence Ambiental (DDA)</h4>
      <p class="lang-en">Pre-acquisition or pre-investment screening of environmental liabilities, regulatory compliance history, and EHS risk profile for transactions involving Mozambican assets or operations.</p>
      <p class="lang-pt">Triagem pr&eacute;-aquisi&ccedil;&atilde;o ou pr&eacute;-investimento de passivos ambientais, hist&oacute;rico de conformidade regulat&oacute;ria e perfil de risco de HSA para transa&ccedil;&otilde;es envolvendo activos ou opera&ccedil;&otilde;es mo&ccedil;ambicanas.</p>
    </div>
  </div>

  <h2 data-i18n="svc.detail.process">Audit Methodology</h2>
  <div class="detail-process">
    <div class="detail-process-step">
      <div class="step-num">1</div>
      <div class="step-body"><h4 class="lang-en">Scope Definition</h4><h4 class="lang-pt">Defini&ccedil;&atilde;o do &Acirc;mbito</h4>
        <p class="lang-en">Desk review of applicable regulations, Licença Ambiental conditions, ESMP commitments, and previous audit findings to define the audit scope, criteria, and protocol.</p>
        <p class="lang-pt">Revis&atilde;o documental dos regulamentos aplic&aacute;veis, condi&ccedil;&otilde;es da Licen&ccedil;a Ambiental, compromissos do PGAS e conclus&otilde;es de auditorias anteriores para definir o &acirc;mbito, crit&eacute;rios e protocolo da auditoria.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">2</div>
      <div class="step-body"><h4 class="lang-en">Field Assessment</h4><h4 class="lang-pt">Avalia&ccedil;&atilde;o de Campo</h4>
        <p class="lang-en">On-site inspection, document review, records examination, interviews with EHS personnel and operators, and physical verification of mitigation measures and monitoring systems.</p>
        <p class="lang-pt">Inspec&ccedil;&atilde;o no local, revis&atilde;o documental, exame de registos, entrevistas com o pessoal de HSA e operadores, e verifica&ccedil;&atilde;o f&iacute;sica das medidas de mitiga&ccedil;&atilde;o e sistemas de monitoriza&ccedil;&atilde;o.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">3</div>
      <div class="step-body"><h4 class="lang-en">Gap Analysis</h4><h4 class="lang-pt">An&aacute;lise de Lacunas</h4>
        <p class="lang-en">Structured comparison of observed conditions against audit criteria, with each finding classified by compliance status and significance level.</p>
        <p class="lang-pt">Compara&ccedil;&atilde;o estruturada das condi&ccedil;&otilde;es observadas face aos crit&eacute;rios de auditoria, com cada conclus&atilde;o classificada por estado de conformidade e n&iacute;vel de signific&acirc;ncia.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">4</div>
      <div class="step-body"><h4 class="lang-en">Report &amp; Corrective Action Plan</h4><h4 class="lang-pt">Relat&oacute;rio e Plano de Ac&ccedil;&atilde;o Correctiva</h4>
        <p class="lang-en">Preparation of the audit report with findings, ratings, and a prioritised Corrective and Preventive Action Plan (CAPA) with responsible parties and implementation timelines.</p>
        <p class="lang-pt">Elabora&ccedil;&atilde;o do relat&oacute;rio de auditoria com conclus&otilde;es, classifica&ccedil;&otilde;es e um Plano de Ac&ccedil;&atilde;o Correctiva e Preventiva (PACP) priorizado com as partes respons&aacute;veis e prazos de implementa&ccedil;&atilde;o.</p>
      </div>
    </div>
  </div>

  <h2 data-i18n="svc.detail.standards">Standards Applied</h2>
  <div class="tags-row">
    <span class="project-tag">Decreto 54/2015</span>
    <span class="project-tag">ISO 14001:2015</span>
    <span class="project-tag">ISO 45001:2018</span>
    <span class="project-tag">World Bank ESMS</span>
    <span class="project-tag">IFC Performance Standards</span>
    <span class="project-tag">CAPA Framework</span>
  </div>
</div>

<aside class="detail-sidebar reveal reveal-delay-2">
  <div class="sidebar-card">
    <div class="sidebar-card-title" data-i18n="svc.detail.facts">Service Facts</div>
    <div class="sidebar-row"><span class="sidebar-row-label">4</span><span class="sidebar-row-value lang-en">Audit types offered</span><span class="sidebar-row-value lang-pt">Tipos de auditoria oferecidos</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label lang-en">Scope</span><span class="sidebar-row-label lang-pt">&Acirc;mbito</span><span class="sidebar-row-value lang-en">National &amp; International Standards</span><span class="sidebar-row-value lang-pt">Normas Nacionais e Internacionais</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label lang-en">Output</span><span class="sidebar-row-label lang-pt">Produto</span><span class="sidebar-row-value lang-en">Audit Report + CAPA</span><span class="sidebar-row-value lang-pt">Relat&oacute;rio + PACP</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label lang-en">Languages</span><span class="sidebar-row-label lang-pt">L&iacute;nguas</span><span class="sidebar-row-value">PT / EN</span></div>
  </div>
  <div class="sidebar-card">
    <div class="sidebar-card-title" data-i18n="svc.detail.svc-links">Related Services</div>
    <div class="sidebar-links">
      <a href="service-esia.html" class="sidebar-link">__SVGEIA__<span class="lang-en">ESIA Services</span><span class="lang-pt">Servi&ccedil;os de ESIA</span></a>
      <a href="service-monitoring.html" class="sidebar-link">__SVGSUP__<span class="lang-en">Environmental Supervision</span><span class="lang-pt">Supervis&atilde;o Ambiental</span></a>
    </div>
  </div>
</aside>
</div></div></section>

<section class="cta-section section-pad"><div class="container"><div class="cta-inner reveal">
  <div class="section-label" data-i18n="svc.cta.label">Let''s Work Together</div>
  <h2 data-i18n="svc.cta.title">Need an Environmental Audit?</h2>
  <p data-i18n="svc.cta.desc">We provide independent, rigorous environmental audits for operating projects across Mozambique. Contact us to discuss your audit requirements.</p>
  <div class="cta-actions">
    <a href="contact.html" class="btn btn-primary" data-i18n="svc.cta.btn1">Get a Quote</a>
    <a href="services.html" class="btn btn-outline" data-i18n="svc.detail.all">All Services</a>
  </div>
</div></div></section>
'@
$audit += $FOOT + '</body></html>'
$audit = $audit.Replace('__SVGEIA__', $SVGEIA).Replace('__SVGSUP__', $SVGSUP)
W 'service-audit.html' $audit

# ─────────────────────────────────────────────────────────────────────────────
# service-monitoring.html
# ─────────────────────────────────────────────────────────────────────────────
$mon = @'
<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Environmental and EHS supervision services by Enviestudos — construction monitoring, contractor oversight, ESMP compliance verification, and environmental monitoring for Mozambique projects." />
<title>Environmental Supervision &amp; Monitoring | Enviestudos</title>
<link rel="preconnect" href="https://fonts.googleapis.com" /><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" /></head><body>
'@
$mon += $NAV_SVC
$mon += @'

<header class="page-hero"><div class="container"><div class="page-hero-content">
  <div class="page-hero-label"><span class="lang-en">EHS Construction Supervision</span><span class="lang-pt">Supervis&atilde;o Ambiental e de Constru&ccedil;&atilde;o</span></div>
  <h1 data-i18n="svc.mon.title">Environmental Supervision &amp; Monitoring</h1>
  <p class="page-hero-desc" data-i18n="svc.mon.tagline">On-site EHS supervision and environmental monitoring to ensure construction contractors implement ESMP commitments and meet regulatory requirements.</p>
  <nav class="breadcrumb" aria-label="Breadcrumb" style="margin-top:1.5rem;">
    <a href="index.html" data-i18n="bc.home">Home</a><span>&rsaquo;</span>
    <a href="services.html" data-i18n="nav.services">Services</a><span>&rsaquo;</span>
    <span data-i18n="svc.mon.title">Environmental Supervision</span>
  </nav>
</div></div></header>

<section class="section-pad" style="background:var(--clr-white);"><div class="container"><div class="detail-layout">
<div class="detail-body reveal">

  <h2 data-i18n="svc.detail.whatwedo">What We Do</h2>
  <div class="lang-en"><p>Enviestudos provides experienced, on-site EHS supervision for infrastructure construction projects &mdash; roads, bridges, buildings, water systems, and energy infrastructure &mdash; across Mozambique. Our supervisors verify that contractors implement the Environmental and Social Management Plan (ESMP) in full, providing the client, funder, and regulator with independent evidence of environmental and EHS performance.</p>
  <ul>
    <li>Resident Environmental and EHS Supervisor deployment on construction sites</li>
    <li>ESMP implementation verification and contractor oversight</li>
    <li>Environmental monitoring programme execution (water, air, noise, soil)</li>
    <li>Non-conformance identification, documentation, and follow-up</li>
    <li>EHS incident reporting, investigation support, and tracking</li>
    <li>Contractor EHS capacity building and toolbox talk facilitation</li>
    <li>Monthly, quarterly, and annual Environmental and EHS Supervision Reports</li>
    <li>Environmental monitoring data management and reporting</li>
    <li>Community Liaison Officer support and grievance mechanism management</li>
    <li>Regulatory liaison and inspection support</li>
  </ul></div>
  <div class="lang-pt"><p>A Enviestudos fornece supervis&atilde;o de HSA experiente e no local para projectos de constru&ccedil;&atilde;o de infraestrutura &mdash; estradas, pontes, edif&iacute;cios, sistemas de &aacute;gua e infraestrutura energ&eacute;tica &mdash; em todo Mo&ccedil;ambique. Os nossos supervisores verificam que os empreiteiros implementam o Plano de Gest&atilde;o Ambiental e Social (PGAS) na &iacute;ntegra, fornecendo ao cliente, ao financiador e ao regulador evid&ecirc;ncias independentes do desempenho ambiental e de HSA.</p>
  <ul>
    <li>Destacamento de Supervisor Ambiental e de HSA Residente nos estaleiros de constru&ccedil;&atilde;o</li>
    <li>Verifica&ccedil;&atilde;o da implementa&ccedil;&atilde;o do PGAS e supervis&atilde;o do empreiteiro</li>
    <li>Execu&ccedil;&atilde;o do programa de monitoriza&ccedil;&atilde;o ambiental (&aacute;gua, ar, ru&iacute;do, solo)</li>
    <li>Identifica&ccedil;&atilde;o, documenta&ccedil;&atilde;o e seguimento de n&atilde;o-conformidades</li>
    <li>Reporte de incidentes de HSA, apoio a investiga&ccedil;&otilde;es e seguimento</li>
    <li>Capacita&ccedil;&atilde;o em HSA dos empreiteiros e facilita&ccedil;&atilde;o de toolbox talks</li>
    <li>Relat&oacute;rios de Supervis&atilde;o Ambiental e de HSA mensais, trimestrais e anuais</li>
    <li>Gest&atilde;o e reporte de dados de monitoriza&ccedil;&atilde;o ambiental</li>
    <li>Apoio ao Of&iacute;cio de Liga&ccedil;&atilde;o Comunit&aacute;ria e gest&atilde;o do mecanismo de queixas</li>
    <li>Contacto com o regulador e apoio a inspec&ccedil;&otilde;es</li>
  </ul></div>

  <h2 data-i18n="svc.detail.process">Our Process</h2>
  <div class="detail-process">
    <div class="detail-process-step">
      <div class="step-num">1</div>
      <div class="step-body"><h4 class="lang-en">Mobilisation &amp; Planning</h4><h4 class="lang-pt">Mobiliza&ccedil;&atilde;o e Planeamento</h4>
        <p class="lang-en">Review of ESMP, construction programme, and contractor EHS plans. Preparation of the Environmental Supervision Plan and monitoring programme, and mobilisation of resident supervisory personnel.</p>
        <p class="lang-pt">Revis&atilde;o do PGAS, programa de constru&ccedil;&atilde;o e planos de HSA do empreiteiro. Prepara&ccedil;&atilde;o do Plano de Supervis&atilde;o Ambiental e programa de monitoriza&ccedil;&atilde;o, e mobiliza&ccedil;&atilde;o do pessoal supervisor residente.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">2</div>
      <div class="step-body"><h4 class="lang-en">Contractor Induction</h4><h4 class="lang-pt">Indu&ccedil;&atilde;o do Empreiteiro</h4>
        <p class="lang-en">EHS induction training for contractor personnel, covering ESMP requirements, site-specific environmental sensitivities, incident reporting procedures, and the project grievance mechanism.</p>
        <p class="lang-pt">Forma&ccedil;&atilde;o de indu&ccedil;&atilde;o em HSA para o pessoal do empreiteiro, cobrindo os requisitos do PGAS, sensibilidades ambientais espec&iacute;ficas do local, procedimentos de reporte de incidentes e o mecanismo de queixas do projecto.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">3</div>
      <div class="step-body"><h4 class="lang-en">Daily Site Supervision</h4><h4 class="lang-pt">Supervis&atilde;o Di&aacute;ria no Local</h4>
        <p class="lang-en">Resident supervisor on site during active construction, conducting daily inspections, documenting observations, recording non-conformances, and communicating directly with contractor EHS staff.</p>
        <p class="lang-pt">Supervisor residente no local durante a constru&ccedil;&atilde;o activa, realizando inspec&ccedil;&otilde;es di&aacute;rias, documentando observa&ccedil;&otilde;es, registando n&atilde;o-conformidades e comunicando directamente com o pessoal de HSA do empreiteiro.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">4</div>
      <div class="step-body"><h4 class="lang-en">Environmental Monitoring</h4><h4 class="lang-pt">Monitoriza&ccedil;&atilde;o Ambiental</h4>
        <p class="lang-en">Scheduled environmental sampling and measurement against ESMP-defined parameters: water quality, air quality, noise levels, sediment, and vegetation recovery indicators.</p>
        <p class="lang-pt">Amostragem e medi&ccedil;&atilde;o ambiental programadas face aos par&acirc;metros definidos no PGAS: qualidade da &aacute;gua, qualidade do ar, n&iacute;veis de ru&iacute;do, sedimentos e indicadores de recupera&ccedil;&atilde;o da vegeta&ccedil;&atilde;o.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">5</div>
      <div class="step-body"><h4 class="lang-en">Non-Conformance Management</h4><h4 class="lang-pt">Gest&atilde;o de N&atilde;o-Conformidades</h4>
        <p class="lang-en">Formal issuance of Non-Conformance Reports (NCRs), tracking corrective actions through to close-out, and escalation to client and regulator as required.</p>
        <p class="lang-pt">Emiss&atilde;o formal de Relat&oacute;rios de N&atilde;o-Conformidade (RNCs), seguimento das ac&ccedil;&otilde;es correctivas at&eacute; ao encerramento e escalada para o cliente e o regulador conforme necess&aacute;rio.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">6</div>
      <div class="step-body"><h4 class="lang-en">Reporting</h4><h4 class="lang-pt">Reporte</h4>
        <p class="lang-en">Preparation and delivery of monthly, quarterly, and annual EHS supervision reports to the client and funder, documenting compliance status, monitoring results, incidents, and NCR status.</p>
        <p class="lang-pt">Elabora&ccedil;&atilde;o e entrega de relat&oacute;rios de supervis&atilde;o de HSA mensais, trimestrais e anuais ao cliente e ao financiador, documentando o estado de conformidade, resultados de monitoriza&ccedil;&atilde;o, incidentes e estado dos RNCs.</p>
      </div>
    </div>
  </div>

  <h2 data-i18n="svc.detail.standards">Standards Applied</h2>
  <div class="tags-row">
    <span class="project-tag">Decreto 54/2015</span>
    <span class="project-tag">World Bank EHS Guidelines</span>
    <span class="project-tag">IFC Performance Standards</span>
    <span class="project-tag">ISO 14001:2015</span>
    <span class="project-tag">ISO 45001:2018</span>
    <span class="project-tag">EU EHS Directives</span>
  </div>
</div>

<aside class="detail-sidebar reveal reveal-delay-2">
  <div class="sidebar-card">
    <div class="sidebar-card-title" data-i18n="svc.detail.facts">Service Facts</div>
    <div class="sidebar-row"><span class="sidebar-row-label">10+</span><span class="sidebar-row-value lang-en">supervision assignments</span><span class="sidebar-row-value lang-pt">miss&otilde;es de supervis&atilde;o</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label lang-en">Sectors</span><span class="sidebar-row-label lang-pt">Sectores</span><span class="sidebar-row-value lang-en">Roads, Water, Energy</span><span class="sidebar-row-value lang-pt">Estradas, &Aacute;gua, Energia</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label lang-en">Deployment</span><span class="sidebar-row-label lang-pt">Destacamento</span><span class="sidebar-row-value lang-en">Resident or periodic</span><span class="sidebar-row-value lang-pt">Residente ou peri&oacute;dico</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label lang-en">Languages</span><span class="sidebar-row-label lang-pt">L&iacute;nguas</span><span class="sidebar-row-value">PT / EN</span></div>
  </div>
  <div class="sidebar-card">
    <div class="sidebar-card-title" data-i18n="svc.detail.svc-links">Related Services</div>
    <div class="sidebar-links">
      <a href="service-esia.html" class="sidebar-link">__SVGEIA__<span class="lang-en">ESIA Services</span><span class="lang-pt">Servi&ccedil;os de ESIA</span></a>
      <a href="service-audit.html" class="sidebar-link">__SVGAUD__<span class="lang-en">Environmental Audits</span><span class="lang-pt">Auditorias Ambientais</span></a>
    </div>
  </div>
</aside>
</div></div></section>

<section class="section-pad" style="background:var(--clr-light-bg);"><div class="container">
  <div class="text-center reveal">
    <div class="section-label" data-i18n="svc.detail.proj-links">Related Projects</div>
    <h2 class="section-title" data-i18n="svc.detail.more">More Services</h2>
  </div>
  <div class="related-grid" style="margin-top:2rem;">
    <a href="project-milange-decommission.html" class="related-card reveal reveal-delay-1">
      <span class="related-card-label">Roads &bull; Zambezia &bull; 2018&ndash;2020</span>
      <h4>EHS Supervision &mdash; Milange Road Decommission</h4>
      <p class="lang-en">EHS supervision for road decommissioning and reinstatement works in Zambezia Province.</p>
      <p class="lang-pt">Supervis&atilde;o de HSA para trabalhos de desactivação e reintegra&ccedil;&atilde;o de estrada na Prov&iacute;ncia de Zambézia.</p>
      <span class="related-card-arrow" data-i18n="proj.detail.view">View Project &rarr;</span>
    </a>
    <a href="project-nacala-water.html" class="related-card reveal reveal-delay-2">
      <span class="related-card-label">Water &bull; Nampula &bull; 2017&ndash;2018</span>
      <h4>EHS Supervision &mdash; Nacala Water Supply</h4>
      <p class="lang-en">Environmental and EHS supervision for Nacala water supply and distribution infrastructure works.</p>
      <p class="lang-pt">Supervis&atilde;o ambiental e de HSA para obras de abastecimento e distribui&ccedil;&atilde;o de &aacute;gua em Nacala.</p>
      <span class="related-card-arrow" data-i18n="proj.detail.view">View Project &rarr;</span>
    </a>
    <a href="project-n103-roads.html" class="related-card reveal reveal-delay-3">
      <span class="related-card-label">Roads &bull; Zambezia / Niassa &bull; 2014&ndash;2016</span>
      <h4>EHS Supervision &mdash; Roads N103 &amp; R657</h4>
      <p class="lang-en">EHS supervision for World Bank-financed N103 and R657 road construction in northern Mozambique.</p>
      <p class="lang-pt">Supervis&atilde;o de HSA para constru&ccedil;&atilde;o das estradas N103 e R657 financiadas pelo Banco Mundial no norte de Mo&ccedil;ambique.</p>
      <span class="related-card-arrow" data-i18n="proj.detail.view">View Project &rarr;</span>
    </a>
  </div>
</div></section>

<section class="cta-section section-pad"><div class="container"><div class="cta-inner reveal">
  <div class="section-label" data-i18n="svc.cta.label">Let''s Work Together</div>
  <h2 data-i18n="svc.cta.title">Need EHS Supervision for Your Construction Project?</h2>
  <p data-i18n="svc.cta.desc">We provide resident and periodic EHS supervisors for infrastructure construction across Mozambique. Contact us to discuss your project requirements.</p>
  <div class="cta-actions">
    <a href="contact.html" class="btn btn-primary" data-i18n="svc.cta.btn1">Get a Quote</a>
    <a href="services.html" class="btn btn-outline" data-i18n="svc.detail.all">All Services</a>
  </div>
</div></div></section>
'@
$mon += $FOOT + '</body></html>'
$mon = $mon.Replace('__SVGEIA__', $SVGEIA).Replace('__SVGAUD__', $SVGAUD)
W 'service-monitoring.html' $mon

# ─────────────────────────────────────────────────────────────────────────────
# service-rap.html
# ─────────────────────────────────────────────────────────────────────────────
$rap = @'
<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="Resettlement Action Plans (RAP) and Abbreviated Resettlement Action Plans (ARAP) by Enviestudos — socioeconomic surveys, asset inventories, compensation frameworks, and GRM design for Mozambique." />
<title>Resettlement Plans (RAP / ARAP) | Enviestudos</title>
<link rel="preconnect" href="https://fonts.googleapis.com" /><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" /></head><body>
'@
$rap += $NAV_SVC
$rap += @'

<header class="page-hero"><div class="container"><div class="page-hero-content">
  <div class="page-hero-label"><span class="lang-en">Social Safeguards &amp; Resettlement</span><span class="lang-pt">Salvaguardas Sociais e Reassentamento</span></div>
  <h1 data-i18n="svc.rap.title">Resettlement Action Plans (RAP / ARAP)</h1>
  <p class="page-hero-desc" data-i18n="svc.rap.tagline">Comprehensive RAP and ARAP preparation that balances regulatory requirements with community-centred, rights-based resettlement practice.</p>
  <nav class="breadcrumb" aria-label="Breadcrumb" style="margin-top:1.5rem;">
    <a href="index.html" data-i18n="bc.home">Home</a><span>&rsaquo;</span>
    <a href="services.html" data-i18n="nav.services">Services</a><span>&rsaquo;</span>
    <span data-i18n="svc.rap.title">RAP / ARAP</span>
  </nav>
</div></div></header>

<section class="section-pad" style="background:var(--clr-white);"><div class="container"><div class="detail-layout">
<div class="detail-body reveal">

  <h2 data-i18n="svc.detail.whatwedo">What We Do</h2>
  <div class="lang-en"><p>Enviestudos prepares Resettlement Action Plans (RAPs) and Abbreviated Resettlement Action Plans (ARAPs) for infrastructure and development projects that require the temporary or permanent displacement of people, structures, or livelihoods. Our work complies with Mozambican resettlement legislation and international funder standards including World Bank OP 4.12, IFC Performance Standard 5, and African Development Bank Involuntary Resettlement Policy.</p>
  <p>We approach resettlement as a rights-based process, working directly with affected communities to ensure that compensation and assistance packages genuinely restore or improve pre-project livelihoods.</p></div>
  <div class="lang-pt"><p>A Enviestudos elabora Planos de Ac&ccedil;&atilde;o de Reassentamento (RAPs) e Planos de Ac&ccedil;&atilde;o de Reassentamento Abreviados (ARAPs) para projectos de infraestrutura e desenvolvimento que exigem o deslocamento tempor&aacute;rio ou permanente de pessoas, estruturas ou meios de subsist&ecirc;ncia. O nosso trabalho cumpre a legisla&ccedil;&atilde;o de reassentamento mo&ccedil;ambicana e as normas dos financiadores internacionais, incluindo a OP 4.12 do Banco Mundial, a Norma de Desempenho 5 da IFC e a Pol&iacute;tica de Reassentamento Involunt&aacute;rio do Banco Africano de Desenvolvimento.</p>
  <p>Abordamos o reassentamento como um processo baseado em direitos, trabalhando directamente com as comunidades afectadas para garantir que os pacotes de compensa&ccedil;&atilde;o e assist&ecirc;ncia restaurem ou melhorem genuinamente os meios de subsist&ecirc;ncia pr&eacute;-projecto.</p></div>

  <h2 style="margin-top:2rem;" data-i18n="svc.detail.whatwedo">RAP vs ARAP</h2>
  <div class="lang-en">
    <p><strong>Full RAP:</strong> Required when projects cause significant physical or economic displacement &mdash; typically more than 200 people. Includes a comprehensive socioeconomic census, entitlements framework, livelihood restoration programme, and multi-year implementation and monitoring schedule.</p>
    <p><strong>Abbreviated RAP (ARAP):</strong> For projects affecting fewer than 200 people or where only minor impacts occur (e.g., loss of assets but no relocation). An ARAP covers asset inventory, compensation calculations, consultation records, and a GRM &mdash; prepared and approved more quickly than a full RAP.</p>
  </div>
  <div class="lang-pt">
    <p><strong>RAP Completo:</strong> Exigido quando os projectos causam deslocamento f&iacute;sico ou econ&oacute;mico significativo &mdash; tipicamente mais de 200 pessoas. Inclui um recenseamento socioecon&oacute;mico abrangente, quadro de direitos, programa de restauro de meios de subsist&ecirc;ncia e programa de implementa&ccedil;&atilde;o e monitoriza&ccedil;&atilde;o plurianual.</p>
    <p><strong>ARAP (Abreviado):</strong> Para projectos que afectam menos de 200 pessoas ou onde ocorrem apenas impactos menores (por exemplo, perda de bens mas sem relo&ccedil;aliza&ccedil;&atilde;o). Um ARAP abrange invent&aacute;rio de bens, c&aacute;lculos de compensa&ccedil;&atilde;o, registos de consultas e um MRQ &mdash; elaborado e aprovado mais rapidamente que um RAP completo.</p>
  </div>

  <h2 data-i18n="svc.detail.process">Our Process</h2>
  <div class="detail-process">
    <div class="detail-process-step">
      <div class="step-num">1</div>
      <div class="step-body"><h4 class="lang-en">Socioeconomic Baseline</h4><h4 class="lang-pt">Base Socioecon&oacute;mica</h4>
        <p class="lang-en">Household census and socioeconomic survey of the project-affected area, characterising livelihoods, income sources, land use, vulnerable groups, and existing community assets.</p>
        <p class="lang-pt">Recenseamento e inqu&eacute;rito socioecon&oacute;mico ao agg&eacute;regado familiar da &aacute;rea afectada pelo projecto, caracterizando meios de subsist&ecirc;ncia, fontes de rendimento, uso da terra, grupos vulner&aacute;veis e activos comunit&aacute;rios existentes.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">2</div>
      <div class="step-body"><h4 class="lang-en">Asset Inventory &amp; Valuation</h4><h4 class="lang-pt">Invent&aacute;rio e Avalia&ccedil;&atilde;o de Bens</h4>
        <p class="lang-en">Detailed, household-level inventory of all affected land, crops, structures, and community resources, with replacement-cost valuation in line with World Bank OP 4.12 and Mozambican law.</p>
        <p class="lang-pt">Invent&aacute;rio detalhado, ao n&iacute;vel do agg&eacute;regado, de todas as terras, culturas, estruturas e recursos comunit&aacute;rios afectados, com avalia&ccedil;&atilde;o ao custo de substitui&ccedil;&atilde;o em linha com a OP 4.12 do Banco Mundial e a lei mo&ccedil;ambicana.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">3</div>
      <div class="step-body"><h4 class="lang-en">Eligibility &amp; Entitlements Framework</h4><h4 class="lang-pt">Quadro de Elegibilidade e Direitos</h4>
        <p class="lang-en">Development of the cut-off date, eligibility criteria, and entitlements matrix covering all categories of loss, including those without formal land tenure.</p>
        <p class="lang-pt">Desenvolvimento da data de corte, crit&eacute;rios de elegibilidade e matriz de direitos abrangendo todas as categorias de perda, incluindo as sem posse formal da terra.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">4</div>
      <div class="step-body"><h4 class="lang-en">Community Consultation</h4><h4 class="lang-pt">Consulta Comunit&aacute;ria</h4>
        <p class="lang-en">Participatory consultation process conducted in local languages, covering entitlements, compensation options, relocation sites, livelihood assistance, and grievance procedures.</p>
        <p class="lang-pt">Processo de consulta participativa realizado em l&iacute;nguas locais, abrangendo direitos, op&ccedil;&otilde;es de compensa&ccedil;&atilde;o, locais de relocaliza&ccedil;&atilde;o, assist&ecirc;ncia aos meios de subsist&ecirc;ncia e procedimentos de queixas.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">5</div>
      <div class="step-body"><h4 class="lang-en">GRM Design</h4><h4 class="lang-pt">Concep&ccedil;&atilde;o do MRQ</h4>
        <p class="lang-en">Design of a project-level Grievance Redress Mechanism with accessible intake channels, defined response timelines, escalation pathways, and record-keeping requirements.</p>
        <p class="lang-pt">Concep&ccedil;&atilde;o de um Mecanismo de Recla&ccedil;&atilde;o e Queixas ao n&iacute;vel do projecto com canais de admiss&atilde;o acess&iacute;veis, prazos de resposta definidos, vias de escalada e requisitos de manuseamento de registos.</p>
      </div>
    </div>
    <div class="detail-process-step">
      <div class="step-num">6</div>
      <div class="step-body"><h4 class="lang-en">RAP / ARAP Report &amp; Implementation Support</h4><h4 class="lang-pt">Relat&oacute;rio RAP / ARAP e Apoio &agrave; Implementa&ccedil;&atilde;o</h4>
        <p class="lang-en">Preparation and submission of the full RAP or ARAP report, support during funder and regulatory review, and optional assistance during implementation including monitoring of compensation delivery and livelihood restoration.</p>
        <p class="lang-pt">Elabora&ccedil;&atilde;o e submiss&atilde;o do relat&oacute;rio RAP ou ARAP completo, apoio durante a revis&atilde;o pelo financiador e regulador, e assist&ecirc;ncia opcional durante a implementa&ccedil;&atilde;o, incluindo a monitoriza&ccedil;&atilde;o da entrega de compensa&ccedil;&atilde;o e restauro de meios de subsist&ecirc;ncia.</p>
      </div>
    </div>
  </div>

  <h2 data-i18n="svc.detail.standards">Standards Applied</h2>
  <div class="tags-row">
    <span class="project-tag">World Bank OP 4.12</span>
    <span class="project-tag">IFC PS5</span>
    <span class="project-tag">AfDB Resettlement Policy</span>
    <span class="project-tag">Lei n.&ordm; 19/97 (Lei de Terras)</span>
    <span class="project-tag">Decreto n.&ordm; 31/2012</span>
    <span class="project-tag">GBV/SEA Prevention</span>
  </div>
</div>

<aside class="detail-sidebar reveal reveal-delay-2">
  <div class="sidebar-card">
    <div class="sidebar-card-title" data-i18n="svc.detail.facts">Service Facts</div>
    <div class="sidebar-row"><span class="sidebar-row-label">RAP &amp; ARAP</span><span class="sidebar-row-value lang-en">Both study types</span><span class="sidebar-row-value lang-pt">Ambos os tipos de estudo</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label lang-en">Includes</span><span class="sidebar-row-label lang-pt">Inclui</span><span class="sidebar-row-value lang-en">GRM + GBV Mechanism</span><span class="sidebar-row-value lang-pt">MRQ + Mecanismo VBG</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label lang-en">Standards</span><span class="sidebar-row-label lang-pt">Normas</span><span class="sidebar-row-value">WB OP 4.12 / IFC PS5</span></div>
    <div class="sidebar-row"><span class="sidebar-row-label lang-en">Languages</span><span class="sidebar-row-label lang-pt">L&iacute;nguas</span><span class="sidebar-row-value">PT / EN</span></div>
  </div>
  <div class="sidebar-card">
    <div class="sidebar-card-title" data-i18n="svc.detail.svc-links">Related Services</div>
    <div class="sidebar-links">
      <a href="service-esia.html" class="sidebar-link">__SVGEIA__<span class="lang-en">ESIA Services</span><span class="lang-pt">Servi&ccedil;os de ESIA</span></a>
      <a href="service-monitoring.html" class="sidebar-link">__SVGSUP__<span class="lang-en">Environmental Supervision</span><span class="lang-pt">Supervis&atilde;o Ambiental</span></a>
    </div>
  </div>
</aside>
</div></div></section>

<section class="section-pad" style="background:var(--clr-light-bg);"><div class="container">
  <div class="text-center reveal">
    <div class="section-label" data-i18n="svc.detail.proj-links">Related Projects</div>
    <h2 class="section-title" data-i18n="svc.detail.more">More Services</h2>
  </div>
  <div class="related-grid" style="margin-top:2rem;">
    <a href="project-beira.html" class="related-card reveal reveal-delay-1">
      <span class="related-card-label">Water &bull; Sofala &bull; 2021&ndash;2022</span>
      <h4>ARAP &mdash; FIPAG WASIS II Distribution Center, Beira</h4>
      <p class="lang-en">ARAP, GRM design, and GBV/SEA prevention mechanism for World Bank-financed water infrastructure in Beira.</p>
      <p class="lang-pt">ARAP, concep&ccedil;&atilde;o do MRQ e mecanismo de preven&ccedil;&atilde;o de VBG/EAS para infraestrutura de &aacute;gua financiada pelo Banco Mundial em Beira.</p>
      <span class="related-card-arrow" data-i18n="proj.detail.view">View Project &rarr;</span>
    </a>
  </div>
</div></section>

<section class="cta-section section-pad"><div class="container"><div class="cta-inner reveal">
  <div class="section-label" data-i18n="svc.cta.label">Let''s Work Together</div>
  <h2 data-i18n="svc.cta.title">Need a RAP or ARAP for Your Project?</h2>
  <p data-i18n="svc.cta.desc">We prepare RAPs and ARAPs to World Bank, IFC, and AfDB standards. Contact us to discuss your resettlement study requirements.</p>
  <div class="cta-actions">
    <a href="contact.html" class="btn btn-primary" data-i18n="svc.cta.btn1">Get a Quote</a>
    <a href="services.html" class="btn btn-outline" data-i18n="svc.detail.all">All Services</a>
  </div>
</div></div></section>
'@
$rap += $FOOT + '</body></html>'
$rap = $rap.Replace('__SVGEIA__', $SVGEIA).Replace('__SVGSUP__', $SVGSUP)
W 'service-rap.html' $rap

Write-Host "Done: 4 service pages retrofitted."
