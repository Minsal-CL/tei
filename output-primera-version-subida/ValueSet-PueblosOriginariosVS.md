# Pueblos Originarios de Chile - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Pueblos Originarios de Chile**

## ValueSet: Pueblos Originarios de Chile (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/PueblosOriginariosVS | *Version*:0.2.3 |
| Draft as of 2026-07-22 | *Computable Name*:PueblosOriginariosVS |

 
Pueblos Originarios de Chile 

 **References** 

* [Pueblos Originarios](StructureDefinition-PueblosOriginarios.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "PueblosOriginariosVS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/PueblosOriginariosVS",
  "version" : "0.2.3",
  "name" : "PueblosOriginariosVS",
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
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/PueblosOriginariosCS"
    }]
  }
}

```
