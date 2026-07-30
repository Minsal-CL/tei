# Ejemplo de Anamnesis - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de Anamnesis**

## Example Observation: Ejemplo de Anamnesis

Profile: [Observation Anamnesis LE](StructureDefinition-ObservationAnamnesisLE.md)

**status**: Registered

**code**: Anamnesis

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**encounter**: [Encounter: extension = true; identifier = 123; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-02-22 08:00:00-0300 --> 2024-02-22 08:30:00-0300](Encounter-AtencionEjemplo.md)

**effective**: 2024-01-24 08:30:00-0300

**value**: A pesar de la severidad de la condición del paciente, se encuentra estable, por lo que, dar un tratamiento más fuerte podría afectar su condición, lo mejor será iniciar con algo lo suficientemente suave. Hay que mantenerlo vigilado.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AnamnesisEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationAnamnesisLE"]
  },
  "status" : "registered",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "84100007"
    }],
    "text" : "Anamnesis"
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "encounter" : {
    "reference" : "Encounter/AtencionEjemplo"
  },
  "effectiveDateTime" : "2024-01-24T08:30:00-03:00",
  "valueString" : "A pesar de la severidad de la condición del paciente, se encuentra estable, por lo que, dar un tratamiento más fuerte podría afectar su condición, lo mejor será iniciar con algo lo suficientemente suave. Hay que mantenerlo vigilado."
}

```
