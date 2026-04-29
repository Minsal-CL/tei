# Tipo de Observación - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Tipo de Observación**

## CodeSystem: Tipo de Observación 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoObservacionMinsal | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSTipoObservacionMinsal |

 
Son todos los tipos de observaciones dadas por el Ministerio De Salud 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TipoDeObservacion](ValueSet-TipoDeObservacion.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTipoObservacionMinsal",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoObservacionMinsal",
  "version" : "0.2.2",
  "name" : "CSTipoObservacionMinsal",
  "title" : "Tipo de Observación",
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
  "description" : "Son todos los tipos de observaciones dadas por el Ministerio De Salud",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "ECICEP",
    "display" : "Estrategia de cuidado integral centrado en las personas",
    "definition" : "Estrategia de cuidado integral centrado en las personas"
  }]
}

```
