# Destino Referencia Codigo - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Destino Referencia Codigo**

## CodeSystem: Destino Referencia Codigo 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDestinoReferenciaCodigo | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSDestinoReferenciaCodigo |

 
Destino Referencia Codigo 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSDestinoReferenciaCodigo](ValueSet-VSDestinoReferenciaCodigo.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSDestinoReferenciaCodigo",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSDestinoReferenciaCodigo",
  "version" : "0.2.2",
  "name" : "CSDestinoReferenciaCodigo",
  "title" : "Destino Referencia Codigo",
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
  "description" : "Destino Referencia Codigo",
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
    "display" : "Nivel Secundario",
    "definition" : "Nivel Secundario"
  },
  {
    "code" : "2",
    "display" : "APS",
    "definition" : "APS"
  },
  {
    "code" : "3",
    "display" : "Extra Sistema",
    "definition" : "Extra Sistema"
  },
  {
    "code" : "4",
    "display" : "Hospital Digital",
    "definition" : "Hospital Digital"
  },
  {
    "code" : "5",
    "display" : "Establecimiento de alta complejidad",
    "definition" : "Establecimiento de alta complejidad"
  }]
}

```
