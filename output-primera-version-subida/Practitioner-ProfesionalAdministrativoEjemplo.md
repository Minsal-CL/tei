# Ejemplo de Profesional Administrativo - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de Profesional Administrativo**

## Example Practitioner: Ejemplo de Profesional Administrativo

Profile: [Prestador Administrativo LE](StructureDefinition-PractitionerAdministrativoLE.md)

**identifier**: RUN/90000000-6 (use: official, )

**active**: true

**name**: Caludio Parra (Official)

**address**: null (work)

**gender**: Male

**birthDate**: 1980-01-01



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ProfesionalAdministrativoEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerAdministrativoLE"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      }],
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "01",
        "display" : "RUN"
      }]
    },
    "value" : "90000000-6",
    "assigner" : {
      "display" : "Republica de Chile"
    }
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Parra",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Sandoval"
      }]
    },
    "given" : ["Caludio"]
  }],
  "address" : [{
    "use" : "work",
    "_state" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL",
            "code" : "13",
            "display" : "Metropolitana de Santiago"
          }]
        }
      }]
    }
  }],
  "gender" : "male",
  "birthDate" : "1980-01-01"
}

```
