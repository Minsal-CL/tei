# Origen Interconsulta - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Origen Interconsulta**

## CodeSystem: Origen Interconsulta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSorigenInterconsulta | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSorigenInterconsulta |

 
Origen Interconsulta 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSorigenInterconsulta](ValueSet-VSorigenInterconsulta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSorigenInterconsulta",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSorigenInterconsulta",
  "version" : "0.2.2",
  "name" : "CSorigenInterconsulta",
  "title" : "Origen Interconsulta",
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
  "description" : "Origen Interconsulta",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "1",
    "display" : "APS",
    "definition" : "APS"
  },
  {
    "code" : "2",
    "display" : "Urgencia",
    "definition" : "Urgencia"
  },
  {
    "code" : "3",
    "display" : "Derivación",
    "definition" : "Derivación"
  }]
}

```
