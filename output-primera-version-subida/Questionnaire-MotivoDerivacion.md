# Motivo Derivacion - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Motivo Derivacion**

## Questionnaire: Motivo Derivacion (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/Questionnaire/MotivoDerivacion | *Version*:0.2.3 |
| Draft as of 2024-07-04 | *Computable Name*: |

 
Permite describir el motivo de derivacion de un paciente 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MotivoDerivacion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Questionnaire/MotivoDerivacion",
  "version" : "0.2.3",
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
    "name" : "Jorge Mansilla",
    "telecom" : [{
      "system" : "email",
      "value" : "jorge.mansilla@minsal.cl",
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
    "text" : "Motivo de Derivación",
    "type" : "text",
    "required" : true,
    "repeats" : false,
    "maxLength" : 3000
  },
  {
    "linkId" : "GarantiaExplicitaenSalud-GES",
    "text" : "Garantía Explícita en Salud (GES)",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "ProblemadeSaludGES",
      "text" : "Problema de Salud GES",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/vs-problema-ges-tei"
    },
    {
      "linkId" : "SubProblemadeSaludGES",
      "text" : "SubProblema de Salud GES",
      "type" : "text",
      "required" : false,
      "repeats" : false,
      "maxLength" : 3000
    }]
  }]
}

```
