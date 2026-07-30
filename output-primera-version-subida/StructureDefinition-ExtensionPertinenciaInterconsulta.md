# Pertinencia Interconsulta - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Pertinencia Interconsulta**

## Extension: Pertinencia Interconsulta 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionPertinenciaInterconsulta | *Version*:0.2.3 |
| Draft as of 2026-07-22 | *Computable Name*:ExtensionPertinenciaInterconsulta |

Pertinencia Interconsulta

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ServiceRequest LE](StructureDefinition-ServiceRequestLE.md)
* Examples for this Extension: [ServiceRequest/EjemploSolicitudInterconsultaFinalizada](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-ExtensionPertinenciaInterconsulta.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtensionPertinenciaInterconsulta.csv), [Excel](StructureDefinition-ExtensionPertinenciaInterconsulta.xlsx), [Schematron](StructureDefinition-ExtensionPertinenciaInterconsulta.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtensionPertinenciaInterconsulta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionPertinenciaInterconsulta",
  "version" : "0.2.3",
  "name" : "ExtensionPertinenciaInterconsulta",
  "title" : "Pertinencia Interconsulta",
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
  "description" : "Pertinencia Interconsulta",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Pertinencia Interconsulta",
      "definition" : "Pertinencia Interconsulta"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:EvaluacionPertinencia",
      "path" : "Extension.extension",
      "sliceName" : "EvaluacionPertinencia",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:EvaluacionPertinencia.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:EvaluacionPertinencia.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "EvaluacionPertinencia",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:EvaluacionPertinencia.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Evaluación de la pertinencia de la solicitud de interconsulta",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSPertinenciaInterconsulta"
      }
    },
    {
      "id" : "Extension.extension:EvaluacionPertinencia.value[x].coding",
      "path" : "Extension.extension.value[x].coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:EvaluacionPertinencia.value[x].coding.system",
      "path" : "Extension.extension.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:EvaluacionPertinencia.value[x].coding.code",
      "path" : "Extension.extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:EvaluacionPertinencia.value[x].coding.display",
      "path" : "Extension.extension.value[x].coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:MotivoNoPertinencia",
      "path" : "Extension.extension",
      "sliceName" : "MotivoNoPertinencia",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:MotivoNoPertinencia.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:MotivoNoPertinencia.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "MotivoNoPertinencia",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:MotivoNoPertinencia.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Motivo No Pertinencia",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/ExtensionPertinenciaInterconsulta",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
