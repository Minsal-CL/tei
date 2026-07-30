# Ejemplo Condition Inicial - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo Condition Inicial**

## Example Condition: Ejemplo Condition Inicial

Profile: [Condition Diagnostico LE](StructureDefinition-ConditionDiagnosticoLE.md)

**clinicalStatus**: Activo

**verificationStatus**: Confirmado

**category**: Diagnostico del encuentro

**severity**: Severo

**code**: anticuerpos contra glándulas suprarrenales detectados

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**encounter**: [Encounter: extension = Derivación; identifier = http://example.org/sampleencounter-identifier#123 (use: official, ); status = finished; class = Presencial (Modalidad Atencion Codigo#1); period = 2024-01-17 16:00:00+1000 --> 2024-01-17 16:30:00+1000](Encounter-EncounterIniciarEjemplo.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionInicialEjemplo",
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
      "system" : "http://hl7.org/fhir/sid/icd-10",
      "code" : "A01"
    }],
    "text" : "anticuerpos contra glándulas suprarrenales detectados"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "encounter" : {
    "reference" : "Encounter/EncounterIniciarEjemplo"
  }
}

```
