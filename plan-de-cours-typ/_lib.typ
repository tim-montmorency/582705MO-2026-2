// _lib.typ — façade stable du gabarit (API publique)
//
// Point d’entrée unique à importer dans les documents :
//   #import "_lib.typ": plan_de_cours, charger_plan
//
// La convention docsh : les fichiers partiels sont préfixés par « _ »
// (ils ne sont jamais compilés directement en PDF).

#import "_template.typ": plan_de_cours
#import "_loader.typ": charger_plan
