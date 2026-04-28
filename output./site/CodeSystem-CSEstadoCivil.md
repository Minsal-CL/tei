# EstadoCivil - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **EstadoCivil**

## CodeSystem: EstadoCivil 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoCivil | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSEstadoCivil |

 
EstadoCivil 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEstadoCivil](ValueSet-VSEstadoCivil.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEstadoCivil",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstadoCivil",
  "version" : "0.2.2",
  "name" : "CSEstadoCivil",
  "title" : "EstadoCivil",
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
  "description" : "EstadoCivil",
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
    "code" : "01",
    "display" : "Soltero(a)",
    "definition" : "Soltero(a)"
  },
  {
    "code" : "02",
    "display" : "Casado(a)",
    "definition" : "Casado(a)"
  },
  {
    "code" : "03",
    "display" : "Viudo(a)",
    "definition" : "Viudo(a)"
  },
  {
    "code" : "04",
    "display" : "Divorciado(a)",
    "definition" : "Divorciado(a)"
  },
  {
    "code" : "05",
    "display" : "Separado(a) judicialmente",
    "definition" : "Separado(a) judicialmente"
  },
  {
    "code" : "06",
    "display" : "Conviviente civil",
    "definition" : "Conviviente civil"
  },
  {
    "code" : "99",
    "display" : "Desconocido",
    "definition" : "Desconocido"
  }]
}

```
