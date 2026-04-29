# Tipo de Evento - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Tipo de Evento**

## CodeSystem: Tipo de Evento 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSTipoEventoLE |

 
CodeSystem con códigos definidos para representar cada evento en la interconsulta 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoEventoLE](ValueSet-VSTipoEventoLE.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTipoEventoLE",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE",
  "version" : "0.2.2",
  "name" : "CSTipoEventoLE",
  "title" : "Tipo de Evento",
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
  "description" : "CodeSystem con códigos definidos para representar cada evento en la interconsulta",
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
    "code" : "iniciar",
    "display" : "Iniciar",
    "definition" : "Iniciar"
  },
  {
    "code" : "referenciar",
    "display" : "Referenciar",
    "definition" : "Referenciar"
  },
  {
    "code" : "revisar",
    "display" : "Revisar",
    "definition" : "Revisar"
  },
  {
    "code" : "priorizar",
    "display" : "Priorizar",
    "definition" : "Priorizar"
  },
  {
    "code" : "agendar",
    "display" : "Agendar",
    "definition" : "Agendar"
  },
  {
    "code" : "atender",
    "display" : "Atender",
    "definition" : "Atender"
  },
  {
    "code" : "terminar",
    "display" : "Terminar",
    "definition" : "Terminar"
  }]
}

```
