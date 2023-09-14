{{- define "simple-web.labels" }}
{{- template "simple-web.selectorLabels" . }}
app.kubernetes.io/managed-by: helm
{{- end }}

{{- define "simple-web.selectorLabels" }}
app.kubernetes.io/name: {{ .Chart.Name}}
app.kubernetes.io/version: "{{ .Values.image.tag | default .Chart.AppVersion }}"
{{- end }}
