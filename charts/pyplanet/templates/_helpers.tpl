{{- define "pyplanet.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "pyplanet.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "pyplanet.labels" -}}
helm.sh/chart: {{ include "pyplanet.chart" . }}
{{ include "pyplanet.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "pyplanet.selectorLabels" -}}
app.kubernetes.io/name: {{ include "pyplanet.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "pyplanet.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "pyplanet.sharedMapsClaimName" -}}
{{- printf "%s-maps" (include "pyplanet.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
