-- Change the default agent model for NEW projects from Claude Opus to GLM 5.3
-- (Z.ai, served through the openai_compat provider slot).
-- Existing projects keep their explicitly-chosen model and are NOT touched here,
-- so a deliberate per-project choice is never overwritten by this migration.

ALTER TABLE "projects" ALTER COLUMN "agent_openai_model" SET DEFAULT 'openai_compat/glm-5.3';
