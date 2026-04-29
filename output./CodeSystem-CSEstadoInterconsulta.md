# Estado Interconsulta - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Estado Interconsulta**

## CodeSystem: Estado Interconsulta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSEstadoInterconsulta |

 
Estado Interconsulta 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEstadoInterconsulta](ValueSet-VSEstadoInterconsulta.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEstadoInterconsulta",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoInterconsulta",
  "version" : "0.2.2",
  "name" : "CSEstadoInterconsulta",
  "title" : "Estado Interconsulta",
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
  "description" : "Estado Interconsulta",
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
    "code" : "1",
    "display" : "A la espera de referencia",
    "definition" : "A la espera de referencia"
  },
  {
    "code" : "2",
    "display" : "A la espera de revisión",
    "definition" : "A la espera de revisión"
  },
  {
    "code" : "3",
    "display" : "A la espera de priorización",
    "definition" : "A la espera de priorización"
  },
  {
    "code" : "4",
    "display" : "A la espera de agendamiento",
    "definition" : "A la espera de agendamiento"
  },
  {
    "code" : "5",
    "display" : "En espera de la atención",
    "definition" : "En espera de la atención"
  },
  {
    "code" : "6",
    "display" : "A la espera de cierre",
    "definition" : "A la espera de cierre"
  },
  {
    "code" : "7",
    "display" : "Cerrada",
    "definition" : "Cerrada"
  }]
}

```
