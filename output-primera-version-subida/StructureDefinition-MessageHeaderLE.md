# MessageHeader LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **MessageHeader LE**

## Resource Profile: MessageHeader LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MessageHeaderLE | *Version*:0.2.3 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:MessageHeaderLE |

 
MessageHeaderLE 

**Usages:**

* Use this Profile: [Bundle Agendar LE](StructureDefinition-BundleAgendarLE.md), [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md), [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md), [Bundle Priorizar LE](StructureDefinition-BundlePriorizarLE.md)... Show 3 more, [Bundle Referenciar LE](StructureDefinition-BundleReferenciarLE.md), [Bundle Revisar LE](StructureDefinition-BundleRevisarLE.md) and [Bundle Terminar LE](StructureDefinition-BundleTerminarLE.md)
* Examples for this Profile: [MessageHeader/MesssageHeaderAtenderEjemplo](MessageHeader-MesssageHeaderAtenderEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-MessageHeaderLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MessageHeaderLE.csv), [Excel](StructureDefinition-MessageHeaderLE.xlsx), [Schematron](StructureDefinition-MessageHeaderLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MessageHeaderLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MessageHeaderLE",
  "version" : "0.2.3",
  "name" : "MessageHeaderLE",
  "title" : "MessageHeader LE",
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
  "description" : "MessageHeaderLE",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MessageHeader",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MessageHeader",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MessageHeader.id",
      "path" : "MessageHeader.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.meta.lastUpdated",
      "path" : "MessageHeader.meta.lastUpdated",
      "short" : "Fecha del Evento. El formato corresponde a año, mes, día y hora (hh:mm) y se representa de la siguiente forma: YYYY-MM-DDTHH:MMZ",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.event[x]",
      "path" : "MessageHeader.event[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MessageHeader.event[x]:eventCoding",
      "path" : "MessageHeader.event[x]",
      "sliceName" : "eventCoding",
      "short" : "Código para el evento que representa este mensaje o enlace a la definición del evento",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSTipoEventoLE"
      }
    },
    {
      "id" : "MessageHeader.author",
      "path" : "MessageHeader.author",
      "short" : "Referencia al rol del profesional que realiza la acción asociada al evento.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.source.software",
      "path" : "MessageHeader.source.software",
      "short" : "Solución Informática. Corresponde al nombre (un string human-friendly) del aplicativo de Registro Clínico Electronico, que realiza el envío de la información.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.source.endpoint",
      "path" : "MessageHeader.source.endpoint",
      "short" : "Dirección o ID de origen del mensaje real.",
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.focus",
      "path" : "MessageHeader.focus",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "closed"
      },
      "short" : "Referencia a la prestación requerida para el paciente en cada evento",
      "min" : 1,
      "max" : "2",
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.focus:ServiceRequestLE",
      "path" : "MessageHeader.focus",
      "sliceName" : "ServiceRequestLE",
      "short" : "Referencia a la solicitud de servicio requerida por el paciente, debe ir en cada uno de los eventos",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.focus:AppointmentAgendarLE",
      "path" : "MessageHeader.focus",
      "sliceName" : "AppointmentAgendarLE",
      "short" : "Referencia a la cita médica requerida por el paciente y se agrega SOLO en el evento agendar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AppointmentAgendarLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MessageHeader.focus:EncounterAtenderLE",
      "path" : "MessageHeader.focus",
      "sliceName" : "EncounterAtenderLE",
      "short" : "Referencia a la atención realizada al paciente  y se agrega SOLO en el evento atender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterAtenderLE"]
      }],
      "mustSupport" : true
    }]
  }
}

```
