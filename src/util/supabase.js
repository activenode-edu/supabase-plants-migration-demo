import { createBrowserClient, createServerClient } from "@supabase/ssr";

export function createSupabaseFrontendClient() {
  return createBrowserClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.NEXT_PUBLIC_SUPABASE_KEY
  );
}
