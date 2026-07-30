# QuestionnaireResponse Iniciar Motivo de la Derivación LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **QuestionnaireResponse Iniciar Motivo de la Derivación LE**

## Resource Profile: QuestionnaireResponse Iniciar Motivo de la Derivación LE 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/QuestionnaireResponseIniciarLE | *Version*:0.2.3 |
| Draft as of 2026-07-22 | *Computable Name*:QuestionnaireResponseIniciarLE |

 
QuestionnaireResponse Iniciar para Motivo de Derivación LE 

**Usages:**

* Use this Profile: [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md) and [Bundle Referenciar LE](StructureDefinition-BundleReferenciarLE.md)
* Refer to this Profile: [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Profile: [QuestionnaireResponse/MotivoDerivacionEjemplo1](QuestionnaireResponse-MotivoDerivacionEjemplo1.md), [QuestionnaireResponse/MotivoDerivacionEjemplo2](QuestionnaireResponse-MotivoDerivacionEjemplo2.md) and [QuestionnaireResponse/MotivoDerivacionEjemplo3](QuestionnaireResponse-MotivoDerivacionEjemplo3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-QuestionnaireResponseIniciarLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-QuestionnaireResponseIniciarLE.csv), [Excel](StructureDefinition-QuestionnaireResponseIniciarLE.xlsx), [Schematron](StructureDefinition-QuestionnaireResponseIniciarLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "QuestionnaireResponseIniciarLE",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/QuestionnaireResponseIniciarLE",
  "version" : "0.2.3",
  "name" : "QuestionnaireResponseIniciarLE",
  "title" : "QuestionnaireResponse Iniciar Motivo de la Derivación LE",
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
      "min" : 1,
      "patternCanonical" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/Questionnaire/MotivoDerivacion",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.encounter",
      "path" : "QuestionnaireResponse.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/EncounterIniciarLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerProfesionalLE"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1,
      "max" : "2",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MotivoDerivacion",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "MotivoDerivacion",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MotivoDerivacion.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "fixedString" : "MotivoDerivacion",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MotivoDerivacion.text",
      "path" : "QuestionnaireResponse.item.text",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MotivoDerivacion.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MotivoDerivacion.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "GarantiaExplicitaenSalud-GES",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.text",
      "path" : "QuestionnaireResponse.item.text",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1,
      "max" : "2",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item:ProblemadeSaludGES",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "ProblemadeSaludGES",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item:ProblemadeSaludGES.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "fixedString" : "ProblemadeSaludGES",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item:ProblemadeSaludGES.text",
      "path" : "QuestionnaireResponse.item.item.text",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item:ProblemadeSaludGES.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item:ProblemadeSaludGES.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/vs-problema-ges-tei"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item:SubProblemadeSaludGES",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "SubProblemadeSaludGES",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item:SubProblemadeSaludGES.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "SubProblemadeSaludGES",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item:SubProblemadeSaludGES.text",
      "path" : "QuestionnaireResponse.item.item.text",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item:SubProblemadeSaludGES.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:GarantiaExplicitaenSalud-GES.item:SubProblemadeSaludGES.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    }]
  }
}

```
