# Ejemplo Condición de Atención - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo Condición de Atención**

## Example Condition: Ejemplo Condición de Atención

Profile: [Condition Diagnostico LE](StructureDefinition-ConditionDiagnosticoLE.md)

**clinicalStatus**: Activo

**verificationStatus**: Confirmado

**category**: Diagnostico del encuentro

**severity**: Severo

**code**: insuficiencia adrenal severa

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**encounter**: [Encounter: extension = true; identifier = 123; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-02-22 08:00:00-0300 --> 2024-02-22 08:30:00-0300](Encounter-AtencionEjemplo.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionAtencionejemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ConditionDiagnosticoLE"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }],
    "text" : "Activo"
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }],
    "text" : "Confirmado"
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis",
      "display" : "Encounter Diagnosis"
    }],
    "text" : "Diagnostico del encuentro"
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "24484000",
      "display" : "Severe"
    }],
    "text" : "Severo"
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "24867002",
      "display" : "Severe adrenal insufficiency"
    }],
    "text" : "insuficiencia adrenal severa"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "encounter" : {
    "reference" : "Encounter/AtencionEjemplo"
  }
}

```
