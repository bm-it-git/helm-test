{{/*
Create a default fully qualified app name.

{{- define "nginx-app.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default name for the application.
*/}}
{{- define "nginx-app.name" -}}
{{- .Chart.Name -}}
{{- end -}}
*/}}