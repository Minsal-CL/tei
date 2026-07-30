# Extension ContactadoLE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Extension ContactadoLE**

## Extension: Extension ContactadoLE 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/Contactado | *Version*:0.2.3 |
| Draft as of 2026-07-22 | *Computable Name*:ExtensionContactadoLE |

Extension ContactadoLE

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Appointment Agendar LE](StructureDefinition-AppointmentAgendarLE.md)
* Examples for this Extension: [Appointment/AgendaEjemplo](Appointment-AgendaEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-Contactado.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Contactado.csv), [Excel](StructureDefinition-Contactado.xlsx), [Schematron](StructureDefinition-Contactado.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Contactado",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/Contactado",
  "version" : "0.2.3",
  "name" : "ExtensionContactadoLE",
  "title" : "Extension ContactadoLE",
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
  "description" : "Extension ContactadoLE",
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
    "expression" : "Appointment"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Extension ContactadoLE",
      "definition" : "Extension ContactadoLE"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:Contactado",
      "path" : "Extension.extension",
      "sliceName" : "Contactado",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:Contactado.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:Contactado.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "Contactado"
    },
    {
      "id" : "Extension.extension:Contactado.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:MotivoNoContactabilidad",
      "path" : "Extension.extension",
      "sliceName" : "MotivoNoContactabilidad",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:MotivoNoContactabilidad.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:MotivoNoContactabilidad.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "MotivoNoContactabilidad",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:MotivoNoContactabilidad.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Código, del cual indica el motivo de no contactabilidad",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSMotivoNoContactabilidad"
      }
    },
    {
      "id" : "Extension.extension:MotivoNoContactabilidad.value[x].coding",
      "path" : "Extension.extension.value[x].coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:MotivoNoContactabilidad.value[x].coding.system",
      "path" : "Extension.extension.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:MotivoNoContactabilidad.value[x].coding.code",
      "path" : "Extension.extension.value[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:MotivoNoContactabilidad.value[x].coding.display",
      "path" : "Extension.extension.value[x].coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:MotivoNoContactabilidad.value[x].text",
      "path" : "Extension.extension.value[x].text",
      "short" : "Otro motivo de no contactabilidad",
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/Contactado",
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
