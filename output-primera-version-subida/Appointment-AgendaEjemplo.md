# Ejemplo Agenda - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo Agenda**

## Example Appointment: Ejemplo Agenda

Profile: [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md)

**Medio de Contacto**: Llamada

> **Extension ContactadoLE**
* Contactado: true

**identifier**: 123

**status**: Booked

**start**: 2024-02-22 08:00:00-0300

**end**: 2024-02-22 08:30:00-0300

**created**: 2024-02-20 16:00:00-0300

> **participant****actor**: [PractitionerRole Atendedor](PractitionerRole-PractitionerRoleAtendedor.md)**status**: Accepted

> **participant****actor**: [María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-EjemploPatientLE.md)**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "AgendaEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AppointmentAgendarLE"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionMediodeContacto",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSMediodeContacto",
        "code" : "3",
        "display" : "Llamada"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "Contactado",
      "valueBoolean" : true
    }],
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/Contactado"
  }],
  "identifier" : [{
    "value" : "123"
  }],
  "status" : "booked",
  "start" : "2024-02-22T08:00:00-03:00",
  "end" : "2024-02-22T08:30:00-03:00",
  "created" : "2024-02-20T16:00:00-03:00",
  "participant" : [{
    "actor" : {
      "reference" : "PractitionerRole/PractitionerRoleAtendedor",
      "type" : "PractitionerRole"
    },
    "status" : "accepted"
  },
  {
    "actor" : {
      "reference" : "Patient/EjemploPatientLE",
      "type" : "Patient"
    },
    "status" : "accepted"
  }]
}

```
