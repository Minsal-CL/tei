# Motivo No Contactabilidad - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Motivo No Contactabilidad**

## CodeSystem: Motivo No Contactabilidad 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoNoContactabilidad | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSMotivoNoContactabilidad |

 
Motivo No Contactabilidad 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMotivoNoContactabilidad](ValueSet-VSMotivoNoContactabilidad.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMotivoNoContactabilidad",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMotivoNoContactabilidad",
  "version" : "0.2.2",
  "name" : "CSMotivoNoContactabilidad",
  "title" : "Motivo No Contactabilidad",
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
  "description" : "Motivo No Contactabilidad",
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
    "code" : "1",
    "display" : "No contesta teléfono.",
    "definition" : "No contesta teléfono."
  },
  {
    "code" : "2",
    "display" : "No contesta correo",
    "definition" : "No contesta correo"
  },
  {
    "code" : "3",
    "display" : "Datos de contactos incorrectos",
    "definition" : "Datos de contactos incorrectos"
  },
  {
    "code" : "4",
    "display" : "Otro",
    "definition" : "Otro"
  }]
}

```
