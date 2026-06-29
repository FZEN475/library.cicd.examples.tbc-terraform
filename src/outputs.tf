output "summary_file_path" {
  value       = local_file.review_summary.filename
  description = "The path to the generated review summary file"
}