
$dir = "C:\Users\Dell\Documents\EnviEstudos"
$enc = New-Object System.Text.UTF8Encoding($false)

function W($name, $html) {
    [System.IO.File]::WriteAllText("$dir\$name", $html, $enc)
    Write-Host "OK: $name"
}

# ── nav/footer snippets shared ──
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
# Project 8 – N103 & R657 Roads
# ─────────────────────────────────────────────────────────────────────────────
$body8 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos provided EHS supervision as part of the civil works supervision team for rehabilitation of Roads N103 and R657 (Magige&ndash;Etatara&ndash;Cuamba) spanning Zambezia and Niassa provinces, financed by the World Bank through Consulmar Mozambique.</p>
    <p>The role involved continuous monitoring of the contractor&rsquo;s compliance with the approved ESIA and Environmental Management Plan throughout the multi-year construction works.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos prestou servi&ccedil;os de supervis&atilde;o de HSA como parte da equipa de supervis&atilde;o de obras civis para a reabilita&ccedil;&atilde;o das Estradas N103 e R657 (Magige&ndash;Etatara&ndash;Cuamba) nas Prov&iacute;ncias de Zamb&eacute;zia e Niassa, financiadas pelo Banco Mundial, contratada atrav&eacute;s da Consulmar Mo&ccedil;ambique.</p>
    <p>A fun&ccedil;&atilde;o envolveu a monitoriza&ccedil;&atilde;o cont&iacute;nua da conformidade do empreiteiro com o EIA e o Plano de Gest&atilde;o Ambiental aprovados durante as obras de constru&ccedil;&atilde;o plurianuais.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Regular site inspections along the N103 and R657 road corridor across two provinces</li>
    <li>Monitoring of EHS mitigation measures per the approved ESIA and EMP</li>
    <li>Non-conformance tracking and corrective action follow-up</li>
    <li>Environmental inspection of borrow pits, quarries, and construction camps</li>
    <li>Health and safety performance monitoring of contractor workforce</li>
    <li>Community liaison and grievance monitoring along the road corridor</li>
    <li>Preparation of periodic EHS monitoring reports for the World Bank</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Inspec&ccedil;&otilde;es regulares de campo ao longo do corredor N103 e R657 em duas prov&iacute;ncias</li>
    <li>Monitoriza&ccedil;&atilde;o das medidas de mitiga&ccedil;&atilde;o de HSA conforme o EIA e PGA aprovados</li>
    <li>Registo de n&atilde;o-conformidades e seguimento de ac&ccedil;&otilde;es correctivas</li>
    <li>Inspec&ccedil;&atilde;o ambiental de zonas de empr&eacute;stimo, pedreiras e acampamentos de constru&ccedil;&atilde;o</li>
    <li>Monitoriza&ccedil;&atilde;o do desempenho de sa&uacute;de e seguran&ccedil;a da for&ccedil;a de trabalho</li>
    <li>Liga&ccedil;&atilde;o comunit&aacute;ria e monitoriza&ccedil;&atilde;o de queixas ao longo do corredor rodovi&aacute;rio</li>
    <li>Elabora&ccedil;&atilde;o de relat&oacute;rios peri&oacute;dicos de monitoriza&ccedil;&atilde;o de HSA para o Banco Mundial</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Multi-province corridor:</strong> EHS monitoring across a remote corridor spanning two provinces with varied ecological conditions.</li>
    <li><strong>Borrow pit rehabilitation:</strong> Ongoing monitoring of extraction site management and progressive rehabilitation.</li>
    <li><strong>River crossings:</strong> Environmental protection of watercourses during bridge construction and culvert installation.</li>
    <li><strong>HIV/AIDS prevention:</strong> Monitoring of workforce health programs in areas with high community interaction risk.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Conformidade no corredor multi-provincial:</strong> Monitoriza&ccedil;&atilde;o de HSA ao longo de um corredor rodovi&aacute;rio remoto abrangendo duas prov&iacute;ncias.</li>
    <li><strong>Reabilita&ccedil;&atilde;o de zonas de empr&eacute;stimo:</strong> Monitoriza&ccedil;&atilde;o cont&iacute;nua da gest&atilde;o dos locais de extra&ccedil;&atilde;o e reabilita&ccedil;&atilde;o progressiva.</li>
    <li><strong>Travessias fluviais:</strong> Prote&ccedil;&atilde;o ambiental dos cursos de &aacute;gua durante a constru&ccedil;&atilde;o de pontes e instala&ccedil;&atilde;o de aquedutos.</li>
    <li><strong>Preven&ccedil;&atilde;o do VIH/SIDA:</strong> Monitoriza&ccedil;&atilde;o dos programas de sa&uacute;de da for&ccedil;a de trabalho em &aacute;reas com elevado risco de intera&ccedil;&atilde;o comunit&aacute;ria.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>Continuous EHS supervision maintained World Bank environmental and social compliance throughout the N103 and R657 rehabilitation, ensuring approved mitigation measures were effectively implemented and documented across both provinces.</p></div>
  <div class="lang-pt"><p>A supervis&atilde;o cont&iacute;nua de HSA manteve a conformidade ambiental e social do Banco Mundial nas obras de reabilita&ccedil;&atilde;o das N103 e R657, garantindo que as medidas de mitiga&ccedil;&atilde;o aprovadas foram efectivamente implementadas e documentadas nas duas prov&iacute;ncias.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">World Bank</span><span class="project-tag">EHS Supervision</span><span class="project-tag">Roads</span><span class="project-tag">Zambezia</span><span class="project-tag">Niassa</span>
  </div>
