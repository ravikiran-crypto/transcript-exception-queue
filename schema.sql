create table public.transcripts (
  id uuid not null default gen_random_uuid (),
  file_name text not null,
  file_url text null,
  chatgpt_raw_json jsonb null,
  gemini_validation_report jsonb null,
  confidence_score double precision null default 0.0,
  status public.transcript_status null default 'pending_review'::transcript_status,
  final_validated_data jsonb null,
  correction_history jsonb null default '[]'::jsonb,
  created_at timestamp with time zone null default now(),
  updated_at timestamp with time zone null default now(),
  constraint transcripts_pkey primary key (id)
) TABLESPACE pg_default;