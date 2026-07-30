# Ejemplo de Indice Conmorbilidad - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de Indice Conmorbilidad**

## Example Observation: Ejemplo de Indice Conmorbilidad

Profile: [Indice Comorbilidad LE](StructureDefinition-ObservationIndiceComorbilidadLE.md)

**status**: Final

**category**: Survey

**code**: Indice Comorbilidad

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**encounter**: [Encounter: extension = Derivación; identifier = http://example.org/sampleencounter-identifier#123 (use: official, ); status = finished; class = Presencial (Modalidad Atencion Codigo#1); period = 2024-01-17 16:00:00+1000 --> 2024-01-17 16:30:00+1000](Encounter-EncounterIniciarEjemplo.md)

**value**: Riesgo Moderado, 2 a 4 condiciones crónicas



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "IndiceConmorbilidadEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationIndiceComorbilidadLE"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoObservacionMinsal",
      "code" : "ECICEP"
    }],
    "text" : "Indice Comorbilidad"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "encounter" : {
    "reference" : "Encounter/EncounterIniciarEjemplo"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSIndicecomorbilidad",
      "code" : "G2",
      "display" : "Riesgo Moderado, 2 a 4 condiciones crónicas"
    }]
  }
}

```
