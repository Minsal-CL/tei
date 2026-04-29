# Derivado Para - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Derivado Para**

## CodeSystem: Derivado Para 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSDerivadoParaCodigo |

 
Derivado Para 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSDerivadoParaCodigo](ValueSet-VSDerivadoParaCodigo.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSDerivadoParaCodigo",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDerivadoParaCodigo",
  "version" : "0.2.2",
  "name" : "CSDerivadoParaCodigo",
  "title" : "Derivado Para",
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
  "description" : "Derivado Para",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "1",
    "display" : "Confirmación",
    "definition" : "Confirmación"
  },
  {
    "code" : "2",
    "display" : "Control Especialista",
    "definition" : "Control Especialista"
  },
  {
    "code" : "3",
    "display" : "Realiza Tratamiento",
    "definition" : "Realiza Tratamiento"
  },
  {
    "code" : "4",
    "display" : "Seguimiento",
    "definition" : "Seguimiento"
  },
  {
    "code" : "5",
    "display" : "Otro",
    "definition" : "Otro"
  }]
}

```
