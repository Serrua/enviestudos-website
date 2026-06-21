$dir = "C:\Users\Dell\Documents\EnviEstudos"
$enc = New-Object System.Text.UTF8Encoding($false)

function Fix($name, $replacements) {
    $path = "$dir\$name"
    $txt  = [System.IO.File]::ReadAllText($path)
    $count = 0
    foreach ($r in $replacements.GetEnumerator()) {
        if ($txt.Contains($r.Key)) {
            $txt = $txt.Replace($r.Key, $r.Value)
            $count++
        }
    }
    [System.IO.File]::WriteAllText($path, $txt, $enc)
    Write-Host "OK $name ($count replacements)"
}

# ═════════════════════════════════════════════════════════════════════════════
# GLOBAL REPLACEMENTS — applied to every project-*.html file
# ═════════════════════════════════════════════════════════════════════════════
$globalRep = [ordered]@{

  # ── Sidebar: Related Service link texts ──────────────────────────────────
  '</svg>ESIA Services</a>'                 = '</svg><span class="lang-en">ESIA Services</span><span class="lang-pt">Servi&ccedil;os de EIA</span></a>'
  '</svg>Environmental Supervision</a>'     = '</svg><span class="lang-en">Environmental Supervision</span><span class="lang-pt">Supervis&atilde;o Ambiental</span></a>'
  '</svg>Resettlement Plans (RAP)</a>'      = '</svg><span class="lang-en">Resettlement Plans (RAP)</span><span class="lang-pt">Planos de Reassentamento (PAR)</span></a>'
  '</svg>Resettlement Planning</a>'         = '</svg><span class="lang-en">Resettlement Planning</span><span class="lang-pt">Planeamento de Reassentamento</span></a>'
  '</svg>Environmental Audits</a>'          = '</svg><span class="lang-en">Environmental Audits</span><span class="lang-pt">Auditorias Ambientais</span></a>'

  # ── Sidebar: Sector values ────────────────────────────────────────────────
  '>Sector</span><span class="sidebar-row-value">Roads &amp; Bridges</span>'       = '>Sector</span><span class="sidebar-row-value"><span class="lang-en">Roads &amp; Bridges</span><span class="lang-pt">Estradas e Pontes</span></span>'
  '>Sector</span><span class="sidebar-row-value">Water &amp; Sanitation</span>'    = '>Sector</span><span class="sidebar-row-value"><span class="lang-en">Water &amp; Sanitation</span><span class="lang-pt">&Aacute;gua e Saneamento</span></span>'
  '>Sector</span><span class="sidebar-row-value">Port &amp; Infrastructure</span>' = '>Sector</span><span class="sidebar-row-value"><span class="lang-en">Port &amp; Infrastructure</span><span class="lang-pt">Porto e Infraestrutura</span></span>'
  '>Sector</span><span class="sidebar-row-value">Infrastructure</span>'            = '>Sector</span><span class="sidebar-row-value"><span class="lang-en">Infrastructure</span><span class="lang-pt">Infraestrutura</span></span>'
  '>Sector</span><span class="sidebar-row-value">Energy</span>'                    = '>Sector</span><span class="sidebar-row-value"><span class="lang-en">Energy</span><span class="lang-pt">Energia</span></span>'
  '>Sector</span><span class="sidebar-row-value">Mining</span>'                    = '>Sector</span><span class="sidebar-row-value"><span class="lang-en">Mining</span><span class="lang-pt">Minera&ccedil;&atilde;o</span></span>'

  # ── Related Case Studies: h4 titles ──────────────────────────────────────
  '<h4>ESIA &mdash; Bridge over L&uacute;rio River</h4>' = '<h4><span class="lang-en">ESIA &mdash; Bridge over L&uacute;rio River</span><span class="lang-pt">EIA &mdash; Ponte sobre o Rio L&uacute;rio</span></h4>'
  '<h4>ARAP &mdash; Distribution Center, Beira (FIPAG WASIS II)</h4>' = '<h4><span class="lang-en">ARAP &mdash; Distribution Center, Beira (FIPAG WASIS II)</span><span class="lang-pt">PAAR &mdash; Centro de Distribui&ccedil;&atilde;o, Beira (FIPAG WASIS II)</span></h4>'
  '<h4>ESIA &mdash; Port Infrastructure Construction, Chongoene</h4>' = '<h4><span class="lang-en">ESIA &mdash; Port Infrastructure Construction, Chongoene</span><span class="lang-pt">EIA &mdash; Constru&ccedil;&atilde;o de Infraestrutura Portu&aacute;ria, Chongoene</span></h4>'
  '<h4>ESIA &mdash; Milange&ndash;Mocuba Road Upgrading</h4>' = '<h4><span class="lang-en">ESIA &mdash; Milange&ndash;Mocuba Road Upgrading</span><span class="lang-pt">EIA &mdash; Reabilita&ccedil;&atilde;o da Estrada Milange&ndash;Mocuba</span></h4>'
  '<h4>ESIA Supervision &mdash; EN1, Namacurra&ndash;Rio Ligonha</h4>' = '<h4><span class="lang-en">ESIA Supervision &mdash; EN1, Namacurra&ndash;Rio Ligonha</span><span class="lang-pt">Supervis&atilde;o de EIA &mdash; EN1, Namacurra&ndash;Rio Ligonha</span></h4>'
  '<h4>ESMP &mdash; EN1, Nhachengue&ndash;Vilanculos</h4>' = '<h4><span class="lang-en">ESMP &mdash; EN1, Nhachengue&ndash;Vilanculos</span><span class="lang-pt">PGAS &mdash; EN1, Nhachengue&ndash;Vilanculos</span></h4>'
  '<h4>ESS Road N1 Rio Save&ndash;Muxungue</h4>' = '<h4><span class="lang-en">ESS Road N1 Rio Save&ndash;Muxungue</span><span class="lang-pt">EAS Estrada N1 Rio Save&ndash;Muxungue</span></h4>'
  '<h4>ESIA &mdash; Cuamba&ndash;Insaca &amp; Cuamba&ndash;Metarica Roads</h4>' = '<h4><span class="lang-en">ESIA &mdash; Cuamba&ndash;Insaca &amp; Cuamba&ndash;Metarica Roads</span><span class="lang-pt">EIA &mdash; Estradas Cuamba&ndash;Insaca e Cuamba&ndash;Metarica</span></h4>'
  '<h4>Environmental Supervision &mdash; Nacala Porto Water Supply Network</h4>' = '<h4><span class="lang-en">Environmental Supervision &mdash; Nacala Porto Water Supply Network</span><span class="lang-pt">Supervis&atilde;o Ambiental &mdash; Rede de Abastecimento de &Aacute;gua de Nacala Porto</span></h4>'
  '<h4>ESIA &mdash; Sanitation Improvements, Pemba, Nampula &amp; Quelimane</h4>' = '<h4><span class="lang-en">ESIA &mdash; Sanitation Improvements, Pemba, Nampula &amp; Quelimane</span><span class="lang-pt">EIA &mdash; Melhorias de Saneamento, Pemba, Nampula e Quelimane</span></h4>'
  '<h4>EMP Review &mdash; N14 Road Rehabilitation, Niassa</h4>' = '<h4><span class="lang-en">EMP Review &mdash; N14 Road Rehabilitation, Niassa</span><span class="lang-pt">Revis&atilde;o do PGA &mdash; Reabilita&ccedil;&atilde;o da Estrada N14, Niassa</span></h4>'
  '<h4>Technical Assistance to AIAS &mdash; Water Supply &amp; Sanitation</h4>' = '<h4><span class="lang-en">Technical Assistance to AIAS &mdash; Water Supply &amp; Sanitation</span><span class="lang-pt">Assist&ecirc;ncia T&eacute;cnica ao AIAS &mdash; Abastecimento de &Aacute;gua e Saneamento</span></h4>'
  '<h4>Supervision &mdash; N14 Road, Marrupa&ndash;Rua&ccedil;a (Lot B)</h4>' = '<h4><span class="lang-en">Supervision &mdash; N14 Road, Marrupa&ndash;Rua&ccedil;a (Lot B)</span><span class="lang-pt">Supervis&atilde;o &mdash; Estrada N14, Marrupa&ndash;Rua&ccedil;a (Lote B)</span></h4>'
  '<h4>H&amp;S Supervision &mdash; N14 Road, Marrupa&ndash;Rua&ccedil;a Lot B</h4>' = '<h4><span class="lang-en">H&amp;S Supervision &mdash; N14 Road, Marrupa&ndash;Rua&ccedil;a Lot B</span><span class="lang-pt">Supervis&atilde;o H&amp;S &mdash; Estrada N14, Marrupa&ndash;Rua&ccedil;a Lote B</span></h4>'
  '<h4>EHS Supervision &mdash; Roads N103 and R657</h4>' = '<h4><span class="lang-en">EHS Supervision &mdash; Roads N103 and R657</span><span class="lang-pt">Supervis&atilde;o de HSA &mdash; Estradas N103 e R657</span></h4>'
  '<h4>EMP Review &mdash; Road N14, Niassa Province</h4>' = '<h4><span class="lang-en">EMP Review &mdash; Road N14, Niassa Province</span><span class="lang-pt">Revis&atilde;o do PGA &mdash; Estrada N14, Prov&iacute;ncia de Niassa</span></h4>'
  '<h4>EHS Supervision &mdash; Milange-Mocuba Phase II, Lot 2</h4>' = '<h4><span class="lang-en">EHS Supervision &mdash; Milange-Mocuba Phase II, Lot 2</span><span class="lang-pt">Supervis&atilde;o de HSA &mdash; Milange-Mocuba Fase II, Lote 2</span></h4>'
  '<h4>ESIA Decommissioning &mdash; Milange&ndash;Mocuba Phase II</h4>' = '<h4><span class="lang-en">ESIA Decommissioning &mdash; Milange&ndash;Mocuba Phase II</span><span class="lang-pt">EIA de Desactiva&ccedil;&atilde;o &mdash; Milange&ndash;Mocuba Fase II</span></h4>'
  '<h4>EHS Supervision &mdash; Milange&ndash;Mocuba Phase II Lot 2</h4>' = '<h4><span class="lang-en">EHS Supervision &mdash; Milange&ndash;Mocuba Phase II Lot 2</span><span class="lang-pt">Supervis&atilde;o de HSA &mdash; Milange&ndash;Mocuba Fase II Lote 2</span></h4>'
  '<h4>ESIA &mdash; Bridge over Incomati River, Magude</h4>' = '<h4><span class="lang-en">ESIA &mdash; Bridge over Incomati River, Magude</span><span class="lang-pt">EIA &mdash; Ponte sobre o Rio Incomati, Magude</span></h4>'
  '<h4>ESIA &mdash; Port Infrastructure, Chongoene, Gaza</h4>' = '<h4><span class="lang-en">ESIA &mdash; Port Infrastructure, Chongoene, Gaza</span><span class="lang-pt">EIA &mdash; Infraestrutura Portu&aacute;ria, Chongoene, Gaza</span></h4>'

  # ── Related Case Studies: p descriptions ─────────────────────────────────
  '<p>Full ESIA for cross-province bridge connecting Niassa and Nampula provinces, financed by Chinese Bank.</p>' = '<p><span class="lang-en">Full ESIA for cross-province bridge connecting Niassa and Nampula provinces, financed by Chinese Bank.</span><span class="lang-pt">EIA completo para ponte inter-provincial ligando as prov&iacute;ncias de Niassa e Nampula, financiado por Banco Chin&ecirc;s.</span></p>'
  '<p>Cross-province bridge ESIA connecting Niassa and Nampula, financed by Chinese Bank.</p>' = '<p><span class="lang-en">Cross-province bridge ESIA connecting Niassa and Nampula, financed by Chinese Bank.</span><span class="lang-pt">EIA de ponte inter-provincial ligando Niassa e Nampula, financiado por Banco Chin&ecirc;s.</span></p>'
  '<p>Full ESIA for cross-province bridge connecting Niassa and Nampula provinces.</p>' = '<p><span class="lang-en">Full ESIA for cross-province bridge connecting Niassa and Nampula provinces.</span><span class="lang-pt">EIA completo para ponte inter-provincial ligando as prov&iacute;ncias de Niassa e Nampula.</span></p>'
  '<p>ARAP, GRM design, and GBV/SEA prevention mechanism for water distribution infrastructure in Sofala.</p>' = '<p><span class="lang-en">ARAP, GRM design, and GBV/SEA prevention mechanism for water distribution infrastructure in Sofala.</span><span class="lang-pt">PAAR, concep&ccedil;&atilde;o do MRQ e mecanismo de preven&ccedil;&atilde;o de VBG/EAS para infraestrutura de distribui&ccedil;&atilde;o de &aacute;gua em Sofala.</span></p>'
  '<p>ARAP, GRM design, and GBV/SEA prevention mechanism for water infrastructure in Sofala.</p>' = '<p><span class="lang-en">ARAP, GRM design, and GBV/SEA prevention mechanism for water infrastructure in Sofala.</span><span class="lang-pt">PAAR, concep&ccedil;&atilde;o do MRQ e mecanismo de preven&ccedil;&atilde;o de VBG/EAS para infraestrutura de &aacute;gua em Sofala.</span></p>'
  '<p>Full ESIA for new port development in Gaza Province, financed by Chinese Bank.</p>' = '<p><span class="lang-en">Full ESIA for new port development in Gaza Province, financed by Chinese Bank.</span><span class="lang-pt">EIA completo para novo desenvolvimento portu&aacute;rio na Prov&iacute;ncia de Gaza, financiado por Banco Chin&ecirc;s.</span></p>'
  '<p>Full ESIA for new port infrastructure in Gaza Province, funded by World Bank.</p>' = '<p><span class="lang-en">Full ESIA for new port infrastructure in Gaza Province, funded by World Bank.</span><span class="lang-pt">EIA completo para nova infraestrutura portu&aacute;ria na Prov&iacute;ncia de Gaza, financiado pelo Banco Mundial.</span></p>'
  '<p>Comprehensive ESIA for EU-financed road upgrading in Zambezia Province, prepared for BCEOM.</p>' = '<p><span class="lang-en">Comprehensive ESIA for EU-financed road upgrading in Zambezia Province, prepared for BCEOM.</span><span class="lang-pt">EIA abrangente para reabilita&ccedil;&atilde;o de estrada financiada pela UE na Prov&iacute;ncia de Zamb&eacute;zia, preparado para a BCEOM.</span></p>'
  '<p>Comprehensive ESIA for EU-financed Milange-Mocuba Road upgrading project in Zambezia Province, prepared for BCEOM.</p>' = '<p><span class="lang-en">Comprehensive ESIA for EU-financed Milange-Mocuba Road upgrading project in Zambezia Province, prepared for BCEOM.</span><span class="lang-pt">EIA abrangente para o projecto de reabilita&ccedil;&atilde;o da estrada Milange-Mocuba financiada pela UE na Prov&iacute;ncia de Zamb&eacute;zia, preparado para a BCEOM.</span></p>'
  '<p>Three-year ESIA supervision for EU-financed EN1 road rehabilitation in Zambezia Province.</p>' = '<p><span class="lang-en">Three-year ESIA supervision for EU-financed EN1 road rehabilitation in Zambezia Province.</span><span class="lang-pt">Supervis&atilde;o de EIA durante tr&ecirc;s anos para a reabilita&ccedil;&atilde;o da EN1 financiada pela UE na Prov&iacute;ncia de Zamb&eacute;zia.</span></p>'
  '<p>ESMP for EU-financed EN1 rehabilitation in Inhambane Province &mdash; one of Enviestudos'' founding projects.</p>' = '<p><span class="lang-en">ESMP for EU-financed EN1 rehabilitation in Inhambane Province &mdash; one of Enviestudos'' founding projects.</span><span class="lang-pt">PGAS para reabilita&ccedil;&atilde;o da EN1 financiada pela UE na Prov&iacute;ncia de Inhambane &mdash; um dos projectos fundadores da Enviestudos.</span></p>'
  '<p>ESMP for EU-financed EN1 rehabilitation in Inhambane Province &mdash; one of Enviestudos&rsquo; founding projects.</p>' = '<p><span class="lang-en">ESMP for EU-financed EN1 rehabilitation in Inhambane Province &mdash; one of Enviestudos&rsquo; founding projects.</span><span class="lang-pt">PGAS para reabilita&ccedil;&atilde;o da EN1 financiada pela UE na Prov&iacute;ncia de Inhambane &mdash; um dos projectos fundadores da Enviestudos.</span></p>'
  '<p>Full ESIA for World Bank-financed road rehabilitation in Niassa Province, prepared for Think Tank Consultants SA.</p>' = '<p><span class="lang-en">Full ESIA for World Bank-financed road rehabilitation in Niassa Province, prepared for Think Tank Consultants SA.</span><span class="lang-pt">EIA completo para reabilita&ccedil;&atilde;o de estrada financiada pelo Banco Mundial na Prov&iacute;ncia de Niassa, preparado para a Think Tank Consultants SA.</span></p>'
  '<p>Full ESIA for World Bank-financed road rehabilitation in Niassa Province.</p>' = '<p><span class="lang-en">Full ESIA for World Bank-financed road rehabilitation in Niassa Province.</span><span class="lang-pt">EIA completo para reabilita&ccedil;&atilde;o de estrada financiada pelo Banco Mundial na Prov&iacute;ncia de Niassa.</span></p>'
  '<p>Environmental Simplified Study for EU-financed N1 road rehabilitation in Sofala Province.</p>' = '<p><span class="lang-en">Environmental Simplified Study for EU-financed N1 road rehabilitation in Sofala Province.</span><span class="lang-pt">Estudo Ambiental Simplificado para reabilita&ccedil;&atilde;o da estrada N1 financiada pela UE na Prov&iacute;ncia de Sofala.</span></p>'
  '<p>Review of the Environmental Management Plan for N14 road rehabilitation in Niassa Province, World Bank financed.</p>' = '<p><span class="lang-en">Review of the Environmental Management Plan for N14 road rehabilitation in Niassa Province, World Bank financed.</span><span class="lang-pt">Revis&atilde;o do Plano de Gest&atilde;o Ambiental para reabilita&ccedil;&atilde;o da estrada N14 na Prov&iacute;ncia de Niassa, financiado pelo Banco Mundial.</span></p>'
  '<p>Environmental supervision for IDA-financed water supply rehabilitation in Nampula Province.</p>' = '<p><span class="lang-en">Environmental supervision for IDA-financed water supply rehabilitation in Nampula Province.</span><span class="lang-pt">Supervis&atilde;o ambiental para reabilita&ccedil;&atilde;o de abastecimento de &aacute;gua financiada pelo IDA na Prov&iacute;ncia de Nampula.</span></p>'
  '<p>ESIAs for sanitation improvements in three Mozambican cities, MCC Compact financed.</p>' = '<p><span class="lang-en">ESIAs for sanitation improvements in three Mozambican cities, MCC Compact financed.</span><span class="lang-pt">EIAs para melhorias de saneamento em tr&ecirc;s cidades mo&ccedil;ambicanas, financiados pelo Compact MCC.</span></p>'
  '<p>Multi-city ESIA for MCC-financed sanitation improvements in three Mozambican cities.</p>' = '<p><span class="lang-en">Multi-city ESIA for MCC-financed sanitation improvements in three Mozambican cities.</span><span class="lang-pt">EIA multi-cidade para melhorias de saneamento financiadas pelo MCC em tr&ecirc;s cidades mo&ccedil;ambicanas.</span></p>'
  '<p>ESIA preparation and capacity building for AIAS water supply projects, World Bank financed.</p>' = '<p><span class="lang-en">ESIA preparation and capacity building for AIAS water supply projects, World Bank financed.</span><span class="lang-pt">Prepara&ccedil;&atilde;o de EIA e capacita&ccedil;&atilde;o para projectos de abastecimento de &aacute;gua do AIAS, financiados pelo Banco Mundial.</span></p>'
  '<p>ESIA and capacity building for AIAS water supply projects, World Bank financed.</p>' = '<p><span class="lang-en">ESIA and capacity building for AIAS water supply projects, World Bank financed.</span><span class="lang-pt">EIA e capacita&ccedil;&atilde;o para projectos de abastecimento de &aacute;gua do AIAS, financiados pelo Banco Mundial.</span></p>'
  '<p>EHS supervision for rehabilitation of N103 and R657 roads in Zambezia and Niassa, World Bank financed.</p>' = '<p><span class="lang-en">EHS supervision for rehabilitation of N103 and R657 roads in Zambezia and Niassa, World Bank financed.</span><span class="lang-pt">Supervis&atilde;o de HSA para reabilita&ccedil;&atilde;o das estradas N103 e R657 em Zamb&eacute;zia e Niassa, financiado pelo Banco Mundial.</span></p>'
  '<p>Environmental Management Plan review for World Bank-financed N14 road rehabilitation in Niassa Province.</p>' = '<p><span class="lang-en">Environmental Management Plan review for World Bank-financed N14 road rehabilitation in Niassa Province.</span><span class="lang-pt">Revis&atilde;o do Plano de Gest&atilde;o Ambiental para reabilita&ccedil;&atilde;o da estrada N14 financiada pelo Banco Mundial na Prov&iacute;ncia de Niassa.</span></p>'
  '<p>Health and Safety supervision for civil works on N14 Road in Niassa Province, World Bank financed.</p>' = '<p><span class="lang-en">Health and Safety supervision for civil works on N14 Road in Niassa Province, World Bank financed.</span><span class="lang-pt">Supervis&atilde;o de Sa&uacute;de e Seguran&ccedil;a para obras civis na Estrada N14 na Prov&iacute;ncia de Niassa, financiado pelo Banco Mundial.</span></p>'
  '<p>Continuous EHS supervision of construction works on EU-financed road corridor in Zambezia Province.</p>' = '<p><span class="lang-en">Continuous EHS supervision of construction works on EU-financed road corridor in Zambezia Province.</span><span class="lang-pt">Supervis&atilde;o cont&iacute;nua de HSA das obras de constru&ccedil;&atilde;o no corredor rodovi&aacute;rio financiado pela UE na Prov&iacute;ncia de Zamb&eacute;zia.</span></p>'
  '<p>EHS supervision for EU-financed Milange-Mocuba road rehabilitation civil works, Zambezia Province.</p>' = '<p><span class="lang-en">EHS supervision for EU-financed Milange-Mocuba road rehabilitation civil works, Zambezia Province.</span><span class="lang-pt">Supervis&atilde;o de HSA para obras de reabilita&ccedil;&atilde;o da estrada Milange-Mocuba financiada pela UE, Prov&iacute;ncia de Zamb&eacute;zia.</span></p>'
  '<p>Environmental decommissioning studies for the Milange-Mocuba Phase II road project, Zambezia Province.</p>' = '<p><span class="lang-en">Environmental decommissioning studies for the Milange-Mocuba Phase II road project, Zambezia Province.</span><span class="lang-pt">Estudos ambientais de desactiva&ccedil;&atilde;o para o projecto rodovi&aacute;rio Milange-Mocuba Fase II, Prov&iacute;ncia de Zamb&eacute;zia.</span></p>'
  '<p>Environmental studies for decommissioning of Phase II road works, EU-financed, in Zambezia Province.</p>' = '<p><span class="lang-en">Environmental studies for decommissioning of Phase II road works, EU-financed, in Zambezia Province.</span><span class="lang-pt">Estudos ambientais de desactiva&ccedil;&atilde;o das obras rodovi&aacute;rias da Fase II, financiadas pela UE, na Prov&iacute;ncia de Zamb&eacute;zia.</span></p>'
}

