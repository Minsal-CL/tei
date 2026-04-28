# Especialidades Farmaceúticas o Química Farmaceúticas - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Especialidades Farmaceúticas o Química Farmaceúticas**

## CodeSystem: Especialidades Farmaceúticas o Química Farmaceúticas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadFarma | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSEspecialidadFarma |

 
Especialidades Farmaceúticas o Química Farmaceúticas 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEspecialidadFarma](ValueSet-VSEspecialidadFarma.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEspecialidadFarma",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadFarma",
  "version" : "0.2.2",
  "name" : "CSEspecialidadFarma",
  "title" : "Especialidades Farmaceúticas o Química Farmaceúticas",
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
  "description" : "Especialidades Farmaceúticas o Química Farmaceúticas",
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
    "display" : "Farmacia Clínica",
    "definition" : "Farmacia Clínica"
  },
  {
    "code" : "2",
    "display" : "Farmacia Hospitalaria",
    "definition" : "Farmacia Hospitalaria"
  },
  {
    "code" : "3",
    "display" : "Laboratorio Clínico",
    "definition" : "Laboratorio Clínico"
  },
  {
    "code" : "4",
    "display" : "Salud Pública",
    "definition" : "Salud Pública"
  },
  {
    "code" : "5",
    "display" : "Laboratorio Forense",
    "definition" : "Laboratorio Forense"
  }]
}

```
