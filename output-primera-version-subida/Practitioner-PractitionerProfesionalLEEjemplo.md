# Ejemplo de Practitioner ProfesionalLE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de Practitioner ProfesionalLE**

## Example Practitioner: Ejemplo de Practitioner ProfesionalLE

Profile: [Prestador Profesional LE](StructureDefinition-PractitionerProfesionalLE.md)

**identifier**: Rol Único Nacional/90000000-6 (use: official, ), Registro Nacional de Prestadores Individuales/9999999 (use: secondary, )

**active**: true

**name**: Víctor Gonzalez 

**address**: Dirección falsa 123,depto 1202 null (work)

**gender**: Male

**birthDate**: 1980-01-01

### Qualifications

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Identifier** | **Code** | **Period** | **Issuer** |
| * | cert | MÉDICO CIRUJANO | 2007-11-01 --> (ongoing) | Universidad de Chile |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "PractitionerProfesionalLEEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerProfesionalLE"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "01",
        "display" : "RUN"
      }],
      "text" : "Rol Único Nacional"
    },
    "value" : "90000000-6",
    "assigner" : {
      "display" : "Republica de Chile"
    }
  },
  {
    "use" : "secondary",
    "type" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "13",
        "display" : "RNPI"
      }],
      "text" : "Registro Nacional de Prestadores Individuales"
    },
    "value" : "9999999",
    "assigner" : {
      "display" : "Intendencia de prestadores individuales - Superintendencia de Salud"
    }
  }],
  "active" : true,
  "name" : [{
    "family" : "Gonzalez",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Torres"
      }]
    },
    "given" : ["Víctor"],
    "prefix" : ["Dr"]
  }],
  "address" : [{
    "use" : "work",
    "line" : ["Dirección falsa 123,depto 1202"],
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
  "birthDate" : "1980-01-01",
  "qualification" : [{
    "identifier" : [{
      "value" : "cert"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional",
        "code" : "1",
        "display" : "MÉDICO CIRUJANO"
      }],
      "text" : "MÉDICO CIRUJANO"
    },
    "period" : {
      "start" : "2007-11-01"
    },
    "issuer" : {
      "display" : "Universidad de Chile"
    }
  }]
}

```
