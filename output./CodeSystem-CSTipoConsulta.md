# Tipo Consulta - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Tipo Consulta**

## CodeSystem: Tipo Consulta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoConsulta | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSTipoConsulta |

 
Tipo Consulta 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoConsulta](ValueSet-VSTipoConsulta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTipoConsulta",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoConsulta",
  "version" : "0.2.2",
  "name" : "CSTipoConsulta",
  "title" : "Tipo Consulta",
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
  "description" : "Tipo Consulta",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "Nueva",
    "definition" : "Nueva"
  },
  {
    "code" : "2",
    "display" : "Control",
    "definition" : "Control"
  }]
}

```
