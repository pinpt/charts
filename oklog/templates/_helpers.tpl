{{- define "pinpt.release_labels" }}
heritage: {{ .Release.Service | quote }}
version: {{ .Chart.Version | quote }}
release: {{ .Release.Name | quote }}
chart: "{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}"
vendor: pinpoint
{{- end }}
{{- define "pinpt.full_name" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 -}}
{{- end -}}
