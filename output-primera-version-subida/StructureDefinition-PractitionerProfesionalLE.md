# Prestador Profesional LE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Prestador Profesional LE**

## Resource Profile: Prestador Profesional LE 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerProfesionalLE | *Version*:0.2.3 |
| Draft as of 2026-07-22 | *Computable Name*:PractitionerProfesionalLE |

 
Prestador Profesional Individual definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud. 

**Usages:**

* Use this Profile: [Bundle Agendar LE](StructureDefinition-BundleAgendarLE.md), [Bundle Atender LE](StructureDefinition-BundleAtenderLE.md), [Bundle Iniciar LE](StructureDefinition-BundleIniciarLE.md), [Bundle Priorizar LE](StructureDefinition-BundlePriorizarLE.md)... Show 3 more, [Bundle Referenciar LE](StructureDefinition-BundleReferenciarLE.md), [Bundle Revisar LE](StructureDefinition-BundleRevisarLE.md) and [Bundle Terminar LE](StructureDefinition-BundleTerminarLE.md)
* Refer to this Profile: [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md), [QuestionnaireResponse Iniciar Motivo de la Derivación LE](StructureDefinition-QuestionnaireResponseIniciarLE.md) and [Solicitud de Examen LE](StructureDefinition-ServiceRequestExamenLE.md)
* Examples for this Profile: [Practitioner/PractitionerProfesionalLEAtendedor](Practitioner-PractitionerProfesionalLEAtendedor.md) and [Practitioner/PractitionerProfesionalLEEjemplo](Practitioner-PractitionerProfesionalLEEjemplo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.tei|current/StructureDefinition/StructureDefinition-PractitionerProfesionalLE.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PractitionerProfesionalLE.csv), [Excel](StructureDefinition-PractitionerProfesionalLE.xlsx), [Schematron](StructureDefinition-PractitionerProfesionalLE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PractitionerProfesionalLE",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerProfesionalLE",
  "version" : "0.2.3",
  "name" : "PractitionerProfesionalLE",
  "title" : "Prestador Profesional LE",
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
  "description" : "Prestador Profesional Individual definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud.",
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
      "id" : "Practitioner.extension:Nacionalidad",
      "path" : "Practitioner.extension",
      "sliceName" : "Nacionalidad",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "short" : "Identificador de identidad del Profesional.\nCorresponde a tres slices:",
      "min" : 1,
      "max" : "2"
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
      "short" : "Identificador para RNPI"
    },
    {
      "id" : "Practitioner.identifier:rnpi.use",
      "path" : "Practitioner.identifier.use",
      "short" : "Se define el uso de este identificador",
      "definition" : "Se definirá este uso siempre como \"secondary\""
    },
    {
      "id" : "Practitioner.identifier:rnpi.type",
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
      "id" : "Practitioner.identifier:rnpi.type.coding",
      "path" : "Practitioner.identifier.type.coding",
      "short" : "Código definido por un sistema terminológico",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:rnpi.type.coding.system",
      "path" : "Practitioner.identifier.type.coding.system",
      "short" : "Sistema de codificación para el código de tipo de identificador",
      "patternUri" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:rnpi.type.coding.code",
      "path" : "Practitioner.identifier.type.coding.code",
      "short" : "Código que identifica al tipo de documento de identificador",
      "definition" : "Código que identifica al tipo de documento de identificador. Será #98 para RNPI",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:rnpi.value",
      "path" : "Practitioner.identifier.value",
      "short" : "Número RNPI",
      "definition" : "Valor RNPI entregado por la SuperIntendecia de Salud",
      "min" : 1
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
      "short" : "Nombre(s) y apellido(s) del profesional",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "short" : "Primer apellido del profesional",
      "min" : 1
    },
    {
      "id" : "Practitioner.name.family.extension:segundoApellido",
      "path" : "Practitioner.name.family.extension",
      "sliceName" : "segundoApellido",
      "short" : "Segundo apellido del profesional"
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "short" : "Nombre(s) del Profesional",
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
      "short" : "Ranking de preferencia en el uso del contacto",
      "definition" : "Ranking de preferencia en el uso del contacto",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "short" : "Dirección según Guía Core-CL",
      "max" : "1"
    },
    {
      "id" : "Practitioner.address.use",
      "path" : "Practitioner.address.use",
      "min" : 1,
      "patternCode" : "work"
    },
    {
      "id" : "Practitioner.address.line",
      "path" : "Practitioner.address.line",
      "short" : "Calle o avenida, numero y casa o dpto",
      "definition" : "Calle o avenida, numero y casa o dpto",
      "min" : 1
    },
    {
      "id" : "Practitioner.address.period",
      "path" : "Practitioner.address.period",
      "short" : "Periodo de tiempo durante el  cual es válida la dirección entregada",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.birthDate",
      "path" : "Practitioner.birthDate",
      "short" : "Fecha de nacimiento del prestador profesional. El formato debe ser YYYY-MM-DD",
      "definition" : "Fecha de nacimiento del prestador profesional. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification.code",
      "path" : "Practitioner.qualification.code",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSTituloProfesional"
      }
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional",
      "path" : "Practitioner.qualification",
      "sliceName" : "TituloProfesional",
      "definition" : "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional.extension",
      "path" : "Practitioner.qualification.extension",
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
      "id" : "Practitioner.qualification:TituloProfesional.extension:Mencion",
      "path" : "Practitioner.qualification.extension",
      "sliceName" : "Mencion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/Mencion"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional.identifier",
      "path" : "Practitioner.qualification.identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional.code",
      "path" : "Practitioner.qualification.code",
      "short" : "Representación del título profesional",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSTituloProfesional"
      }
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional.code.text",
      "path" : "Practitioner.qualification.code.text",
      "short" : "Representación textual del título profesional",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional.period",
      "path" : "Practitioner.qualification.period",
      "short" : "Período en el cual se entregó el título considerando fecha de emisión y de caducidad",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional.period.start",
      "path" : "Practitioner.qualification.period.start",
      "short" : "Fecha de emisión"
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional.period.end",
      "path" : "Practitioner.qualification.period.end",
      "short" : "Fecha de expiración"
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional.issuer",
      "path" : "Practitioner.qualification.issuer",
      "short" : "Entidad que otorga el título",
      "definition" : "El nombre de la entidad se solicitará en texto libre"
    },
    {
      "id" : "Practitioner.qualification:TituloProfesional.issuer.display",
      "path" : "Practitioner.qualification.issuer.display",
      "short" : "La entidad que otorga en texto libre",
      "definition" : "La entidad que otorga en texto libre"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadMedica",
      "path" : "Practitioner.qualification",
      "sliceName" : "EspecialidadMedica"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadMedica.identifier",
      "path" : "Practitioner.qualification.identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadMedica.code",
      "path" : "Practitioner.qualification.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSEspecialidadMed"
      }
    },
    {
      "id" : "Practitioner.qualification:EspecialidadMedica.code.text",
      "path" : "Practitioner.qualification.code.text",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification:EspecialidadMedica.period",
      "path" : "Practitioner.qualification.period",
      "short" : "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadMedica.period.start",
      "path" : "Practitioner.qualification.period.start",
      "short" : "Fecha de emisión"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadMedica.period.end",
      "path" : "Practitioner.qualification.period.end",
      "short" : "Fecha de expiración"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadMedica.issuer",
      "path" : "Practitioner.qualification.issuer",
      "short" : "Entidad que otorga la especialidad",
      "definition" : "El nombre de la entidad se solicitará en texto libre"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadMedica.issuer.display",
      "path" : "Practitioner.qualification.issuer.display",
      "short" : "La entidad que otorga en texto libre",
      "definition" : "La entidad que otorga en texto libre"
    },
    {
      "id" : "Practitioner.qualification:Subespecialidad",
      "path" : "Practitioner.qualification",
      "sliceName" : "Subespecialidad"
    },
    {
      "id" : "Practitioner.qualification:Subespecialidad.identifier",
      "path" : "Practitioner.qualification.identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.qualification:Subespecialidad.code",
      "path" : "Practitioner.qualification.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSEspecialidadMed"
      }
    },
    {
      "id" : "Practitioner.qualification:Subespecialidad.code.text",
      "path" : "Practitioner.qualification.code.text",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification:Subespecialidad.period",
      "path" : "Practitioner.qualification.period",
      "short" : "Período en el cual se entregó la Subespecialidad considerando fecha de emisión y de caducidad",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:Subespecialidad.period.start",
      "path" : "Practitioner.qualification.period.start",
      "short" : "Fecha de emisión"
    },
    {
      "id" : "Practitioner.qualification:Subespecialidad.period.end",
      "path" : "Practitioner.qualification.period.end",
      "short" : "Fecha de expiración"
    },
    {
      "id" : "Practitioner.qualification:Subespecialidad.issuer",
      "path" : "Practitioner.qualification.issuer",
      "short" : "Entidad que otorga la especialidad",
      "definition" : "El nombre de la entidad se solicitará en texto libre"
    },
    {
      "id" : "Practitioner.qualification:Subespecialidad.issuer.display",
      "path" : "Practitioner.qualification.issuer.display",
      "short" : "La entidad que otorga en texto libre",
      "definition" : "La entidad que otorga en texto libre"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadOdontologica",
      "path" : "Practitioner.qualification",
      "sliceName" : "EspecialidadOdontologica",
      "short" : "Especialidad Odontológica que tiene el Prestador",
      "definition" : "Especialidades definidas en Norma Técnica 820",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadOdontologica.identifier",
      "path" : "Practitioner.qualification.identifier",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadOdontologica.identifier.value",
      "path" : "Practitioner.qualification.identifier.value",
      "short" : "Valor único para el identificador",
      "min" : 1,
      "patternString" : "EspOdo"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadOdontologica.code",
      "path" : "Practitioner.qualification.code",
      "short" : "Representación de la especialidad odontológica del prestador",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSEspecialidadOdont"
      }
    },
    {
      "id" : "Practitioner.qualification:EspecialidadOdontologica.code.text",
      "path" : "Practitioner.qualification.code.text",
      "short" : "Representación textual de la especialidad odontológica del prestador",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification:EspecialidadOdontologica.period",
      "path" : "Practitioner.qualification.period",
      "short" : "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadOdontologica.period.start",
      "path" : "Practitioner.qualification.period.start",
      "short" : "Fecha de emisión"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadOdontologica.period.end",
      "path" : "Practitioner.qualification.period.end",
      "short" : "Fecha de expiración"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadOdontologica.issuer",
      "path" : "Practitioner.qualification.issuer",
      "short" : "Entidad que otorga la especialidad",
      "definition" : "El nombre de la entidad se solicitará en texto libre",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadOdontologica.issuer.display",
      "path" : "Practitioner.qualification.issuer.display",
      "short" : "La entidad que otorga en texto libre",
      "definition" : "La entidad que otorga en texto libre"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadBioQuimica",
      "path" : "Practitioner.qualification",
      "sliceName" : "EspecialidadBioQuimica",
      "short" : "Especialidad Bioquímica que tiene el Prestador",
      "definition" : "Especialidades definidas en Norma Técnica 820",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadBioQuimica.identifier",
      "path" : "Practitioner.qualification.identifier",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadBioQuimica.identifier.value",
      "path" : "Practitioner.qualification.identifier.value",
      "short" : "Valor único para el identificador",
      "min" : 1,
      "patternString" : "EspBioQ"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadBioQuimica.code",
      "path" : "Practitioner.qualification.code",
      "short" : "Representación de la especialidad bioquímica del prestador",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSEspecialidadBioqca"
      }
    },
    {
      "id" : "Practitioner.qualification:EspecialidadBioQuimica.code.text",
      "path" : "Practitioner.qualification.code.text",
      "short" : "Representación textual de la especialidad odontológica del prestador",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification:EspecialidadFarmacologica",
      "path" : "Practitioner.qualification",
      "sliceName" : "EspecialidadFarmacologica",
      "short" : "Especialidad Farmacéutica o Química Farmacéutica que tiene el Prestador",
      "definition" : "Especialidades definidas en Norma Técnica 820",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadFarmacologica.identifier",
      "path" : "Practitioner.qualification.identifier",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadFarmacologica.identifier.value",
      "path" : "Practitioner.qualification.identifier.value",
      "short" : "Valor único para el identificador",
      "min" : 1,
      "patternString" : "EspFarma"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadFarmacologica.code",
      "path" : "Practitioner.qualification.code",
      "short" : "Representación de la especialidad famaceútica o químico farmaceútica del prestador",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/VSEspecialidadFarma"
      }
    },
    {
      "id" : "Practitioner.qualification:EspecialidadFarmacologica.code.text",
      "path" : "Practitioner.qualification.code.text",
      "short" : "Representación textual de la especialidad famaceútica o químico farmaceútica del prestador",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification:EspecialidadFarmacologica.period",
      "path" : "Practitioner.qualification.period",
      "short" : "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadFarmacologica.period.start",
      "path" : "Practitioner.qualification.period.start",
      "short" : "Fecha de emisión"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadFarmacologica.period.end",
      "path" : "Practitioner.qualification.period.end",
      "short" : "Fecha de expiración"
    },
    {
      "id" : "Practitioner.qualification:EspecialidadFarmacologica.issuer",
      "path" : "Practitioner.qualification.issuer",
      "short" : "Entidad que otorga la especialidad",
      "definition" : "El nombre de la entidad se solicitará en texto libre",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:EspecialidadFarmacologica.issuer.display",
      "path" : "Practitioner.qualification.issuer.display",
      "short" : "La entidad que otorga en texto libre",
      "definition" : "La entidad que otorga en texto libre"
    }]
  }
}

```
