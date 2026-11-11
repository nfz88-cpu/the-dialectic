# THE DIALECTIC V9 — Atlas régional sourcé

**NOUVEAU : 46 projets ou programmes représentatifs des 12 régions, transcrits à partir des tableaux 2 et 3 de la Note régionale du PLF 2026.** Les cellules représentent des crédits de paiement dans l’échantillon, pas une totalité régionale ou ministérielle. Les montants 2025 proviennent des colonnes CP 2025 du rapport 2026 pour 12 projets en cours. Ils ne sont pas des paiements réalisés.

Les rapports régionaux originaux 2025 et 2026 sont inclus sous `sources/`. L’atlas référence le rapport **2026** ; celui de 2025 est fourni pour confrontation ultérieure et n’est pas encore codé ligne par ligne.

Ouvrir index.html dans Firefox. Atlas = carte et fiches de projets ; Croisements = région × rattachement sectoriel ministériel **indicatif** ; Budgets vérifiés = allocations nationales de 39 institutions ; Data Lab = 2011–2026 avec données ministérielles 2024–2026 seulement.

PDF : `sources/MEF_Note_regionale_PLF2026.pdf`, pagination PDF 14 à 70. Tableaux machine : `data/projets_regionaux_selection_2026.json`, `.csv`. Les noms de ministères dans la matrice sont des regroupements sectoriels et **non une preuve de responsabilité budgétaire juridique**.

# THE DIALECTIC · Budget Intelligence Morocco — V8

**Une enquête par UNknown 212.** Version hors ligne, trilingue FR / العربية / EN.

## Installation et navigation

Ouvrir `index.html` dans Firefox ou Chrome (connexion non requise pour le tableau budgétaire). Choisir la langue dans le bandeau, puis ouvrir **Budgets vérifiés / Verified budgets / الميزانيات الموثقة**.

Dans cet écran : filtrage par exercice (LF 2024, LF 2025, PLF 2026), recherche des institutions, tri, classements, fiche individualisée, détails du personnel, matériel, fonctionnement, investissement CP, CE, variation annuelle et export CSV. Les lignes du tableau et le classement sont cliquables. Les PDF sources sont accessibles depuis chaque fiche.

Dans **Data Lab**, une nouvelle comparaison ministérielle 2011–2026 affiche exclusivement 2024–2026 ; 2011–2023 sont marqués indisponibles. Dans **Croisements**, une nouvelle fiche indique la dotation nationale de l'institution sélectionnée, mais sans fausse attribution à une région.

## Source des données validées

Document embarqué : `sources/MEF_Note_PLF2026_Annexe.pdf` (PDF transmis par l'utilisateur)

*Note de présentation du projet de loi de finances 2026*, annexe 1, pages **163–164 du PDF** : « Répartition, par ministère ou institution, des dépenses du budget général au titre du projet de loi de finances pour l’année 2026 et les lois de finances des années 2024 et 2025 ».

Tableau machine-readable : `data/budget_ministeres_officiel.json` — 117 enregistrements = 39 ordonnateurs et postes budgétaires × 3 exercices. Dans `data/budgets_ministeriels_2024_2026.csv` la séparation est `;`.

Chiffres en **dirhams** dans la base, en **milliards de dirhams** à l'écran. 2026 = **PLF** (proposé), 2025/2024 = **LF**. Fonctionnement + crédits de paiement d'investissement = total CP. **Ne pas ajouter les crédits d'engagement CE aux CP.** Certains postes ne sont pas des ministères (charges communes, restitutions fiscales, dotations provisoires, etc.). Les montants ne sont pas des dépenses exécutées.

**Contrôles** : 39 lignes par année, cohérence des ventilations pour 117 lignes. Total du tableau :

| Exercice | Fonctionnement, MMDH | Investissement CP, MMDH | Total CP, MMDH |
|---|---:|---:|---:|
| LF 2024 | 279,426731 | 118,108347 | 397,535078 |
| LF 2025 | 320,971147 | 128,526358 | 449,497505 |
| PLF 2026 | 347,490689 | 136,106794 | 483,597483 |

Ces totaux correspondent au **périmètre des lignes de l'annexe**, non à toutes les dépenses publiques consolidées (EPT/EEP, collectivités, CST, dette etc.).

## Ce qui reste en démonstration

La carte des régions et la matrice région × ministère de la V7 contiennent encore un scénario synthétique, **explicitement signalé**. Les chiffres régionaux officiels n'ont pas encore été validés ni intégrés dans la matrice. Les indicateurs nationaux historiques de l'ancien Data Lab restent à compléter sur 2011–2024. **Aucun chiffre de cette simulation ne doit être cité comme réel.**

Pour aller plus loin, rapprocher les rapports régionaux 2025/2026, les programmes ministériels et l'exécution TGR, avec une relation vérifiable projet → institution → région → année. Les crédits nationaux ne se répartissent pas automatiquement entre régions.

## Fichiers importants

- `assets/v8_budget.js` : interface de consultation et graphiques historiques ministériels ;
- `assets/official_budgets.js` : données embarquées (lecture locale hors ligne) ;
- `data/budget_ministeres_officiel.json` : données structurées et référence de source ;
- `sources/MEF_Note_PLF2026_Annexe.pdf` : preuve PDF disponible hors ligne ;
- `chapitres/06.html` : renvoi éditorial vers la base des budgets ;
- `assets/app.js`, `assets/i18n.js` : modules issus de la V7.

## Limites de l'automatisation

Cette version **ne télécharge pas automatiquement les PDF** des sites de l'État. Elle exploite les documents que l'utilisateur a transmis et contient la source originale pour audit. Le pipeline Python historique reste expérimental ; il ne remplace pas la vérification manuelle d'une table juridique ou budgétaire.
