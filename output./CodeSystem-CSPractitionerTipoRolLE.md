# Rol de profesionales - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Rol de profesionales**

## CodeSystem: Rol de profesionales 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSPractitionerTipoRolLE |

 
CodeSystem con códigos definidos para representar cada rol de profesional o funcionario administrativo dentro de la interconsulta 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSPractitionerTipoRolLE](ValueSet-VSPractitionerTipoRolLE.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSPractitionerTipoRolLE",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE",
  "version" : "0.2.2",
  "name" : "CSPractitionerTipoRolLE",
  "title" : "Rol de profesionales",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-01-15",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Franco Ulloa",
    "telecom" : [{
      "system" : "email",
      "value" : "franco.ulloa@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "CodeSystem con códigos definidos para representar cada rol de profesional o funcionario administrativo dentro de la interconsulta",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "iniciador",
    "display" : "Iniciador",
    "definition" : "Iniciador"
  },
  {
    "code" : "referenciador",
    "display" : "Referenciador",
    "definition" : "Referenciador"
  },
  {
    "code" : "revisor",
    "display" : "Revisor",
    "definition" : "Revisor"
  },
  {
    "code" : "priorizador",
    "display" : "Priorizador",
    "definition" : "Priorizador"
  },
  {
    "code" : "agendador",
    "display" : "Agendador",
    "definition" : "Agendador"
  },
  {
    "code" : "atendedor",
    "display" : "Atendedor",
    "definition" : "Atendedor"
  },
  {
    "code" : "terminador",
    "display" : "Terminador",
    "definition" : "Terminador"
  }]
}

```
