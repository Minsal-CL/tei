# Consecuencia Atención Codigo - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Consecuencia Atención Codigo**

## CodeSystem: Consecuencia Atención Codigo 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSConsecuenciaAtencionCodigo | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSConsecuenciaAtencionCodigo |

 
Consecuencia Atención Codigo 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSConsecuenciaAtencionCodigo](ValueSet-VSConsecuenciaAtencionCodigo.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSConsecuenciaAtencionCodigo",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSConsecuenciaAtencionCodigo",
  "version" : "0.2.2",
  "name" : "CSConsecuenciaAtencionCodigo",
  "title" : "Consecuencia Atención Codigo",
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
  "description" : "Consecuencia Atención Codigo",
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
    "display" : "Control",
    "definition" : "Control"
  },
  {
    "code" : "2",
    "display" : "Alta",
    "definition" : "Alta"
  },
  {
    "code" : "3",
    "display" : "Derivación",
    "definition" : "Derivación"
  }]
}

```
