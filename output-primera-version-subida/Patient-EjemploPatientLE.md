# Ejemplo PatientLE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo PatientLE**

## Example Patient: Ejemplo PatientLE

Profile: [Patient LE](StructureDefinition-PatientLE.md)

María Josefina Gonzalez (official) Male, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Contact Detail | * ph: (562) 5555 6473(Work)
* Calle Arrabal Conchita Tejeda Nº 24, Esc. 432(home)
 | | |
| [Código de Países](https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-CodigoPaises.html) | Chile | | |
| [Pueblos Originarios Perteneciente](StructureDefinition-PueblosOriginariosPerteneciente.md) | true | | |
| [Pueblos Originarios](StructureDefinition-PueblosOriginarios.md) | Diaguita | | |
| [Identidad De Género](https://hl7chile.cl/fhir/ig/clcore/1.9.2/StructureDefinition-IdentidadDeGenero.html) | Femenina | | |
| [Pueblos Afrodescendiente](StructureDefinition-PueblosAfrodescendiente.md) | false | | |
| [País de origen del paciente](StructureDefinition-PaisOrigenMPI.md) | Chile | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "EjemploPatientLE",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PatientLE"]
  },
  "extension" : [{
    "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentidaddeGenero",
        "code" : "2",
        "display" : "Femenina"
      }]
    }
  },
  {
    "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
        "code" : "152",
        "display" : "Chile"
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PaisOrigenMPI",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
        "code" : "152",
        "display" : "Chile"
      }]
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosOriginariosPerteneciente",
    "valueBoolean" : true
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosAfrodescendiente",
    "valueBoolean" : false
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PueblosOriginarios",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/PueblosOriginariosCS",
        "code" : "07",
        "display" : "Diaguita"
      }]
    }
  }],
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
      }],
      "text" : "Rol Único Nacional"
    },
    "value" : "90000000-6",
    "assigner" : {
      "display" : "Republica de Chile"
    }
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Gonzalez",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Morales"
      }]
    },
    "given" : ["María", "Josefina"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "(562) 5555 6473",
    "use" : "work",
    "rank" : 1
  }],
  "gender" : "male",
  "birthDate" : "1974-12-25",
  "deceasedBoolean" : false,
  "address" : [{
    "use" : "home",
    "text" : "Calle Arrabal Conchita Tejeda Nº 24, Esc. 432",
    "line" : ["Calle Arrabal Conchita Tejeda"],
    "city" : "Huara",
    "_city" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
            "code" : "01404",
            "display" : "Huara"
          }]
        }
      }]
    },
    "district" : "Provincia del Tamarugal",
    "_district" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL",
            "code" : "014",
            "display" : "Tamarugal"
          }]
        }
      }]
    },
    "state" : "Región de Tarapacá",
    "_state" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL",
            "code" : "01",
            "display" : "Tarapacá"
          }]
        }
      }]
    }
  }]
}

```
