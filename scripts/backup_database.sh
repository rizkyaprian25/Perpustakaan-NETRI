#!/usr/bin/env bash
# ==============================================================================
# Skrip Cadangan Basis Data Otomatis Harian (Database Backup)
# Perpustakaan SMPN 3 CIBUNGBULANG - SLiMS 9 Bulian
# Standar Rekayasa: SoftwareEngineer.md (Resiliensi & Pemulihan Bencana)
# ==============================================================================

set -euo pipefail

# Konfigurasi Parameter
DB_NAME="db_perpus_smpn3"
DB_USER="perpus_admin"
DB_PASS="PerpusSMPN3Cibungbulang2026!"
BACKUP_DIR="/var/backups/perpus_smpn3"
RETENTION_DAYS=14

# Buat direktori cadangan jika belum ada
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/${DB_NAME}_backup_${TIMESTAMP}.sql.gz"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Memulai pencadangan basis data $DB_NAME..."

# Eksekusi mysqldump dengan kompresi gzip
mysqldump -u "$DB_USER" -p"$DB_PASS" --single-transaction --quick --routines "$DB_NAME" | gzip > "$BACKUP_FILE"

# Atur izin berkas agar hanya root yang dapat membaca
chmod 600 "$BACKUP_FILE"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Cadangan berhasil dibuat: $BACKUP_FILE ($(du -h "$BACKUP_FILE" | cut -f1))"

# Hapus cadangan lama yang berusia lebih dari $RETENTION_DAYS hari
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Membersihkan arsip lama (> $RETENTION_DAYS hari)..."
find "$BACKUP_DIR" -type f -name "${DB_NAME}_backup_*.sql.gz" -mtime +$RETENTION_DAYS -delete

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Proses pencadangan selesai dengan sukses."
