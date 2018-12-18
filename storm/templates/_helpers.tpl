{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "storm.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "storm.fullname" -}}
{{- $name := default .Chart.Name .Values.NameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "storm.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "storm.nimbus.fullname" -}}
{{- printf "%s-%s" .Chart.Name .Values.nimbus.service.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "storm.supervisor.fullname" -}}
{{- printf "%s-%s" .Chart.Name .Values.supervisor.service.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{- define "storm.ui.fullname" -}}
{{- printf "%s-%s" .Chart.Name .Values.ui.service.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{/*
Create a fully qualified zookeeper name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "storm.zookeeper.fullname" -}}
{{- $name := default .Values.zookeeper.service.name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "storm.logging.name" -}}
{{- printf "%s-logging" .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
