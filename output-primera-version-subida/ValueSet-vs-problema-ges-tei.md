# Value Set de los Problemas de Salud GES - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Value Set de los Problemas de Salud GES**

## ValueSet: Value Set de los Problemas de Salud GES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/vs-problema-ges-tei | *Version*:0.2.3 |
| Active as of 2023-01-15 | *Computable Name*:ProblemaSaludGESVS |

 
Set de valores utilizados para los problemas de salud ges 

 **References** 

* [QuestionnaireResponse Iniciar Motivo de la Derivación LE](StructureDefinition-QuestionnaireResponseIniciarLE.md)
* [Motivo de Derivación](Questionnaire-MotivoDerivacion.md)

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
  "id" : "vs-problema-ges-tei",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/vs-problema-ges-tei",
  "version" : "0.2.3",
  "name" : "ProblemaSaludGESVS",
  "title" : "Value Set de los Problemas de Salud  GES",
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
  "description" : "Set de valores utilizados para los problemas de salud ges",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/21000325107/version/20260315",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "1741000325106"
      }]
    }]
  }
}

```
