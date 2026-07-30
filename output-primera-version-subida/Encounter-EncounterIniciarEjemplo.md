# Ejemplo de un Encuentro inicial - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de un Encuentro inicial**

## Example Encounter: Ejemplo de un Encuentro inicial

Profile: [Encounter Iniciar LE](StructureDefinition-EncounterIniciarLE.md)

**Consecuencia Atención Codigo**: Derivación

**identifier**: `http://example.org/sampleencounter-identifier`/123 (use: official, )

**status**: Finished

**class**: [Modalidad Atencion Codigo: 1](CodeSystem-CSModalidadAtencionCodigo.md#CSModalidadAtencionCodigo-1) (Presencial)

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [PractitionerRole Iniciador](PractitionerRole-PractitionerRoleIniciador.md) |

**period**: 2024-01-17 16:00:00+1000 --> 2024-01-17 16:30:00+1000

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Condition** | **Rank** |
| * | [Condition Typhoid and paratyphoid fevers](Condition-ConditionInicialEjemplo.md) | 1 |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "EncounterIniciarEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterIniciarLE"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionConsecuenciaAtencionCodigo",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSConsecuenciaAtencionCodigo",
        "code" : "3",
        "display" : "Derivación"
      }]
    }
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "http://example.org/sampleencounter-identifier",
    "value" : "123"
  }],
  "status" : "finished",
  "class" : {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSModalidadAtencionCodigo",
    "code" : "1",
    "display" : "Presencial"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "participant" : [{
    "individual" : {
      "reference" : "PractitionerRole/PractitionerRoleIniciador"
    }
  }],
  "period" : {
    "start" : "2024-01-17T16:00:00+10:00",
    "end" : "2024-01-17T16:30:00+10:00"
  },
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/ConditionInicialEjemplo"
    },
    "rank" : 1
  }]
}

```
