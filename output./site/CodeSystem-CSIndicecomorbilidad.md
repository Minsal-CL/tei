# Indice Comorbilidad - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Indice Comorbilidad**

## CodeSystem: Indice Comorbilidad 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSIndicecomorbilidad | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSIndicecomorbilidad |

 
Indice Comorbilidad 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSIndicecomorbilidad](ValueSet-VSIndicecomorbilidad.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSIndicecomorbilidad",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSIndicecomorbilidad",
  "version" : "0.2.2",
  "name" : "CSIndicecomorbilidad",
  "title" : "Indice Comorbilidad",
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
  "description" : "Indice Comorbilidad",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "G0",
    "display" : "Sin Riesgo, sin condiciones crónicas o riesgo no identificado",
    "definition" : "Sin Riesgo, sin condiciones crónicas o riesgo no identificado"
  },
  {
    "code" : "G1",
    "display" : "Riesgo Leve, 1 condición crónica",
    "definition" : "Riesgo Leve, 1 condición crónica"
  },
  {
    "code" : "G2",
    "display" : "Riesgo Moderado, 2 a 4 condiciones crónicas",
    "definition" : "Riesgo Moderado, 2 a 4 condiciones crónicas"
  },
  {
    "code" : "G3",
    "display" : "Riesgo Alto, 5 o más condiciones crónicas",
    "definition" : "Riesgo Alto, 5 o más condiciones crónicas"
  }]
}

```
