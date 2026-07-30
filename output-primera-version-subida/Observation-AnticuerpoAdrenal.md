# Ejemplo Resultado Examen - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo Resultado Examen**

## Example Observation: Ejemplo Resultado Examen

Profile: [Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md)

**status**: Registered

**category**: Laboratory

**code**: Ab adrenal en Sérum

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**encounter**: [Encounter: extension = Derivación; identifier = http://example.org/sampleencounter-identifier#123 (use: official, ); status = finished; class = Presencial (Modalidad Atencion Codigo#1); period = 2024-01-17 16:00:00+1000 --> 2024-01-17 16:30:00+1000](Encounter-EncounterIniciarEjemplo.md)

**effective**: 2024-01-17 15:00:00-0300

**value**: 10 arb'U/mL (Details: UCUM code[arb'U]/mL = '[arb'U]/mL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AnticuerpoAdrenal",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationResultadoExamen"]
  },
  "status" : "registered",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8059-8"
    }],
    "text" : "Ab adrenal en Sérum"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "encounter" : {
    "reference" : "Encounter/EncounterIniciarEjemplo"
  },
  "effectiveDateTime" : "2024-01-17T15:00:00-03:00",
  "valueQuantity" : {
    "value" : 10,
    "unit" : "arb'U/mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "[arb'U]/mL"
  }
}

```
