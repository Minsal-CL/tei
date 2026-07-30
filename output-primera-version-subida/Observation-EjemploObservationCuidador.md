# Ejemplo Observation Cuidador - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo Observation Cuidador**

## Example Observation: Ejemplo Observation Cuidador

Profile: [Cuidador LE](StructureDefinition-ObservationIniciarCuidadorLE.md)

**status**: Final

**code**: Cuidador de una persona con dolencias relacionadas con la edad o enfermedades crónicas.

**subject**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)

**value**: true



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "EjemploObservationCuidador",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationIniciarCuidadorLE"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "95385-1",
      "display" : "Cuidador de personas con molestias relacionadas con la edad, enfermedades crónicas o fragilidad.: Paciente:Punto temporal:Tipo:Ordinal:"
    }],
    "text" : "Cuidador de una persona con dolencias relacionadas con la edad o enfermedades crónicas."
  },
  "subject" : {
    "reference" : "Patient/EjemploPatientLE"
  },
  "valueBoolean" : true
}

```
