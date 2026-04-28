# Mensajeria - Tiempos de Espera Interoperable v0.2.2

* [**Table of Contents**](toc.md)
* **Mensajeria**

## Mensajeria

El mecanismo de intercambio definido para las transacciones es [FHIR messaging](https://www.hl7.org/fhir/R4/messaging.html)(Mensajería de FHIR), esto consiste en el intercambio de mensajes entre un emisor y un receptor, emulando en cierta medida la mensajería HL7 v2 ([Ver diferencias entre Mensajería y REST](https://www.hl7.org/fhir/R4/messaging.html#endpoints)).

El intercambio de mensajes entre los actores se debe realizar siguiendo las definiciónes de la especificación oficial de FHIR por lo que se supone que soportan la [operación FHIR **$process-message**](https://www.hl7.org/fhir/R4/messageheader-operation-process-message.html)

### Estructura de los Mensajes

* Es importante considerar que la URL para el envío de un mensaje será: **[base]/$process-message**
* Agrupador de Recursos: Un recurso del tipo **Bundle** del tipo **message**(type=message)
* Cabecera del mensaje: Un recurso del tipo **MessageHeader** con la identificación del [tipo evento](ValueSet-VSTipoEventoLE.md)(ejemplo: eventCoding.code=terminar), una referencia a un autor(author), detalles del sistema emisor(source) y una referencia a un recurso el cual es el foco del mensaje(focus)
* Otros recursos: Necesariamente los recursos referenciados deben ser incluidos dentro del mismo Bundle como entradas adicionales, por ejemplo en el caso del **Mensaje de Envío** los recursos referenciados en el MessageHeader(autor, focus, etc) y en el caso del **Mensaje de Respuesta** un recurso [**OperationOutcome**](https://www.hl7.org/fhir/R4/operationoutcome.html) con información de la operación, advertencias o lista de errores(OperationOutcome.issue)

### Mensaje de Envío

* El recurso del tipo Bundle debe ser del tipo mensaje(type=message)
* Siempre el primer entry en Bundle.type=message debe ser un MessageHeader.
* El MessageHeader.focus debe incluir el siempre el ServiceRequest y opcionalmente Appointment(en el caso del evento agendar) o Encounter(en el caso del evento atender)
* Ejemplo para evento Agendar:

### Mensaje de Respuesta

#### Respuesta exitosa

* El recurso Bundle debe ser del tipo mensaje(type=message)
* El MessageHeader.focus debe incluir el siempre el ServiceRequest y opcionalmente Appointment(en el caso del evento agendar) o Encounter(en el caso del evento atender)
* Como mínimo solo los recursos MessageHeader y referenciados en MessageHeader.focus vendrán completos en la respuesta, para los otros recursos solo vendrá el response con el resultado de la operación.
* Adicionalmente es posible incluir el recurso OperationOutcome con información de la operación referenciado en MessageHeader.response
* Ejemplo de Respuesta para evento Agendar:

#### Respuesta con error

* Mensaje de Error, en caso de existir:

### Response Code

* Siempre es 200 en caso de que el mensaje sea procesado completamente
* 4XX si el mensaje no pudo ser procesado correctamente y se debe indicar error o errores usando el recurso OperationOutcome
* 5xx errores de servidor no relacionados al mensaje