</div>
'@

$sd8  = Sidebar 'Roads &amp; Bridges' '2014&ndash;2016' 'Zambezia / Niassa' 'Consulmar Mozambique' 'World Bank' 'EHS Supervision &bull; ESIA Monitoring &bull; Periodic Reports' "<a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a><a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a>"
$rel8 = RelSection ((RC 'project-n14-supervision.html' 'Roads &amp; Bridges &bull; Oct&ndash;Nov 2011' 'Supervision &mdash; N14 Road, Marrupa&ndash;Rua&ccedil;a (Lot B)' 'Health and Safety supervision for civil works on N14 Road in Niassa Province, World Bank financed.') + (RC 'project-en1-namacurra.html' 'Roads &amp; Bridges &bull; 2005&ndash;2008' 'ESIA Supervision &mdash; EN1, Namacurra&ndash;Rio Ligonha' 'Three-year ESIA supervision for EU-financed EN1 road rehabilitation in Zambezia Province.'))
$h8   = Hero '8' 'Roads &amp; Bridges &bull; Zambezia / Niassa Provinces' 'Estradas e Pontes &bull; Zamb&eacute;zia / Niassa' '2014&ndash;2016' 'Zambezia / Niassa' 'Consulmar Mozambique' 'World Bank' 'N103 &amp; R657 Roads EHS Supervision'
W 'project-n103-roads.html' ($HEAD + '<meta name="description" content="EHS supervision for Roads N103 and R657, Magige-Etatara-Cuamba, World Bank financed — Enviestudos." /><title>EHS Supervision Roads N103 and R657 | Enviestudos Projects</title>' + $HEADEND + $NAV + $h8 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body8 + $sd8 + '</div></div></section>' + $rel8 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 9 – N1 Rio Save
# ─────────────────────────────────────────────────────────────────────────────
$body9 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos prepared an Environmental Simplified Study (ESS) for the rehabilitation of Road N1 between Rio Save and Muxungue in Sofala Province, financed by the European Union. The study was prepared in support of SAI Consulting Engineers (India), who led the feasibility and engineering design work.</p>
    <p>The N1 is Mozambique&rsquo;s primary north-south trunk road, and this section connects the south with the central regions, passing through ecologically and socially sensitive areas of Sofala Province.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos elaborou um Estudo Ambiental Simplificado (EAS) para a reabilita&ccedil;&atilde;o da Estrada N1 entre o Rio Save e Muxungue na Prov&iacute;ncia de Sofala, financiado pela Uni&atilde;o Europeia. O estudo foi preparado em apoio &agrave; SAI Consulting Engineers (&Iacute;ndia), que liderou os estudos de viabilidade e projecto de engenharia.</p>
    <p>A N1 &eacute; a principal estrada nacional de Mo&ccedil;ambique no sentido norte-sul, e esta sec&ccedil;&atilde;o liga o sul &agrave;s regi&otilde;es centrais, atravessando &aacute;reas ecologicamente e socialmente sens&iacute;veis da Prov&iacute;ncia de Sofala.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Terms of Reference (ToR) preparation for the ESS study</li>
    <li>Environmental baseline assessment along the road corridor in Sofala Province</li>
    <li>Public consultation meetings with roadside communities</li>
    <li>Impact assessment for road rehabilitation and construction phases</li>
    <li>Environmental Management Plan (EMP) preparation</li>
    <li>Final ESS Report submission to Mozambican environmental authorities</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Elabora&ccedil;&atilde;o dos Termos de Refer&ecirc;ncia (ToR) para o estudo EAS</li>
    <li>Avalia&ccedil;&atilde;o de base ambiental ao longo do corredor rodovi&aacute;rio na Prov&iacute;ncia de Sofala</li>
    <li>Reuni&otilde;es de consulta p&uacute;blica com as comunidades marginais</li>
    <li>Avalia&ccedil;&atilde;o de impacto para as fases de reabilita&ccedil;&atilde;o e constru&ccedil;&atilde;o da estrada</li>
    <li>Elabora&ccedil;&atilde;o do Plano de Gest&atilde;o Ambiental (PGA)</li>
    <li>Submiss&atilde;o do Relat&oacute;rio Final de EAS &agrave;s autoridades ambientais mo&ccedil;ambicanas</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Corridor biodiversity:</strong> Ecological baseline of the road corridor in Sofala Province, including vegetation types and wildlife.</li>
    <li><strong>Rio Save crossing:</strong> Aquatic ecology and riverside habitat protection at the major river crossing.</li>
    <li><strong>Roadside communities:</strong> Impacts of construction activities on communities along the N1 rehabilitation section.</li>
    <li><strong>Drainage &amp; erosion:</strong> Erosion management and drainage improvement along the rehabilitated road sections.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Biodiversidade do corredor:</strong> Base ecol&oacute;gica do ambiente do corredor rodovi&aacute;rio na Prov&iacute;ncia de Sofala, incluindo tipos de vegeta&ccedil;&atilde;o e fauna.</li>
    <li><strong>Travessia do Rio Save:</strong> Ecologia aqu&aacute;tica e prote&ccedil;&atilde;o do habitat ribeirinho na travessia fluvial principal.</li>
    <li><strong>Comunidades marginais:</strong> Impactos das actividades de constru&ccedil;&atilde;o nas comunidades ao longo da sec&ccedil;&atilde;o de reabilita&ccedil;&atilde;o da N1.</li>
    <li><strong>Drenagem e eros&atilde;o:</strong> Gest&atilde;o da eros&atilde;o e melhoria da drenagem ao longo das sec&ccedil;&otilde;es reabilitadas.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>The ESS and EMP provided the EU and the Government of Mozambique with the required environmental documentation for the N1 Rio Save-Muxungue rehabilitation, meeting both Mozambican environmental law requirements and EU safeguard standards for transport infrastructure projects.</p></div>
  <div class="lang-pt"><p>O EAS e o PGA forneceram &agrave; UE e ao Governo de Mo&ccedil;ambique a documenta&ccedil;&atilde;o ambiental necess&aacute;ria para a reabilita&ccedil;&atilde;o da N1 Rio Save-Muxungue, cumprindo os requisitos da legisla&ccedil;&atilde;o ambiental mo&ccedil;ambicana e as normas de salvaguarda da UE para projectos de infraestrutura de transportes.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">EU</span><span class="project-tag">ESS</span><span class="project-tag">Road N1</span><span class="project-tag">Sofala</span><span class="project-tag">EMP</span>
  </div>
</div>
'@

$sd9  = Sidebar 'Roads &amp; Bridges' '2015&ndash;2016' 'Sofala' 'SAI Consulting Engineers, India' 'European Union' 'ESS &bull; ToR &bull; EMP &bull; Public Consultations' "<a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a><a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a>"
$rel9 = RelSection ((RC 'project-milange-esia.html' 'Roads &amp; Bridges &bull; 2007&ndash;2008' 'ESIA &mdash; Milange&ndash;Mocuba Road Upgrading' 'Comprehensive ESIA for EU-financed road upgrading in Zambezia Province, prepared for BCEOM.') + (RC 'project-en1-vilanculos.html' 'Roads &amp; Bridges &bull; 2002' 'ESMP &mdash; EN1, Nhachengue&ndash;Vilanculos' 'ESMP for EU-financed EN1 rehabilitation in Inhambane Province &mdash; one of Enviestudos'' founding projects.'))
$h9   = Hero '9' 'Roads &amp; Bridges &bull; Sofala Province' 'Estradas e Pontes &bull; Prov&iacute;ncia de Sofala' '2015&ndash;2016' 'Sofala' 'SAI Consulting Engineers, India' 'European Union' 'Road N1 Rio Save ESS'
W 'project-n1-save.html' ($HEAD + '<meta name="description" content="Environmental Simplified Study for Road N1 rehabilitation, Rio Save to Muxungue, Sofala Province, EU-financed — Enviestudos." /><title>ESS Road N1 Rio Save-Muxungue | Enviestudos Projects</title>' + $HEADEND + $NAV + $h9 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body9 + $sd9 + '</div></div></section>' + $rel9 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 10 – Incomati Bridge
# ─────────────────────────────────────────────────────────────────────────────
$body10 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos conducted a full ESIA for a new bridge over the Incomati River at Magude Village in Maputo Province, financed by the World Bank and prepared for SAI Consulting Engineers. This bridge aimed to improve connectivity for communities on both sides of the river in southern Mozambique.</p>
    <p>The Incomati River is an internationally significant transboundary watercourse shared by Mozambique, Swaziland, and South Africa, adding environmental complexity requiring careful assessment of cross-border hydrological impacts.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos realizou um EIA completo para uma nova ponte sobre o Rio Incomati na Aldeia de Magude, Prov&iacute;ncia de Maputo, financiado pelo Banco Mundial e preparado para a SAI Consulting Engineers. Esta ponte visava melhorar a conectividade para as comunidades em ambos os lados do rio no sul de Mo&ccedil;ambique.</p>
    <p>O Rio Incomati &eacute; um curso de &aacute;gua transfronteiri&ccedil;o partilhado por Mo&ccedil;ambique, Suz&iacute;landia e &Aacute;frica do Sul, acrescentando complexidade ambiental que exigiu uma cuidadosa avalia&ccedil;&atilde;o dos impactos hidrol&oacute;gicos transfronteiri&ccedil;os.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Pre-feasibility Environmental Scoping Report</li>
    <li>Terms of Reference (ToR) preparation and submission to ANAMA</li>
    <li>Baseline surveys: aquatic ecology, riparian vegetation, hydrology, socioeconomics</li>
    <li>Incomati River flood risk assessment and hydrological impact evaluation</li>
    <li>Public consultation meetings with Magude community</li>
    <li>Impact identification and significance evaluation</li>
    <li>Full ESIA Report and integrated ESMP preparation</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Relat&oacute;rio de Delimita&ccedil;&atilde;o de Pr&eacute;-viabilidade Ambiental</li>
    <li>Elabora&ccedil;&atilde;o dos Termos de Refer&ecirc;ncia (ToR) e submiss&atilde;o ao ANAMA</li>
    <li>Levantamentos de base: ecologia aqu&aacute;tica, vegeta&ccedil;&atilde;o rip&aacute;ria, hidrologia, socioecon&oacute;mica</li>
    <li>Avalia&ccedil;&atilde;o do risco de cheias e impacto hidrol&oacute;gico do Rio Incomati</li>
    <li>Reuni&otilde;es de consulta p&uacute;blica com a comunidade de Magude</li>
    <li>Identifica&ccedil;&atilde;o e avalia&ccedil;&atilde;o da signific&acirc;ncia dos impactos</li>
    <li>Elabora&ccedil;&atilde;o do Relat&oacute;rio Final de EIA e PGAS integrado</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Transboundary watercourse:</strong> Incomati River aquatic ecology and considerations for a watercourse shared across three countries.</li>
    <li><strong>Riparian &amp; wetland habitats:</strong> Riverside vegetation and wetland ecosystems requiring protection during bridge construction.</li>
    <li><strong>Hydrology &amp; flood risk:</strong> River flow assessment and flood resilience design requirements for the bridge structure.</li>
    <li><strong>Fishing community livelihoods:</strong> Impacts on fishing activities and river access for Magude communities.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Curso de &aacute;gua transfronteiri&ccedil;o:</strong> Ecologia aqu&aacute;tica do Rio Incomati e considera&ccedil;&otilde;es para um curso de &aacute;gua partilhado por tr&ecirc;s pa&iacute;ses.</li>
    <li><strong>Habitats rip&aacute;rios e h&uacute;midos:</strong> Vegeta&ccedil;&atilde;o ribeirinha e ecossistemas de zonas h&uacute;midas que requerem prote&ccedil;&atilde;o durante a constru&ccedil;&atilde;o da ponte.</li>
    <li><strong>Hidrologia e risco de cheias:</strong> Avalia&ccedil;&atilde;o do fluxo fluvial e requisitos de projecto de resili&ecirc;ncia a cheias para a estrutura da ponte.</li>
    <li><strong>Meios de subsist&ecirc;ncia da comunidade piscatora:</strong> Impactos nas actividades de pesca e no acesso ao rio para as comunidades de Magude.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>The World Bank-compliant ESIA enabled the Magude bridge project to advance through the regulatory approval process, providing comprehensive documentation meeting both Mozambican licensing requirements and World Bank environmental and social safeguard standards.</p></div>
  <div class="lang-pt"><p>O EIA em conformidade com o Banco Mundial permitiu que o projecto de ponte de Magude avan&ccedil;asse no processo de aprova&ccedil;&atilde;o regulat&oacute;ria, fornecendo documenta&ccedil;&atilde;o abrangente que cumpria os requisitos mo&ccedil;ambicanos e as normas de salvaguarda do Banco Mundial.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">World Bank</span><span class="project-tag">ESIA</span><span class="project-tag">Bridge</span><span class="project-tag">Incomati River</span><span class="project-tag">Maputo Province</span>
  </div>
</div>
'@

$sd10  = Sidebar 'Infrastructure' '2015' 'Maputo' 'SAI Consulting Engineers' 'World Bank' 'ESIA &bull; Scoping Report &bull; ToR &bull; ESMP &bull; Public Consultations' "<a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a><a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a>"
$rel10 = RelSection ((RC 'project-lurio.html' 'Roads &amp; Bridges &bull; 2021&ndash;2022' 'ESIA &mdash; Bridge over L&uacute;rio River' 'Full ESIA for cross-province bridge connecting Niassa and Nampula provinces, financed by Chinese Bank.') + (RC 'project-chongoene.html' 'Infrastructure &bull; 2022' 'ESIA &mdash; Port Infrastructure, Chongoene, Gaza' 'Full ESIA for new port infrastructure in Gaza Province, funded by World Bank.'))
$h10   = Hero '10' 'Infrastructure &bull; Maputo Province' 'Infraestrutura &bull; Prov&iacute;ncia de Maputo' '2015' 'Maputo' 'SAI Consulting Engineers' 'World Bank' 'Incomati Bridge ESIA, Magude'
W 'project-incomati-bridge.html' ($HEAD + '<meta name="description" content="ESIA for new bridge over Incomati River at Magude Village, Maputo Province, World Bank financed — Enviestudos." /><title>ESIA Bridge over Incomati River, Magude | Enviestudos Projects</title>' + $HEADEND + $NAV + $h10 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body10 + $sd10 + '</div></div></section>' + $rel10 + $CTA + $FOOT + '</body></html>')

# ─────────────────────────────────────────────────────────────────────────────
# Project 11 – Sanitation 3 Cities
# ─────────────────────────────────────────────────────────────────────────────
$body11 = @'
<div class="detail-layout"><div class="detail-body reveal">
  <h2 data-i18n="proj.detail.overview">Project Overview</h2>
  <div class="lang-en">
    <p>Enviestudos prepared ESIAs for sanitation improvement projects in three of Mozambique&rsquo;s major cities &mdash; Pemba, Nampula, and Quelimane &mdash; financed by the Millennium Challenge Corporation (MCC) Mozambique Compact. The study was prepared for Louis Berger SAS.</p>
    <p>Each city&rsquo;s sanitation improvements involved different infrastructure components, requiring site-specific environmental assessment tailored to each city&rsquo;s urban context while maintaining consistency with MCC&rsquo;s environmental guidelines.</p>
  </div>
  <div class="lang-pt">
    <p>A Enviestudos elaborou EIAs para projectos de melhoria do saneamento em tr&ecirc;s das principais cidades de Mo&ccedil;ambique &mdash; Pemba, Nampula e Quelimane &mdash; financiados pelo Millennium Challenge Corporation (MCC) Compact Mo&ccedil;ambique. O estudo foi preparado para a Louis Berger SAS.</p>
    <p>As melhorias de saneamento em cada cidade envolveram diferentes componentes de infraestrutura, exigindo uma avalia&ccedil;&atilde;o ambiental espec&iacute;fica adaptada ao contexto urbano de cada cidade.</p>
  </div>
  <h2 data-i18n="proj.detail.scope">Scope of Work</h2>
  <div class="lang-en"><ul>
    <li>Pre-feasibility Environmental Scoping Reports for each of the three cities</li>
    <li>Terms of Reference (ToR) preparation per city</li>
    <li>Multi-city baseline environmental and socioeconomic surveys</li>
    <li>Public consultation meetings in Pemba, Nampula, and Quelimane</li>
    <li>City-specific impact assessment for sanitation infrastructure components</li>
    <li>Integrated ESMPs for each city&rsquo;s sanitation improvement works</li>
    <li>Final ESIA Reports per city and overall consolidated report</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li>Relat&oacute;rios de Delimita&ccedil;&atilde;o de Pr&eacute;-viabilidade Ambiental para cada uma das tr&ecirc;s cidades</li>
    <li>Elabora&ccedil;&atilde;o dos Termos de Refer&ecirc;ncia (ToR) por cidade</li>
    <li>Levantamentos de base ambiental e socioecon&oacute;mica em v&aacute;rias cidades</li>
    <li>Reuni&otilde;es de consulta p&uacute;blica em Pemba, Nampula e Quelimane</li>
    <li>Avalia&ccedil;&atilde;o de impacto espec&iacute;fica por cidade para os componentes de infraestrutura de saneamento</li>
    <li>PGASs integrados para as obras de melhoria de saneamento de cada cidade</li>
    <li>Relat&oacute;rios Finais de EIA por cidade e relat&oacute;rio consolidado global</li>
  </ul></div>
  <h2 data-i18n="proj.detail.enviro">Environmental Considerations</h2>
  <div class="lang-en"><ul>
    <li><strong>Urban construction impacts:</strong> Site-specific construction impacts across three distinct city environments with different urban densities.</li>
    <li><strong>Groundwater &amp; water quality:</strong> Protection of groundwater resources and existing water sources during construction activities.</li>
    <li><strong>Community health:</strong> Positive health impact assessment of improved sanitation coverage and existing disease burden.</li>
    <li><strong>Waste management:</strong> Excavation spoil and construction waste management in complex urban settings across three cities.</li>
  </ul></div>
  <div class="lang-pt"><ul>
    <li><strong>Impactos da constru&ccedil;&atilde;o urbana:</strong> Impactos espec&iacute;ficos por local em tr&ecirc;s ambientes urbanos distintos com densidades e sensibilidades diferentes.</li>
    <li><strong>&Aacute;guas subterr&acirc;neas e qualidade da &aacute;gua:</strong> Prote&ccedil;&atilde;o dos recursos h&iacute;dricos subterr&acirc;neos durante as actividades de constru&ccedil;&atilde;o.</li>
    <li><strong>Sa&uacute;de comunit&aacute;ria:</strong> Avalia&ccedil;&atilde;o do impacto positivo na sa&uacute;de da melhoria da cobertura de saneamento.</li>
    <li><strong>Gest&atilde;o de res&iacute;duos:</strong> Gest&atilde;o de solos escavados e res&iacute;duos de constru&ccedil;&atilde;o em contextos urbanos complexos nas tr&ecirc;s cidades.</li>
  </ul></div>
  <h2 data-i18n="proj.detail.results">Results &amp; Impact</h2>
  <div class="lang-en"><p>The multi-city ESIA package provided MCC with compliant environmental documentation across all three Mozambican cities, supporting the successful implementation of the Millennium Challenge Corporation Compact sanitation improvements and contributing to improved public health outcomes.</p></div>
  <div class="lang-pt"><p>O pacote de EIA multi-cidade forneceu ao MCC documenta&ccedil;&atilde;o ambiental conforme para as tr&ecirc;s cidades mo&ccedil;ambicanas, apoiando a implementa&ccedil;&atilde;o bem-sucedida das melhorias de saneamento do Compact MCC e contribuindo para a melhoria dos resultados de sa&uacute;de p&uacute;blica.</p></div>
  <div class="tags-row" style="margin-top:1.5rem;">
    <span class="project-tag">MCC</span><span class="project-tag">ESIA</span><span class="project-tag">ESMP</span><span class="project-tag">Sanitation</span><span class="project-tag">Multi-City</span>
  </div>
</div>
'@

$sd11  = Sidebar 'Water &amp; Sanitation' '2010&ndash;2011' 'Multiple Provinces' 'Louis Berger SAS' 'MCC Mozambique' 'ESIA &bull; ToR &bull; ESMP &bull; Multi-City Public Consultations' "<a href='service-esia.html' class='sidebar-link'>$SVGEIA ESIA Services</a><a href='service-monitoring.html' class='sidebar-link'>$SVGSUP Environmental Supervision</a>"
$rel11 = RelSection ((RC 'project-nacala-water.html' 'Water &amp; Sanitation &bull; 2016&ndash;2018' 'Environmental Supervision &mdash; Nacala Porto Water Supply Network' 'Environmental supervision for IDA-financed water supply rehabilitation in Nampula Province.') + (RC 'project-aias-water.html' 'Water &amp; Sanitation &bull; 2011' 'Technical Assistance to AIAS &mdash; Water Supply &amp; Sanitation' 'ESIA and capacity building for AIAS water supply projects, World Bank financed.'))
$h11   = Hero '11' 'Water &amp; Sanitation &bull; Multiple Provinces' '&Aacute;gua e Saneamento &bull; V&aacute;rias Prov&iacute;ncias' '2010&ndash;2011' 'Multiple Provinces' 'Louis Berger SAS' 'MCC Mozambique' 'Sanitation ESIA, Three Cities'
W 'project-sanitation-cities.html' ($HEAD + '<meta name="description" content="ESIA for sanitation improvements in Pemba, Nampula and Quelimane, MCC Mozambique Compact financed — Enviestudos." /><title>ESIA Sanitation Improvements, Pemba Nampula Quelimane | Enviestudos Projects</title>' + $HEADEND + $NAV + $h11 + '<section class="section-pad" style="background:var(--clr-white);"><div class="container">' + $body11 + $sd11 + '</div></div></section>' + $rel11 + $CTA + $FOOT + '</body></html>')

Write-Host "Projects 8-11 written."
