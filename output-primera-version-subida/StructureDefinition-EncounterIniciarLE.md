# Encounter Iniciar LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Encounter Iniciar LE**

## Resource Profile: Encounter Iniciar LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterIniciarLE | *Version*:0.2.3 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:EncounterIniciarLE |

 
Encounter Iniciar LE recurso que se utiliza para representar el encuentro médico, que representa el encuentro de cuando se solicita la interconsulta. 

**Usages:**

* Use this Profile: [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md)
* Refer to this Profile: [Condition Diagnostico LE](StructureDefinition-ConditionDiagnosticoLE.md), [Discapacidad LE](StructureDefinition-ObservationDiscapacidadLE.md), [Indice Comorbilidad LE](StructureDefinition-ObservationIndiceComorbilidadLE.md), [Cuidador LE](StructureDefinition-ObservationIniciarCuidadorLE.md)... Show 3 more, [Observation Resultado Examen](StructureDefinition-ObservationResultadoExamen.md), [QuestionnaireResponse Iniciar Motivo de la Derivación LE](StructureDefinition-QuestionnaireResponseIniciarLE.md) and [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Profile: [Encounter/EncounterIniciarEjemplo](Encounter-EncounterIniciarEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-EncounterIniciarLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EncounterIniciarLE.csv), [Excel](StructureDefinition-EncounterIniciarLE.xlsx), [Schematron](StructureDefinition-EncounterIniciarLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EncounterIniciarLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterIniciarLE",
  "version" : "0.2.3",
  "name" : "EncounterIniciarLE",
  "title" : "Encounter Iniciar LE",
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
  "description" : "Encounter Iniciar LE recurso que se utiliza para representar el encuentro médico, que representa el encuentro de cuando se solicita la interconsulta.",
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
  "type" : "Encounter",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/EncounterCL",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter.id",
      "path" : "Encounter.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.extension:ConsecuenciaAtencionCodigo",
      "path" : "Encounter.extension",
      "sliceName" : "ConsecuenciaAtencionCodigo",
      "short" : "Código de la consecuencia de la atención",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionConsecuenciaAtencionCodigo"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:ConsecuenciaAtencionCodigo.value[x].coding.code",
      "path" : "Encounter.extension.value[x].coding.code",
      "patternCode" : "3"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "short" : "Id del registro de atención o encuentro del sistema clínico de origen",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier.value",
      "path" : "Encounter.identifier.value",
      "short" : "Valor de registro real",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "Estado actual del encuentro",
      "patternCode" : "finished"
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "short" : "Modalidad de Atención",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSModalidadAtencionCodigo"
      }
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "short" : "Referencia al Paciente que se presentará a la Atención APS",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"]
      }]
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"]
      }]
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "short" : "Fechas de comienzo y término del encuentro Atención APS. El formato queda consignado como YYYY-MM-DDTHH:MMZ",
      "min" : 1
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "short" : "Fecha Comienzo del encuentro Atención APS",
      "min" : 1
    },
    {
      "id" : "Encounter.period.end",
      "path" : "Encounter.period.end",
      "short" : "Fecha de término del encuentro Atención APS",
      "min" : 1
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "short" : "El o los diagnósticos por cual se crea la solicitud de interconsulta",
      "min" : 1
    },
    {
      "id" : "Encounter.diagnosis.condition",
      "path" : "Encounter.diagnosis.condition",
      "short" : "Referencia al diagnóstico de origen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ConditionDiagnosticoLE"]
      }]
    }]
  }
}

```
