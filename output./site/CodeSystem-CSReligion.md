# Religion - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Religion**

## CodeSystem: Religion 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSReligion | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSReligion |

 
Religion 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSReligion](ValueSet-VSReligion.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSReligion",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSReligion",
  "version" : "0.2.2",
  "name" : "CSReligion",
  "title" : "Religion",
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
  "description" : "Religion",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "1",
    "display" : "Católica",
    "definition" : "Católica"
  },
  {
    "code" : "2",
    "display" : "Evangélica",
    "definition" : "Evangélica"
  },
  {
    "code" : "3",
    "display" : "Testigo de Jehová",
    "definition" : "Testigo de Jehová"
  },
  {
    "code" : "4",
    "display" : "Judaica",
    "definition" : "Judaica"
  },
  {
    "code" : "5",
    "display" : "Mormón",
    "definition" : "Mormón"
  },
  {
    "code" : "6",
    "display" : "Musulmana",
    "definition" : "Musulmana"
  },
  {
    "code" : "7",
    "display" : "Ortodoxa",
    "definition" : "Ortodoxa"
  },
  {
    "code" : "8",
    "display" : "Otra religión o credo",
    "definition" : "Otra religión o credo"
  },
  {
    "code" : "9",
    "display" : "Ninguna, ateo, agnóstico",
    "definition" : "Ninguna, ateo, agnóstico"
  },
  {
    "code" : "99",
    "display" : "Desconocido",
    "definition" : "Desconocido"
  }]
}

```
