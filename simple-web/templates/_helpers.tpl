{{- define "simple-web.labels" -}}
{{ include "simple-web.selectorLabels" . }}
app.kubernetes.io/version: "{{ .Values.image.tag | default .Chart.AppVersion }}"
app.kubernetes.io/managed-by: helm
{{- end -}}

{{- define "simple-web.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
release: {{ .Release.Name }}
{{- end -}}