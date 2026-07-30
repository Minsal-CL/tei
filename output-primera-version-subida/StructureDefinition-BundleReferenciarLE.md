# Bundle Referenciar LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Bundle Referenciar LE**

## Resource Profile: Bundle Referenciar LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/BundleReferenciarLE | *Version*:0.2.3 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:BundleReferenciarLE |

 
Bundle Referenciar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento referenciar. 

### Consideraciones Generales

* En el recurso [MessageHeader](StructureDefinition-MessageHeaderLE.md) el elemento eventCoding.code su valor debe ser "referenciar".
* El rol que cumple el profesional en este evento es de "referenciador".

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-BundleReferenciarLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleReferenciarLE.csv), [Excel](StructureDefinition-BundleReferenciarLE.xlsx), [Schematron](StructureDefinition-BundleReferenciarLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleReferenciarLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/BundleReferenciarLE",
  "version" : "0.2.3",
  "name" : "BundleReferenciarLE",
  "title" : "Bundle Referenciar LE",
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
  "description" : "Bundle Referenciar LE, recurso utilizado para transportar todos los datos del mensaje relacionado al evento referenciar.",
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
      "min" : 7,
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
      "short" : "Profesional que referencia la interconsulta",
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
      "min" : 2,
      "max" : "2",
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
      "short" : "Se indica que médico y que organización referencia la inteconsulta. O el destino de referencia",
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
      "min" : 2,
      "max" : "2",
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
      "short" : "Centro de salud que realiza la interconsulta y centro de salud hacia donde se referencia la IC",
      "min" : 1,
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/OrganizationLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:conditionDiagnostico",
      "path" : "Bundle.entry",
      "sliceName" : "conditionDiagnostico",
      "short" : "Entrada en el Bundle: contendrá un recurso Condition",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:conditionDiagnostico.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:conditionDiagnostico.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Condición que especifica el diagnóstico inicial por el cual se emite la IC",
      "min" : 1,
      "type" : [{
        "code" : "Condition",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ConditionDiagnosticoLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observationComorbilidad",
      "path" : "Bundle.entry",
      "sliceName" : "observationComorbilidad",
      "short" : "Entrada en el Bundle: contendrá un recurso Observation de indice de Comorbilidad",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observationComorbilidad.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observationComorbilidad.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Indice de Comorbilidad del paciente",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationIndiceComorbilidadLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observationDiscapacidad",
      "path" : "Bundle.entry",
      "sliceName" : "observationDiscapacidad",
      "short" : "Entrada en el Bundle: contendrá un recurso Observation de Discapacidad",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observationDiscapacidad.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observationDiscapacidad.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observación para indicar si el paciente tiene una discapacidad o no",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationDiscapacidadLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observationCuidador",
      "path" : "Bundle.entry",
      "sliceName" : "observationCuidador",
      "short" : "Entrada en el Bundle: contendrá un recurso Observation de Cuidador",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observationCuidador.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observationCuidador.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observación para indicar si el paciente tiene un cuidador o no",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationIniciarCuidadorLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:ObservationResultadoExamen",
      "path" : "Bundle.entry",
      "sliceName" : "ObservationResultadoExamen",
      "short" : "Entrada en el Bundle: contendrá un recurso Observation de resultado de examen",
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
      "short" : "Observación para indicar los examenes realizados al paciente",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ObservationResultadoExamen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:allergyintolerance",
      "path" : "Bundle.entry",
      "sliceName" : "allergyintolerance",
      "short" : "Entrada en el Bundle: contendrá un recurso AllergyIntolerance",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:allergyintolerance.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:allergyintolerance.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Alergias que padece el paciente",
      "min" : 1,
      "type" : [{
        "code" : "AllergyIntolerance",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/AllergyIntoleranceIniciarLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:motivoDerivacion",
      "path" : "Bundle.entry",
      "sliceName" : "motivoDerivacion",
      "short" : "Entrada en el Bundle: contendrá un recurso QuestionnaireResponse",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:motivoDerivacion.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Uri de identificación dentro del Bundle",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:motivoDerivacion.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Recurso donde se registra el motivo de la derivación del paciente",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/QuestionnaireResponseIniciarLE"]
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
    }]
  }
}

```
