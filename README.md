# Linux System Audit Tool

A simple Bash-based system auditing tool for Linux environments.

## Features

- Displays system uptime
- Shows memory usage
- Shows disk usage
- Displays IP address
- Shows kernel version
- Lists top 5 memory-consuming processes
- Generates timestamped log files
Por qué lo hice?

Como parte de mi camino de aprendizaje hacia Cloud Computing y DevOps, quería practicar administración de sistemas Linux desde la línea de comandos y entender cómo se automatizan tareas básicas de monitoreo — algo habitual en roles de soporte técnico y operaciones.
Cómo usarlo
chmod +x system_audit_pro.sh
./system_audit_pro.sh
El reporte se guarda automáticamente en la carpeta logs/, con un nombre único basado en la fecha y hora de ejecución (ej: audit_20260722_195856.log), y se muestra un mensaje de confirmación en pantalla.
Qué aprendí
Uso de comandos nativos de Linux para diagnóstico de sistema (uptime, free, df, uname, ps)
Redirección de salida en Bash ({ } > archivo) para capturar múltiples comandos en un solo log
Generación de nombres de archivo dinámicos usando date
Uso de pipes (|) para filtrar y combinar comandos (ps aux --sort=-%mem | head -n 6)
## Usage

```bash
chmod +x system_audit_pro.sh
./system_audit_pro.sh
