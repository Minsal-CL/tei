Instance: MotivoDerivacion
InstanceOf: Questionnaire
Usage: #definition
Title: "Motivo Derivacion"
Description: "Permite describir el motivo de derivacion de un paciente"

* title = "Motivo de Derivación"
* status = #draft
* experimental = true
* subjectType[0] = #Patient
* date = "2024-07-04"

* item[0]
  * linkId = "MotivoDerivacion"
  * text = "Motivo de Derivación"
//  * text 1..1 MS
  * type = #text
  * required = true
  * repeats = false
  * maxLength = 3000

// Grupo principal
* item[1].linkId = "GarantiaExplicitaenSalud-GES"
* item[1].text = "Garantía Explícita en Salud (GES)"
* item[1].type = #group
* item[1].required = false
* item[1].repeats = false

// Pregunta 1 dentro del grupo
* item[1].item[0].linkId = "ProblemadeSaludGES"
* item[1].item[0].text = "Problema de Salud GES"
* item[1].item[0].type = #choice
* item[1].item[0].required = true
* item[1].item[0].repeats = false
* item[1].item[0].answerValueSet = "https://interoperabilidad.minsal.cl/fhir/ig/tei/ValueSet/vs-problema-ges-tei"


// Pregunta 2 dentro del grupo
* item[1].item[1].linkId = "SubProblemadeSaludGES"
* item[1].item[1].text = "SubProblema de Salud GES"
* item[1].item[1].type = #text
* item[1].item[1].required = false
* item[1].item[1].repeats = false
* item[1].item[1].maxLength = 3000

Profile: QuestionnaireResponseIniciarLE
Parent: QuestionnaireResponse
Id: QuestionnaireResponseIniciarLE
Title: "QuestionnaireResponse Iniciar Motivo de la Derivación LE"
Description: "QuestionnaireResponse Iniciar para Motivo de Derivación LE"

* id 1..1 MS
  * ^short = "Id temporal necesario para identificar el recurso"
  * ^definition = "El Id que envíe desde la aplicación es temporal, el definitivo es creado por el servidor"

* status 1..1 MS

* subject 1..1 MS
* subject only Reference(PatientLE)

* encounter 1..1 MS
* encounter only Reference(EncounterIniciarLE)

* author 1..1 MS
* author only Reference(PractitionerProfesionalLE)

* questionnaire 1..1 MS
* questionnaire = Canonical(MotivoDerivacion)

// Slicing primer nivel: grupo
* item 1..2 MS
* item ^slicing.discriminator[0].type = #value
* item ^slicing.discriminator[0].path = "linkId"
* item ^slicing.rules = #closed

* item contains MotivoDerivacion 1..1 MS and GarantiaExplicitaenSalud-GES 0..1 MS 

* item[MotivoDerivacion].linkId 1..1 MS
* item[MotivoDerivacion].linkId = "MotivoDerivacion" (exactly)
* item[MotivoDerivacion].text 0..1 MS
//* item[MotivoDerivacion].text = "Motivo de Derivación"
* item[MotivoDerivacion].answer 1..* MS
* item[MotivoDerivacion].answer.value[x] only string
* item[MotivoDerivacion].answer.valueString 1..1 MS

// El grupo NO debe tener answer
* item[GarantiaExplicitaenSalud-GES].answer 0..0
* item[GarantiaExplicitaenSalud-GES].text 0..1 MS
* item[GarantiaExplicitaenSalud-GES].linkId = "GarantiaExplicitaenSalud-GES" (exactly)

// Slicing dentro del grupo
* item[GarantiaExplicitaenSalud-GES].item 0..2 MS
* item[GarantiaExplicitaenSalud-GES].item ^slicing.discriminator[0].type = #value
* item[GarantiaExplicitaenSalud-GES].item ^slicing.discriminator[0].path = "linkId"
* item[GarantiaExplicitaenSalud-GES].item ^slicing.rules = #closed

* item[GarantiaExplicitaenSalud-GES].item contains
    ProblemadeSaludGES 1..1 MS and
    SubProblemadeSaludGES 0..1 MS

// ProblemadeSaludGES
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].linkId 1..1 MS
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].linkId = "ProblemadeSaludGES" (exactly)
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES] 1..1 MS
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].text 0..1 MS
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].answer 1..1 MS
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].answer.value[x] only Coding
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].answer.valueCoding 1..1 MS
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].answer.valueCoding from vs-problema-ges-tei (required)

// SubProblemadeSaludGES
* item[GarantiaExplicitaenSalud-GES].item[SubProblemadeSaludGES].linkId 1..1 MS
* item[GarantiaExplicitaenSalud-GES].item[SubProblemadeSaludGES].linkId = "SubProblemadeSaludGES" (exactly)
* item[GarantiaExplicitaenSalud-GES].item[SubProblemadeSaludGES].text 0..1 MS
* item[GarantiaExplicitaenSalud-GES].item[SubProblemadeSaludGES].answer 1..1 MS
* item[GarantiaExplicitaenSalud-GES].item[SubProblemadeSaludGES].answer.value[x] only string
* item[GarantiaExplicitaenSalud-GES].item[SubProblemadeSaludGES].answer.valueString 1..1 MS