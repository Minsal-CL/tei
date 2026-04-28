# QuestionnaireResponse Iniciar Motivo de la Derivación LE - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **QuestionnaireResponse Iniciar Motivo de la Derivación LE**

## Resource Profile: QuestionnaireResponse Iniciar Motivo de la Derivación LE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/QuestionnaireResponseIniciarLE | *Version*:0.2.2 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 0 | *Computable Name*:QuestionnaireResponseIniciarLE |

 
QuestionnaireResponse Iniciar para Motivo de Derivación LE 

**Usages:**

* Use this Profile: [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md) and [Bundle Referenciar LE](StructureDefinition-BundleReferenciarLE.md)
* Refer to this Profile: [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.minsal.tei|current/StructureDefinition/QuestionnaireResponseIniciarLE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-QuestionnaireResponseIniciarLE.csv), [Excel](StructureDefinition-QuestionnaireResponseIniciarLE.xlsx), [Schematron](StructureDefinition-QuestionnaireResponseIniciarLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "QuestionnaireResponseIniciarLE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/QuestionnaireResponseIniciarLE",
  "version" : "0.2.2",
  "name" : "QuestionnaireResponseIniciarLE",
  "title" : "QuestionnaireResponse Iniciar Motivo de la Derivación LE",
  "status" : "draft",
  "date" : "2026-04-27T17:06:16-04:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Franco Ulloa",
    "telecom" : [{
      "system" : "email",
      "value" : "franco.ulloa@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "QuestionnaireResponse Iniciar para Motivo de Derivación LE",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse.id",
      "path" : "QuestionnaireResponse.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "patternCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Questionnaire/MotivoDerivacion"
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.encounter",
      "path" : "QuestionnaireResponse.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterIniciarLE"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerProfesionalLE"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "MotivoDerivacion",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.text",
      "path" : "QuestionnaireResponse.item.text",
      "patternString" : "Motivo Derivación"
    }]
  }
}

```
