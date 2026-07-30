# Prestador Administrativo LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Prestador Administrativo LE**

## Resource Profile: Prestador Administrativo LE 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerAdministrativoLE | *Version*:0.2.3 |
| Draft as of 2026-07-22 | *Computable Name*:PractitionerAdministrativoLE |

 
Prestador Administrativo definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud. 

**Usages:**

* Use this Profile: [Bundle Agendar LE](StructureDefinition-BundleAgendarLE.md) and [Bundle Terminar LE](StructureDefinition-BundleTerminarLE.md)
* Refer to this Profile: [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md)
* Examples for this Profile: [Practitioner/ProfesionalAdministrativoEjemplo](Practitioner-ProfesionalAdministrativoEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-PractitionerAdministrativoLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PractitionerAdministrativoLE.csv), [Excel](StructureDefinition-PractitionerAdministrativoLE.xlsx), [Schematron](StructureDefinition-PractitionerAdministrativoLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PractitionerAdministrativoLE",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerAdministrativoLE",
  "version" : "0.2.3",
  "name" : "PractitionerAdministrativoLE",
  "title" : "Prestador Administrativo LE",
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
  "description" : "Prestador Administrativo definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud.",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner.id",
      "path" : "Practitioner.id",
      "short" : "Id temporal necesario para identificar el recurso",
      "definition" : "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.extension:SexoBiologico",
      "path" : "Practitioner.extension",
      "sliceName" : "SexoBiologico",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:run",
      "path" : "Practitioner.identifier",
      "sliceName" : "run",
      "short" : "Identificador destinado a determinar el número de RUN",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:run.use",
      "path" : "Practitioner.identifier.use",
      "short" : "Uso del identificador",
      "min" : 1,
      "patternCode" : "official"
    },
    {
      "id" : "Practitioner.identifier:run.type",
      "path" : "Practitioner.identifier.type",
      "short" : "Descripción del identificador",
      "definition" : "Descripción para el tipo de identificador",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSIdentificadorPrestador"
      }
    },
    {
      "id" : "Practitioner.identifier:run.type.coding",
      "path" : "Practitioner.identifier.type.coding",
      "short" : "Código definido por un sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:run.type.coding.system",
      "path" : "Practitioner.identifier.type.coding.system",
      "short" : "Sistema de codificación para el tipo de identificador",
      "patternUri" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:run.type.coding.code",
      "path" : "Practitioner.identifier.type.coding.code",
      "short" : "Código que identifica al tipo de documento de identificador",
      "definition" : "Código que identifica al tipo de documento de identificador",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:run.value",
      "path" : "Practitioner.identifier.value",
      "short" : "Número RUN",
      "definition" : "Valor RUN",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:rnpi",
      "path" : "Practitioner.identifier",
      "sliceName" : "rnpi",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:pasaporte",
      "path" : "Practitioner.identifier",
      "sliceName" : "pasaporte",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:otro",
      "path" : "Practitioner.identifier",
      "sliceName" : "otro",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "short" : "Nombre(s) y apellido(s) del prestador administrativo",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "short" : "Primer apellido del administrativo",
      "min" : 1
    },
    {
      "id" : "Practitioner.name.family.extension:segundoApellido",
      "path" : "Practitioner.name.family.extension",
      "sliceName" : "segundoApellido",
      "short" : "Segundo apellido del administrativo"
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "short" : "Nombre(s) del administrativo",
      "min" : 1
    },
    {
      "id" : "Practitioner.telecom.system",
      "path" : "Practitioner.telecom.system",
      "min" : 1
    },
    {
      "id" : "Practitioner.telecom.value",
      "path" : "Practitioner.telecom.value",
      "min" : 1
    },
    {
      "id" : "Practitioner.telecom.rank",
      "path" : "Practitioner.telecom.rank",
      "short" : "Ranking de preferencia de uso de contacto (el más alto es 1)",
      "definition" : "Ranking de preferencia de uso de contacto (el más alto es 1)",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom.period",
      "path" : "Practitioner.telecom.period",
      "short" : "Período en el cual el contacto está o estuvo en uso",
      "definition" : "Período en el cual el contacto está o estuvo en uso",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom.period.start",
      "path" : "Practitioner.telecom.period.start",
      "short" : "Iniciar del uso del medio de contacto",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom.period.end",
      "path" : "Practitioner.telecom.period.end",
      "short" : "Fecha en la cual ya se dejó de utilizar el medio de contacto",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "short" : "Dirección según Guía Core-CL",
      "definition" : "Dirección según Guía Core-CL"
    },
    {
      "id" : "Practitioner.birthDate",
      "path" : "Practitioner.birthDate",
      "short" : "Fecha de nacimiento del prestador administrativo. El formato debe ser YYYY-MM-DD",
      "definition" : "Fecha de nacimiento del prestador administrativo. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional",
      "path" : "Practitioner.qualification",
      "sliceName" : "TituloProfesional"
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional.code.text",
      "path" : "Practitioner.qualification.code.text",
      "short" : "Título Profesional como texto libre"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadMedica",
      "path" : "Practitioner.qualification",
      "sliceName" : "EspecialidadMedica",
      "max" : "0"
    },
    {
      "id" : "Practitioner.qualification:Subespecialidad",
      "path" : "Practitioner.qualification",
      "sliceName" : "Subespecialidad",
      "max" : "0"
    }]
  }
}

```
