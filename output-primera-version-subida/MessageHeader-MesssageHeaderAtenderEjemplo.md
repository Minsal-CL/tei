# Ejemplod de Cabecera Mensaje - Tiempos de Espera Interoperable v0.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts**](artifacts.md)
* **Ejemplod de Cabecera Mensaje**

## Example MessageHeader: Ejemplod de Cabecera Mensaje

Last updated: 2024-02-22 08:30:00-0300

Profile: [MessageHeader LE](StructureDefinition-MessageHeaderLE.md)

**event**: [Tipo de Evento: atender](CodeSystem-CSTipoEventoLE.md#CSTipoEventoLE-atender) (Atender)

**author**: [PractitionerRole Atendedor](PractitionerRole-PractitionerRoleAtendedor.md)

### Sources

| | | |
| :--- | :--- | :--- |
| - | **Software** | **Endpoint** |
| * | SISMaule | llp:10.11.12.13:5432 |

**focus**: 

* [ServiceRequest Patient referral to specialist](ServiceRequest-EjemploSolicitudInterconsultaFinalizada.md)
* [Encounter: extension = true; identifier = 123; status = finished; class = Presencial (Modalidad Atencion Codigo#1); type = Nueva; period = 2024-02-22 08:00:00-0300 --> 2024-02-22 08:30:00-0300](Encounter-AtencionEjemplo.md)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "MesssageHeaderAtenderEjemplo",
  "meta" : {
    "lastUpdated" : "2024-02-22T08:30:00-03:00",
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/tei/StructureDefinition/MessageHeaderLE"]
  },
  "eventCoding" : {
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTipoEventoLE",
    "code" : "atender",
    "display" : "Atender"
  },
  "author" : {
    "reference" : "PractitionerRole/PractitionerRoleAtendedor"
  },
  "source" : {
    "software" : "SISMaule",
    "endpoint" : "llp:10.11.12.13:5432"
  },
  "focus" : [{
    "reference" : "ServiceRequest/EjemploSolicitudInterconsultaFinalizada"
  },
  {
    "reference" : "Encounter/AtencionEjemplo"
  }]
}

```
