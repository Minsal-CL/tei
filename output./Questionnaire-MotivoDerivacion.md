# Motivo Derivacion - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Motivo Derivacion**

## Questionnaire: Motivo Derivacion (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/Questionnaire/MotivoDerivacion | *Version*:0.2.2 |
| Draft as of 2024-07-04 | *Computable Name*: |

 
Permite describir el motivo de derivacion de un paciente 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MotivoDerivacion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Questionnaire/MotivoDerivacion",
  "version" : "0.2.2",
  "title" : "Motivo de Derivación",
  "status" : "draft",
  "experimental" : true,
  "subjectType" : ["Patient"],
  "date" : "2024-07-04",
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
  "description" : "Permite describir el motivo de derivacion de un paciente",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "item" : [{
    "linkId" : "MotivoDerivacion",
    "text" : "Motivo Derivación",
    "type" : "text",
    "required" : true,
    "repeats" : false,
    "maxLength" : 3000
  }]
}

```
