#!/bin/bash
pandoc ./Subsistema\ Usuarios/requisitos_funcionales.md ./Subsistema\ Mantenimiento/requisitos_funcionales.md ./Subsistema\ Central/requisitos_funcionales.md -o requisitos_funcionales.pdf
pandoc ./Subsistema\ Usuarios/requisitos_datos.md ./Subsistema\ Mantenimiento/requisitos_datos.md ./Subsistema\ Central/requisitos_datos.md -o requisitos_datos.pdf
pandoc ./Subsistema\ Usuarios/restricciones_semanticas.md ./Subsistema\ Mantenimiento/restricciones_semanticas.md ./Subsistema\ Central/restricciones_semanticas.md -o restricciones_semanticas.pdf