$projectFiles = Get-ChildItem "$dir\project-*.html"
foreach ($f in $projectFiles) {
    Fix $f.Name $globalRep
}

# ═════════════════════════════════════════════════════════════════════════════
# PER-PAGE: Sidebar "Services Delivered" values
# ═════════════════════════════════════════════════════════════════════════════
$svcDel = @{
  'project-aias-water.html'          = @{ en='ESIA &bull; ESMF &bull; Capacity Building &bull; ESMP Review'; pt='EIA &bull; QGAS &bull; Capacita&ccedil;&atilde;o &bull; Revis&atilde;o do PGAS' }
  'project-alto-molocue.html'        = @{ en='ESIA &bull; Scoping &bull; EMP &bull; Community Consultation'; pt='EIA &bull; Delimita&ccedil;&atilde;o &bull; PGA &bull; Consulta Comunit&aacute;ria' }
  'project-ane-gaza.html'            = @{ en='Rapid Environmental Assessment &bull; EHS Monitoring &bull; Periodic Reports'; pt='Avalia&ccedil;&atilde;o Ambiental R&aacute;pida &bull; Monitoriza&ccedil;&atilde;o de HSA &bull; Relat&oacute;rios Peri&oacute;dicos' }
  'project-beira.html'               = @{ en='ARAP &bull; GRM Design &bull; GBV/SEA Mechanism'; pt='PAAR &bull; Concep&ccedil;&atilde;o do MRQ &bull; Mecanismo VBG/EAS' }
  'project-chongoene.html'           = @{ en='ESIA &bull; Scoping Report &bull; ESMP &bull; Public Consultations'; pt='EIA &bull; Relat&oacute;rio de Delimita&ccedil;&atilde;o &bull; PGAS &bull; Consultas P&uacute;blicas' }
  'project-cuamba-road.html'         = @{ en='ESIA &bull; Scoping &bull; ToR &bull; ESMP &bull; Public Consultations'; pt='EIA &bull; Delimita&ccedil;&atilde;o &bull; ToR &bull; PGAS &bull; Consultas P&uacute;blicas' }
  'project-en1-namacurra.html'       = @{ en='ESIA Supervision &bull; Periodic Reports &bull; Community Liaison'; pt='Supervis&atilde;o de EIA &bull; Relat&oacute;rios Peri&oacute;dicos &bull; Liga&ccedil;&atilde;o Comunit&aacute;ria' }
  'project-en1-vilanculos.html'      = @{ en='ESMP &bull; Environmental Guidelines &bull; Monitoring Framework'; pt='PGAS &bull; Directrizes Ambientais &bull; Quadro de Monitoriza&ccedil;&atilde;o' }
  'project-incomati-bridge.html'     = @{ en='ESIA &bull; Scoping Report &bull; ToR &bull; ESMP &bull; Public Consultations'; pt='EIA &bull; Relat&oacute;rio de Delimita&ccedil;&atilde;o &bull; ToR &bull; PGAS &bull; Consultas P&uacute;blicas' }
  'project-lurio.html'               = @{ en='ESIA &bull; Scoping &bull; ESMP &bull; Consultations'; pt='EIA &bull; Delimita&ccedil;&atilde;o &bull; PGAS &bull; Consultas' }
  'project-milange-decommission.html'= @{ en='Environmental Supervision &bull; Decommissioning Inspection &bull; Site Closure Report'; pt='Supervis&atilde;o Ambiental &bull; Inspec&ccedil;&atilde;o de Desactiva&ccedil;&atilde;o &bull; Relat&oacute;rio de Encerramento' }
  'project-milange-esia.html'        = @{ en='ESIA &bull; Scoping &bull; ESMP &bull; RAP Support &bull; Public Consultations'; pt='EIA &bull; Delimita&ccedil;&atilde;o &bull; PGAS &bull; Apoio ao PAR &bull; Consultas P&uacute;blicas' }
  'project-milange-lot2.html'        = @{ en='EHS Supervision &bull; ESMP Monitoring &bull; Periodic Reports'; pt='Supervis&atilde;o de HSA &bull; Monitoriza&ccedil;&atilde;o do PGAS &bull; Relat&oacute;rios Peri&oacute;dicos' }
  'project-n1-save.html'             = @{ en='ESS &bull; ToR &bull; EMP &bull; Public Consultations'; pt='EAS &bull; ToR &bull; PGA &bull; Consultas P&uacute;blicas' }
  'project-n103-roads.html'          = @{ en='EHS Supervision &bull; ESIA Monitoring &bull; Periodic Reports'; pt='Supervis&atilde;o de HSA &bull; Monitoriza&ccedil;&atilde;o de EIA &bull; Relat&oacute;rios Peri&oacute;dicos' }
  'project-n14-emp.html'             = @{ en='EMP Review &bull; Gap Analysis &bull; Updated EMP'; pt='Revis&atilde;o do PGA &bull; An&aacute;lise de Lacunas &bull; PGA Actualizado' }
  'project-n14-supervision.html'     = @{ en='H&amp;S Supervision &bull; Inspection Reports &bull; Corrective Actions'; pt='Supervis&atilde;o H&amp;S &bull; Relat&oacute;rios de Inspec&ccedil;&atilde;o &bull; Ac&ccedil;&otilde;es Correctivas' }
  'project-n380-bridges.html'        = @{ en='ESS &bull; ToR &bull; EMP &bull; Public Consultations'; pt='EAS &bull; ToR &bull; PGA &bull; Consultas P&uacute;blicas' }
  'project-nacala-water.html'        = @{ en='Environmental Supervision &bull; Site Monitoring &bull; Periodic Reports'; pt='Supervis&atilde;o Ambiental &bull; Monitoriza&ccedil;&atilde;o no Local &bull; Relat&oacute;rios Peri&oacute;dicos' }
  'project-sanitation-cities.html'   = @{ en='ESIA &bull; ToR &bull; ESMP &bull; Multi-City Public Consultations'; pt='EIA &bull; ToR &bull; PGAS &bull; Consultas P&uacute;blicas Multi-Cidade' }
}

