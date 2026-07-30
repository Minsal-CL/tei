# CarePlan Atender LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **CarePlan Atender LE**

## Resource Profile: CarePlan Atender LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/CarePlanAtenderLE | *Version*:0.2.3 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:CarePlanAtenderLE |

 
CarePlan Atender LE es el recurso utilizado para representar las indicaciones entregadas por el profesional como resultado de la atención. 

**Usages:**

* Use this Profile: [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md)
* Examples for this Profile: [CarePlan/CarePlanAtencionEjemplo](CarePlan-CarePlanAtencionEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-CarePlanAtenderLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CarePlanAtenderLE.csv), [Excel](StructureDefinition-CarePlanAtenderLE.xlsx), [Schematron](StructureDefinition-CarePlanAtenderLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CarePlanAtenderLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/CarePlanAtenderLE",
  "version" : "0.2.3",
  "name" : "CarePlanAtenderLE",
  "title" : "CarePlan Atender LE",
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
  "description" : "CarePlan Atender LE es el recurso utilizado para representar las indicaciones entregadas por el profesional como resultado de la atención.",
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
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan.id",
      "path" : "CarePlan.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.extension",
      "path" : "CarePlan.extension",
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
      "id" : "CarePlan.extension:Requiere-Examen",
      "path" : "CarePlan.extension",
      "sliceName" : "Requiere-Examen",
      "short" : "Declaración si el paciente requiere exámenes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionSolicitudExamenes"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "short" : "Estado del CarePlan, en este caso 'active'",
      "patternCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "short" : "Intención del CarePlan, en este caso 'plan'",
      "patternCode" : "plan",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "short" : "Indicaciones del plan de cuidado como texto libre",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "short" : "Referencia al paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.encounter",
      "path" : "CarePlan.encounter",
      "short" : "Encuentro en el cual se genera el plan de cuidado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterAtenderLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "reference.resolve()"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:referenciaReceta",
      "path" : "CarePlan.activity",
      "sliceName" : "referenciaReceta",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:referenciaReceta.reference",
      "path" : "CarePlan.activity.reference",
      "short" : "Detalles definidos en un recurso específico",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MedicationRequestLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:referenciaServiceRequestExamenLE",
      "path" : "CarePlan.activity",
      "sliceName" : "referenciaServiceRequestExamenLE",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:referenciaServiceRequestExamenLE.reference",
      "path" : "CarePlan.activity.reference",
      "short" : "Detalles definidos en un recurso específico",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ServiceRequestExamenLE"]
      }],
      "mustSupport" : true
    }]
  }
}

```
