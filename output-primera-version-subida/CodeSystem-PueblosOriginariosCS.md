# Pueblos Originarios de Chile - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Pueblos Originarios de Chile**

## CodeSystem: Pueblos Originarios de Chile (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/PueblosOriginariosCS | *Version*:0.2.3 |
| Draft as of 2026-07-22 | *Computable Name*:PueblosOriginariosCS |

 
Pueblos Originarios de Chile 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PueblosOriginariosVS](ValueSet-PueblosOriginariosVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PueblosOriginariosCS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/PueblosOriginariosCS",
  "version" : "0.2.3",
  "name" : "PueblosOriginariosCS",
  "title" : "Pueblos Originarios de Chile",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-22T14:55:14-04:00",
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
  "description" : "Pueblos Originarios de Chile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "01",
    "display" : "Mapuche",
    "definition" : "Mapuche"
  },
  {
    "code" : "02",
    "display" : "Aymara",
    "definition" : "Aymara"
  },
  {
    "code" : "03",
    "display" : "Rapa Nui O Pascuense",
    "definition" : "Rapa Nui O Pascuense"
  },
  {
    "code" : "04",
    "display" : "Lickanantay",
    "definition" : "Lickanantay"
  },
  {
    "code" : "05",
    "display" : "Quechua",
    "definition" : "Quechua"
  },
  {
    "code" : "06",
    "display" : "Colla",
    "definition" : "Colla"
  },
  {
    "code" : "07",
    "display" : "Diaguita",
    "definition" : "Diaguita"
  },
  {
    "code" : "08",
    "display" : "Kawésqar",
    "definition" : "Kawésqar"
  },
  {
    "code" : "09",
    "display" : "Yagán",
    "definition" : "Yagán"
  },
  {
    "code" : "11",
    "display" : "Chango",
    "definition" : "Chango"
  },
  {
    "code" : "10",
    "display" : "Otro (Especificar)",
    "definition" : "Otro (Especificar)"
  }]
}

```
