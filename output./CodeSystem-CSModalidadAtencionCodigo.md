# Modalidad Atencion Codigo - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Modalidad Atencion Codigo**

## CodeSystem: Modalidad Atencion Codigo 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:CSModalidadAtencionCodigo |

 
Modalidad Atencion Codigo 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSModalidadAtencionCodigo](ValueSet-VSModalidadAtencionCodigo.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSModalidadAtencionCodigo",
  "language" : "es-CL",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo",
  "version" : "0.2.2",
  "name" : "CSModalidadAtencionCodigo",
  "title" : "Modalidad Atencion Codigo",
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
  "description" : "Modalidad Atencion Codigo",
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
    "display" : "Presencial",
    "definition" : "Presencial"
  },
  {
    "code" : "2",
    "display" : "Remota",
    "definition" : "Remota"
  },
  {
    "code" : "3",
    "display" : "Telemedicina",
    "definition" : "Telemedicina"
  }]
}

```
