# Ejemplo de Otro Profesional - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo de Otro Profesional**

## Example Practitioner: Ejemplo de Otro Profesional

Profile: [Prestador Profesional LE](StructureDefinition-PractitionerProfesionalLE.md)

**identifier**: Rol Único Nacional/19949350-7 (use: official, ), Registro Nacional de Prestadores Individuales/1234543 (use: secondary, )

**active**: true

**name**: Gonzalo Gonzalez 

**gender**: Male

**birthDate**: 1980-01-01

> **qualification****identifier**: cert**code**: MÉDICO CIRUJANO**period**: 2007-11-01 --> (ongoing)**issuer**: Universidad de Chile

> **qualification****identifier**: esp**code**: MEDICINA INTERNA**period**: 2010-11-01 --> (ongoing)**issuer**: Pontificia Universidad Católica de Chile

> **qualification****identifier**: subesp**code**: ENDOCRINOLOGÍA ADULTO**period**: 2014-11-01 --> (ongoing)**issuer**: Universidad de Valparaíso



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "PractitionerProfesionalLEAtendedor",
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
    "value" : "19949350-7",
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
    "value" : "1234543",
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
    "given" : ["Gonzalo"],
    "prefix" : ["Dr"]
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
  },
  {
    "identifier" : [{
      "value" : "esp"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed",
        "code" : "30",
        "display" : "MEDICINA INTERNA"
      }],
      "text" : "MEDICINA INTERNA"
    },
    "period" : {
      "start" : "2010-11-01"
    },
    "issuer" : {
      "display" : "Pontificia Universidad Católica de Chile"
    }
  },
  {
    "identifier" : [{
      "value" : "subesp"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed",
        "code" : "14",
        "display" : "ENDOCRINOLOGÍA ADULTO"
      }],
      "text" : "ENDOCRINOLOGÍA ADULTO"
    },
    "period" : {
      "start" : "2014-11-01"
    },
    "issuer" : {
      "display" : "Universidad de Valparaíso"
    }
  }]
}

```
