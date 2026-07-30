# Ejemplo OrganizationLE - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo OrganizationLE**

## Example Organization: Ejemplo OrganizationLE

Profile: [Organization LE](StructureDefinition-OrganizationLE.md)

**identifier**: `https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino`/120101

**name**: Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)

**alias**: Hospital de Los Ángeles

**telecom**: ph: (+56) 432336000

**address**: Ricardo Vicuña 147 Los Ángeles 4451055 Chile 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationLEEjemplo",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/OrganizationLE"]
  },
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino",
    "value" : "120101"
  }],
  "name" : "Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)",
  "alias" : ["Hospital de Los Ángeles"],
  "telecom" : [{
    "system" : "phone",
    "value" : "(+56) 432336000"
  }],
  "address" : [{
    "line" : ["Ricardo Vicuña 147"],
    "city" : "Los Ángeles",
    "_city" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL",
            "code" : "08301",
            "display" : "Los Ángeles"
          }]
        }
      }]
    },
    "postalCode" : "4451055",
    "country" : "Chile",
    "_country" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais",
            "code" : "152",
            "display" : "Chile"
          }]
        }
      }]
    }
  }]
}

```