foreach ($fname in $svcDel.Keys) {
    $en = $svcDel[$fname].en
    $pt = $svcDel[$fname].pt
    $old = "proj.detail.svc-del`">Services Delivered</span><span class=`"sidebar-row-value`">$en</span>"
    $new = "proj.detail.svc-del`">Services Delivered</span><span class=`"sidebar-row-value`"><span class=`"lang-en`">$en</span><span class=`"lang-pt`">$pt</span></span>"
    Fix $fname @{ $old = $new }
}

# ═════════════════════════════════════════════════════════════════════════════
# SERVICE PAGES — fix related card h4 (already have lang-pt on p)
# Also fix service-esia.html's unique h4 "ESIA & ESMP — Cuamba–Lichinga Road"
# ═════════════════════════════════════════════════════════════════════════════
$svcPageRep = [ordered]@{
  '<h4>ESIA &amp; ESMP &mdash; Cuamba&ndash;Lichinga Road</h4>' = '<h4><span class="lang-en">ESIA &amp; ESMP &mdash; Cuamba&ndash;Lichinga Road</span><span class="lang-pt">EIA &amp; PGAS &mdash; Estrada Cuamba&ndash;Lichinga</span></h4>'
}
# The other service page h4 texts overlap with project pages and are already covered above
foreach ($f in @('service-esia.html','service-audit.html','service-monitoring.html','service-rap.html')) {
    Fix $f $svcPageRep
}

Write-Host "`nAll done."
