{{- define "mychart.labels" }}
    labels:
        generator: helm
        data: {{ now | htmlDate }}
        chart: {{ .Chart.Name }}
        version: {{ .Chart.Version }}
{{- end }}

# configmap.yaml 에서 {{- template "mychart.labels" . }} 뒤에 .만 찍어주면
# chart , version 이 들어가게 된다.
# metadata:
#     name: {{ .Release.Name }}-configmap
#     {{- template "mychart.labels" . }}

{{- define "mychart.app" }}
app_name: {{ .Chart.Name}}
app_version: "{{ .Chart.Version }}"
{{- end }}
