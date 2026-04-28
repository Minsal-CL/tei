# Medio Notificación - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Medio Notificación**

## CodeSystem: Medio Notificación 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMediodeContacto | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSMediodeContacto |

 
Medio Notificación 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMediodeContacto](ValueSet-VSMediodeContacto.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMediodeContacto",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMediodeContacto",
  "version" : "0.2.2",
  "name" : "CSMediodeContacto",
  "title" : "Medio Notificación",
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
  "description" : "Medio Notificación",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "1",
    "display" : "Correo electronico y/o carta certificada",
    "definition" : "Correo electronico y/o carta certificada"
  },
  {
    "code" : "2",
    "display" : "SMS",
    "definition" : "SMS"
  },
  {
    "code" : "3",
    "display" : "Llamada",
    "definition" : "Llamada"
  },
  {
    "code" : "4",
    "display" : "Whatsapp",
    "definition" : "Whatsapp"
  },
  {
    "code" : "5",
    "display" : "Presencial",
    "definition" : "Presencial"
  },
  {
    "code" : "6",
    "display" : "Otro",
    "definition" : "Otro"
  }]
}

```
