# Motivo No Pertinencia Codigo - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Motivo No Pertinencia Codigo**

## CodeSystem: Motivo No Pertinencia Codigo 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoNoPertinenciaCodigo | *Version*:0.2.3 |
| Active as of 2023-01-15 | *Computable Name*:CSMotivoNoPertinenciaCodigo |

 
Motivo No Pertinencia Codigo 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMotivoNoPertinenciaCodigo](ValueSet-VSMotivoNoPertinenciaCodigo.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMotivoNoPertinenciaCodigo",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoNoPertinenciaCodigo",
  "version" : "0.2.3",
  "name" : "CSMotivoNoPertinenciaCodigo",
  "title" : "Motivo No Pertinencia Codigo",
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
    "name" : "Jorge Mansilla",
    "telecom" : [{
      "system" : "email",
      "value" : "jorge.mansilla@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Motivo No Pertinencia Codigo",
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
    "display" : "No cumple reglas de derivación",
    "definition" : "No cumple reglas de derivación"
  },
  {
    "code" : "2",
    "display" : "No respeta criterios de inclusión",
    "definition" : "No respeta criterios de inclusión"
  },
  {
    "code" : "3",
    "display" : "Otro",
    "definition" : "Otro"
  }]
}

```
