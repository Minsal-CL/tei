# Ejemplo de una Alergía - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de una Alergía**

## Example AllergyIntolerance: Ejemplo de una Alergía

Profile: [AllergyIntolerance Iniciar LE](StructureDefinition-AllergyIntoleranceIniciarLE.md)

**clinicalStatus**: Activo

**verificationStatus**: Confirmado

**code**: Alergía a castaña de cajú

**patient**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergyIntoleranceExample",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AllergyIntoleranceIniciarLE"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }],
    "text" : "Activo"
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }],
    "text" : "Confirmado"
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "227493005"
    }],
    "text" : "Alergía a castaña de cajú"
  },
  "patient" : {
    "reference" : "Patient/EjemploPatientLE"
  }
}

```
