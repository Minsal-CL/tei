# Bundle Atender LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Bundle Atender LE**

## Resource Profile: Bundle Atender LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/BundleAtenderLE | *Version*:0.2.3 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:BundleAtenderLE |

 
Bundle Atender LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento Atender. 

### Consideraciones Generales

* En el recurso [MessageHeader](StructureDefinition-MessageHeaderLE.md) el elemento eventCoding.code su valor debe ser "atender".
* El rol que cumple el profesional en este evento es de "atendedor".
* El recurso [Encounter](StructureDefinition-EncounterAtenderLE.md) debe ser agregado en MessageHeader.focus.

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-BundleAtenderLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleAtenderLE.csv), [Excel](StructureDefinition-BundleAtenderLE.xlsx), [Schematron](StructureDefinition-BundleAtenderLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleAtenderLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/BundleAtenderLE",
  "version" : "0.2.3",
  "name" : "BundleAtenderLE",
  "title" : "Bundle Atender LE",
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
  "description" : "Bundle Atender LE recurso utilizado para transportar todos los datos del mensaje relacionado al evento Atender.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.id",
      "path" : "Bundle.id",
      "short" : "Id propio del recurso",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "Indica de qué tipo es el Bundle, en este caso de tipo message",
      "patternCode" : "message",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "short" : "Cuando el Bundle fue armado",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "short" : "Entrada en el Bundle: contendrá un recurso o información",
      "min" : 8,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:messageheader",
      "path" : "Bundle.entry",
      "sliceName" : "messageheader",
      "short" : "Entrada en el Bundle: contendrá un recurso MessageHeader",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:messageheader.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:messageheader.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Cabecera del mensaje que facilita el seguimiento, debe ser siempre el primer entry en Bundle.type = message",
      "min" : 1,
      "type" : [{
        "code" : "MessageHeader",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MessageHeaderLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:servicerequest",
      "path" : "Bundle.entry",
      "sliceName" : "servicerequest",
      "short" : "Entrada en el Bundle: contendrá un recurso ServiceRequest",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:servicerequest.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:servicerequest.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Prestación que se requiere para el paciente, que no pudo ser resuelta en el APS",
      "min" : 1,
      "type" : [{
        "code" : "ServiceRequest",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "practitioner",
      "short" : "Entrada en el Bundle: contendrá un recurso Practitioner",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Profesional que presto la atención al paciente",
      "min" : 1,
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerProfesionalLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitionerRole",
      "path" : "Bundle.entry",
      "sliceName" : "practitionerRole",
      "short" : "Entrada en el Bundle: contendrá un recurso PractitionerRole",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitionerRole.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitionerRole.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Se indica que médico y que organización atiende la IC. code.coding.code=atendedor",
      "min" : 1,
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organization",
      "path" : "Bundle.entry",
      "sliceName" : "organization",
      "short" : "Entrada en el Bundle: contendrá un recurso Organization",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organization.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organization.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Centro de salud que atiende la interconsulta",
      "min" : 1,
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/OrganizationLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:encounter",
      "path" : "Bundle.entry",
      "sliceName" : "encounter",
      "short" : "Entrada en el Bundle: contendrá un recurso Encounter",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:encounter.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:encounter.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Encuentro que ocurre durante la atención del paciente.",
      "min" : 1,
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterAtenderLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:carePlan",
      "path" : "Bundle.entry",
      "sliceName" : "carePlan",
      "short" : "Entrada en el Bundle: contendrá un recurso CarePlan",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:carePlan.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:carePlan.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Indicaciones clinicas que deja el profesional para el paciente",
      "min" : 1,
      "type" : [{
        "code" : "CarePlan",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/CarePlanAtenderLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Condition",
      "path" : "Bundle.entry",
      "sliceName" : "Condition",
      "short" : "Entrada en el Bundle: ConditionDiagnosticoLE",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Condition.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Condition.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Diagnóstico por la cual será tratado el paciente",
      "min" : 1,
      "type" : [{
        "code" : "Condition",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ConditionDiagnosticoLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:AllergyIntolerance",
      "path" : "Bundle.entry",
      "sliceName" : "AllergyIntolerance",
      "short" : "Entrada en el Bundle: contendrá un recurso AllergyIntolerance",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:AllergyIntolerance.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:AllergyIntolerance.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Recurso para indicar si el paciente posee alguna alergia",
      "min" : 1,
      "type" : [{
        "code" : "AllergyIntolerance",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AllergyIntoleranceIniciarLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:ObservationResultadoExamen",
      "path" : "Bundle.entry",
      "sliceName" : "ObservationResultadoExamen",
      "short" : "Entrada en el Bundle: contendrá un recurso Observation",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:ObservationResultadoExamen.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:ObservationResultadoExamen.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Recurso para indicar el resultado de los examenes realizados con anterioridad",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationResultadoExamen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:SolicitudMedicamento",
      "path" : "Bundle.entry",
      "sliceName" : "SolicitudMedicamento",
      "short" : "Entrada en el Bundle: Solicitud Medicamento",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:SolicitudMedicamento.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:SolicitudMedicamento.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Prescripción de algún medicamento indicado en el CarePlan",
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MedicationRequestLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:SolicitudExamen",
      "path" : "Bundle.entry",
      "sliceName" : "SolicitudExamen",
      "short" : "Entrada en el Bundle: Solicitud Examen",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:SolicitudExamen.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:SolicitudExamen.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Solicitud de examen",
      "min" : 1,
      "type" : [{
        "code" : "ServiceRequest",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestExamenLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Anamnesis",
      "path" : "Bundle.entry",
      "sliceName" : "Anamnesis",
      "short" : "Entrada en el Bundle: Anamnesis",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Anamnesis.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Anamnesis.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Anamnesis del paciente",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationAnamnesisLE"]
      }],
      "mustSupport" : true
    }]
  }
}

```
