# Consecuencia Atención Codigo - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Consecuencia Atención Codigo**

## ValueSet: Consecuencia Atención Codigo 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSConsecuenciaAtencionCodigo | *Version*:0.2.2 |
| Active as of 2023-01-15 | *Computable Name*:VSConsecuenciaAtencionCodigo |

 
Consecuencia Atención Codigo 

 **References** 

* [Consecuencia Atención Codigo](StructureDefinition-ExtensionConsecuenciaAtencionCodigo.md)

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
  "id" : "VSConsecuenciaAtencionCodigo",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSConsecuenciaAtencionCodigo",
  "version" : "0.2.2",
  "name" : "VSConsecuenciaAtencionCodigo",
  "title" : "Consecuencia Atención Codigo",
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
  "description" : "Consecuencia Atención Codigo",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSConsecuenciaAtencionCodigo"
    }]
  }
}

```
