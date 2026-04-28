# Especialidades y Subespecialidades Bioquímicas - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Especialidades y Subespecialidades Bioquímicas**

## CodeSystem: Especialidades y Subespecialidades Bioquímicas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadBioqca | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSEspecialidadBioqca |

 
Especialidades y Subespecialidades Bioquímicas 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEspecialidadBioqca](ValueSet-VSEspecialidadBioqca.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEspecialidadBioqca",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadBioqca",
  "version" : "0.2.2",
  "name" : "CSEspecialidadBioqca",
  "title" : "Especialidades y Subespecialidades Bioquímicas",
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
  "description" : "Especialidades y Subespecialidades Bioquímicas",
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
    "display" : "Laboratorio Clínico",
    "definition" : "Laboratorio Clínico"
  },
  {
    "code" : "2",
    "display" : "Laboratorio Forense",
    "definition" : "Laboratorio Forense"
  },
  {
    "code" : "3",
    "display" : "Salud Pública",
    "definition" : "Salud Pública"
  }]
}

```
