# Ejemplo PractitionerRole Iniciador - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo PractitionerRole Iniciador**

## Example PractitionerRole: Ejemplo PractitionerRole Iniciador

Profile: [PractitionerRole LE](StructureDefinition-PractitionerRoleLE.md)

**active**: true

**practitioner**: [Practitioner Víctor Gonzalez ](Practitioner-PractitionerProfesionalLEEjemplo.md)

**organization**: [Organization Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)](Organization-OrganizationLEEjemplo.md)

**code**: Iniciador



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "PractitionerRoleIniciador",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/PractitionerRoleLE"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/PractitionerProfesionalLEEjemplo"
  },
  "organization" : {
    "reference" : "Organization/OrganizationLEEjemplo"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSPractitionerTipoRolLE",
      "code" : "iniciador",
      "display" : "Iniciador"
    }]
  }]
}

```
