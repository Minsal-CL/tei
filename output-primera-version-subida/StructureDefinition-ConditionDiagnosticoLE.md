# Condition Diagnostico LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Condition Diagnostico LE**

## Resource Profile: Condition Diagnostico LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ConditionDiagnosticoLE | *Version*:0.2.3 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:ConditionDiagnosticoLE |

 
Condicion Diagnostico LE, recurso que se utiliza para indicar el diagnóstico 

**Usages:**

* Use this Profile: [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md), [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md) and [Bundle Referenciar LE](StructureDefinition-BundleReferenciarLE.md)
* Refer to this Profile: [Encounter Atender LE](StructureDefinition-EncounterAtenderLE.md), [Encounter Iniciar LE](StructureDefinition-EncounterIniciarLE.md) and [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Profile: [Condition/ConditionAtencionejemplo](Condition-ConditionAtencionejemplo.md) and [Condition/ConditionInicialEjemplo](Condition-ConditionInicialEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-ConditionDiagnosticoLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ConditionDiagnosticoLE.csv), [Excel](StructureDefinition-ConditionDiagnosticoLE.xlsx), [Schematron](StructureDefinition-ConditionDiagnosticoLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ConditionDiagnosticoLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ConditionDiagnosticoLE",
  "version" : "0.2.3",
  "name" : "ConditionDiagnosticoLE",
  "title" : "Condition Diagnostico LE",
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
  "description" : "Condicion Diagnostico LE, recurso que se utiliza para indicar el diagnóstico",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreDiagnosticoCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition.id",
      "path" : "Condition.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Estado clinico del diagnostico, general (active | inactive) o detallado (recurrence | relapse | remission | resolved)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-clinical"
      }
    },
    {
      "id" : "Condition.clinicalStatus.coding",
      "path" : "Condition.clinicalStatus.coding",
      "short" : "Código definido por un sistema terminológico",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus.coding.system",
      "path" : "Condition.clinicalStatus.coding.system",
      "short" : "Sistema terminológico, url/uri/uuid",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus.coding.code",
      "path" : "Condition.clinicalStatus.coding.code",
      "short" : "Código definido en un sistema terminológico",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus.coding.display",
      "path" : "Condition.clinicalStatus.coding.display",
      "short" : "Representación visual definida por el sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Estado de verificación del diagnóstico por parte del médico solicitante. Puede ser unconfirmed | provisional | differential | confirmed | refuted | entered-in-error",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-ver-status"
      }
    },
    {
      "id" : "Condition.verificationStatus.coding",
      "path" : "Condition.verificationStatus.coding",
      "short" : "Código definido por un sistema terminológico",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus.coding.system",
      "path" : "Condition.verificationStatus.coding.system",
      "short" : "Sistema terminológico, url/uri/uuid",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus.coding.code",
      "path" : "Condition.verificationStatus.coding.code",
      "short" : "Código definido en un sistema terminológico",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus.coding.display",
      "path" : "Condition.verificationStatus.coding.display",
      "short" : "Representación visual definida por el sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "short" : "Categoría del diagnóstico de origen. Se refiere a un diagnostico  identificado durante el encuentro médico o un problema de salud previamente hablado",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding",
      "path" : "Condition.category.coding",
      "short" : "Código definido por un sistema terminológico",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding.system",
      "path" : "Condition.category.coding.system",
      "short" : "Sistema terminológico, url/uri/uuid",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding.code",
      "path" : "Condition.category.coding.code",
      "short" : "Código definido en un sistema terminológico",
      "min" : 1,
      "patternCode" : "encounter-diagnosis",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding.display",
      "path" : "Condition.category.coding.display",
      "short" : "Representación visual definida por el sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.text",
      "path" : "Condition.category.text",
      "short" : "Representación en texto plano del concepto"
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "short" : "Severidad del diagnóstico, indicada por el médico solicitante",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-severity"
      }
    },
    {
      "id" : "Condition.severity.coding",
      "path" : "Condition.severity.coding",
      "short" : "Código definido por un sistema terminológico",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity.coding.system",
      "path" : "Condition.severity.coding.system",
      "short" : "Identidad del sistema terminológico, url/uri/uuid",
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity.coding.code",
      "path" : "Condition.severity.coding.code",
      "short" : "Código definido en un sistema terminológico",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity.coding.display",
      "path" : "Condition.severity.coding.display",
      "short" : "Representación visual definida por el sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Código correspondiente al diagnóstico realizado por el médico solicitante",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSTerminologiasDiag"
      }
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "short" : "Código definido por un sistema terminológico",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding.system",
      "path" : "Condition.code.coding.system",
      "short" : "Sistema terminológico, url/uri/uuid",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding.code",
      "path" : "Condition.code.coding.code",
      "short" : "Código definido en un sistema terminológico",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding.display",
      "path" : "Condition.code.coding.display",
      "short" : "Representación definida por el sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "short" : "Descripcion en texto libre correspondiente al diagnóstico realizado por el médico solicitante",
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Paciente que tiene este diagnóstico",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"]
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterIniciarLE"]
      }]
    }]
  }
}

```
