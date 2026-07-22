Instance: MotivoDerivacionEjemplo1
InstanceOf: QuestionnaireResponseIniciarLE
Usage: #example
Title: "QuestionnaireResponse Iniciar LE 1"
Description: "Respuesta Motivo de derivación"

* status = #completed
* questionnaire = Canonical(MotivoDerivacion)

* subject = Reference(Patient/EjemploPatientLE)
* encounter = Reference(Encounter/AtencionEjemplo)
* author = Reference(Practitioner/PractitionerProfesionalLEEjemplo)

* item[MotivoDerivacion].linkId = "MotivoDerivacion"
* item[MotivoDerivacion].text = "Motivo de Derivación"
* item[MotivoDerivacion].answer[0].valueString = "Paciente requiere derivación por evaluación de especialidad."

//*************************************************************************************************************

Instance: MotivoDerivacionEjemplo2
InstanceOf: QuestionnaireResponseIniciarLE
Usage: #example
Title: "QuestionnaireResponse Iniciar LE 2"
Description: "Respuesta Motivo de derivación y Problema de salud GES"

* status = #completed
* questionnaire = Canonical(MotivoDerivacion)

* subject = Reference(Patient/EjemploPatientLE)
* encounter = Reference(Encounter/AtencionEjemplo)
* author = Reference(Practitioner/PractitionerProfesionalLEEjemplo)

* item[MotivoDerivacion].linkId = "MotivoDerivacion"
* item[MotivoDerivacion].text = "Motivo de Derivación"
* item[MotivoDerivacion].answer[0].valueString = "Paciente requiere derivación por evaluación de especialidad."

* item[GarantiaExplicitaenSalud-GES].linkId = "GarantiaExplicitaenSalud-GES"

* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].linkId = "ProblemadeSaludGES"
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].answer[0].valueCoding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/cs-problema-ges-tei"
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].answer[0].valueCoding.code = #1751000325109
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].answer[0].valueCoding.display = "programa GES (Garantías Explícitas en Salud) para enfermedad renal crónica en etapas 4 y 5"
//**************************************************************************************


Instance: MotivoDerivacionEjemplo3
InstanceOf: QuestionnaireResponseIniciarLE
Usage: #example
Title: "QuestionnaireResponse Iniciar LE"
Description: "Respuesta Full Motivo de derivación, Problema de salud GES y Subproblema de salud GES"

* status = #completed
* questionnaire = Canonical(MotivoDerivacion)

* subject = Reference(Patient/EjemploPatientLE)
* encounter = Reference(Encounter/AtencionEjemplo)
* author = Reference(Practitioner/PractitionerProfesionalLEEjemplo)

* item[MotivoDerivacion].linkId = "MotivoDerivacion"
* item[MotivoDerivacion].text = "Motivo de Derivación"
* item[MotivoDerivacion].answer[0].valueString = "Paciente requiere derivación por evaluación de especialidad."

* item[GarantiaExplicitaenSalud-GES].linkId = "GarantiaExplicitaenSalud-GES"
* item[GarantiaExplicitaenSalud-GES].text = "Garantía Explícita en Salud (GES)"

* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].linkId = "ProblemadeSaludGES"
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].answer[0].valueCoding.system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/cs-problema-ges-tei"
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].answer[0].valueCoding.code = #1991000325103
* item[GarantiaExplicitaenSalud-GES].item[ProblemadeSaludGES].answer[0].valueCoding.display = "programa GES (Garantías Explícitas en Salud) para diabetes mellitus tipo I"

* item[GarantiaExplicitaenSalud-GES].item[SubProblemadeSaludGES].linkId = "SubProblemadeSaludGES"
* item[GarantiaExplicitaenSalud-GES].item[SubProblemadeSaludGES].answer[0].valueString = "Ejemplo SubProblema de Salud GES"