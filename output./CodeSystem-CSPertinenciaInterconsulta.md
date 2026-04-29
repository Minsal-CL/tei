# Pertinencia Interconsulta - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Pertinencia Interconsulta**

## CodeSystem: Pertinencia Interconsulta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPertinenciaInterconsulta | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSPertinenciaInterconsulta |

 
Pertinencia Interconsulta 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSPertinenciaInterconsulta](ValueSet-VSPertinenciaInterconsulta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSPertinenciaInterconsulta",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPertinenciaInterconsulta",
  "version" : "0.2.2",
  "name" : "CSPertinenciaInterconsulta",
  "title" : "Pertinencia Interconsulta",
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
  "description" : "Pertinencia Interconsulta",
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
    "display" : "Pertinente",
    "definition" : "Pertinente"
  },
  {
    "code" : "2",
    "display" : "No Pertinente",
    "definition" : "No Pertinente"
  },
  {
    "code" : "3",
    "display" : "Pertinente Incompleta",
    "definition" : "Pertinente Incompleta"
  }]
}

```
