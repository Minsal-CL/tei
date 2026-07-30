# Ejemplo Simple Organization - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplo Simple Organization**

## Example Organization: Ejemplo Simple Organization

Profile: [Organization LE](StructureDefinition-OrganizationLE.md)

**identifier**: `https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino`/121343

**name**: Centro de Referencia de Salud Miraflores



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationLEAtendedor",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/OrganizationLE"]
  },
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino",
    "value" : "121343"
  }],
  "name" : "Centro de Referencia de Salud Miraflores"
}

```
