# Appointment Agendar LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Appointment Agendar LE**

## Resource Profile: Appointment Agendar LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AppointmentAgendarLE | *Version*:0.2.3 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:AppointmentAgendarLE |

 
Appointment Agendar LE 

**Usages:**

* Use this Profile: [Bundle Agendar LE](StructureDefinition-BundleAgendarLE.md)
* Refer to this Profile: [MessageHeader LE](StructureDefinition-MessageHeaderLE.md)
* Examples for this Profile: [Appointment/AgendaEjemplo](Appointment-AgendaEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-AppointmentAgendarLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AppointmentAgendarLE.csv), [Excel](StructureDefinition-AppointmentAgendarLE.xlsx), [Schematron](StructureDefinition-AppointmentAgendarLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AppointmentAgendarLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AppointmentAgendarLE",
  "version" : "0.2.3",
  "name" : "AppointmentAgendarLE",
  "title" : "Appointment Agendar LE",
  "status" : "draft",
  "date" : "2026-07-22T14:55:14-04:00",
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
  "description" : "Appointment Agendar LE",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.id",
      "path" : "Appointment.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.extension",
      "path" : "Appointment.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Appointment.extension:ExtensionMediodeContacto",
      "path" : "Appointment.extension",
      "sliceName" : "ExtensionMediodeContacto",
      "short" : "Medio por donde se notificó al paciente",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionMediodeContacto"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Appointment.extension:ExtensionContactadoLE",
      "path" : "Appointment.extension",
      "sliceName" : "ExtensionContactadoLE",
      "short" : "Extensión compleja, donde se indica si el paciente fue Contactado[true|false] o MotivoNoContactabilidad si la anterior fue false",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/Contactado"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Appointment.identifier",
      "path" : "Appointment.identifier",
      "short" : "ID del identificador de la cita",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.identifier.use",
      "path" : "Appointment.identifier.use",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.identifier.system",
      "path" : "Appointment.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.identifier.value",
      "path" : "Appointment.identifier.value",
      "short" : "Valor del Id",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.status",
      "path" : "Appointment.status",
      "short" : "Se considera el uso de SOLO estos estados: pending=pendiente | booked=cita agendada | cancelled=cita cancelada | noshow=no presentación",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.cancelationReason",
      "path" : "Appointment.cancelationReason",
      "short" : "Uso en caso de cancelación de cita para registrar la razón",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.cancelationReason.coding",
      "path" : "Appointment.cancelationReason.coding",
      "short" : "Códigos definidos por un sistema terminológico",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.cancelationReason.coding.system",
      "path" : "Appointment.cancelationReason.coding.system",
      "short" : "Sistema terminológico, url/uri/uuid",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.cancelationReason.coding.code",
      "path" : "Appointment.cancelationReason.coding.code",
      "short" : "Código definido en un sistema terminológico, para este caso se consideran los siguientes: pat(paciente) | prov(médico o institución) | other(otra razón)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.cancelationReason.coding.display",
      "path" : "Appointment.cancelationReason.coding.display",
      "short" : "Representación visual del concepto definido por el sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.appointmentType",
      "path" : "Appointment.appointmentType",
      "short" : "El estilo de cita médica o paciente que se ha reservado en el espacio (no el tipo de servicio)",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.appointmentType.coding",
      "path" : "Appointment.appointmentType.coding",
      "short" : "Códigos definidos por un sistema terminológico",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.appointmentType.coding.system",
      "path" : "Appointment.appointmentType.coding.system",
      "short" : "Sistema terminológico, url/uri/uuid",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.appointmentType.coding.code",
      "path" : "Appointment.appointmentType.coding.code",
      "short" : "Código definido en un sistema terminológico",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.appointmentType.coding.display",
      "path" : "Appointment.appointmentType.coding.display",
      "short" : "Representación visual, definida por el sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.appointmentType.text",
      "path" : "Appointment.appointmentType.text",
      "short" : "Representación textual del concepto",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.start",
      "path" : "Appointment.start",
      "short" : "Inicio de esta cita",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.end",
      "path" : "Appointment.end",
      "short" : "Término de esta cita",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.created",
      "path" : "Appointment.created",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant",
      "path" : "Appointment.participant",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "actor.type"
        }],
        "description" : "Slice creado para almacenar diferentes tipos de participante",
        "rules" : "open"
      },
      "short" : "Participante de esta cita médica",
      "min" : 2,
      "max" : "2",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE",
        "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"]
      }]
    },
    {
      "id" : "Appointment.participant:patientLE",
      "path" : "Appointment.participant",
      "sliceName" : "patientLE",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:patientLE.actor",
      "path" : "Appointment.participant.actor",
      "short" : "Paciente participante de esta cita",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:patientLE.actor.reference",
      "path" : "Appointment.participant.actor.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:patientLE.actor.type",
      "path" : "Appointment.participant.actor.type",
      "short" : "Tipo de participante de la cita al que se hace referencia",
      "min" : 1,
      "patternUri" : "Patient"
    },
    {
      "id" : "Appointment.participant:patientLE.status",
      "path" : "Appointment.participant.status",
      "short" : "Estado de la cita, este puede ser \"accepted | declined | tentative | needs-action\""
    },
    {
      "id" : "Appointment.participant:practitionerRoleLE",
      "path" : "Appointment.participant",
      "sliceName" : "practitionerRoleLE",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:practitionerRoleLE.actor",
      "path" : "Appointment.participant.actor",
      "short" : "Persona y ubicación/servicio de atención médica participante de esta cita",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:practitionerRoleLE.actor.reference",
      "path" : "Appointment.participant.actor.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant:practitionerRoleLE.actor.type",
      "path" : "Appointment.participant.actor.type",
      "short" : "Tipo de participante de la cita al que se hace referencia",
      "min" : 1,
      "patternUri" : "PractitionerRole"
    },
    {
      "id" : "Appointment.participant:practitionerRoleLE.status",
      "path" : "Appointment.participant.status",
      "short" : "Estado, por defecto #accepted",
      "patternCode" : "accepted"
    }]
  }
}

```
