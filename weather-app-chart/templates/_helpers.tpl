{{- define "my-helm-chart.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}  # Chart and version labels
app.kubernetes.io/name: {{ .Chart.Name }}  # Application name label
app.kubernetes.io/instance: {{ .Release.Name }}  # Release name label
app.kubernetes.io/version: {{ .Chart.AppVersion }}  # Application version label
app.kubernetes.io/managed-by: {{ .Release.Service }}  # Managed by label (Helm)
{{- end }}

{{- define "my-helm-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}  # Application name label for selector
app.kubernetes.io/instance: {{ .Release.Name }}  # Release name label for selector
{{- end }}

{{- define "my-helm-chart.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}  # Full name of the resource
{{- end }}
