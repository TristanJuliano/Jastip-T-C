    -- Jalankan seluruh SQL ini di Supabase Dashboard > SQL Editor

    create table if not exists public.site_status (
      id integer primary key check (id = 1),
      manual_closed boolean not null default false,
      manual_reason text,
      updated_at timestamptz not null default now()
    );

    insert into public.site_status (id, manual_closed, manual_reason)
    values (1, false, null)
    on conflict (id) do nothing;

    create table if not exists public.closure_schedules (
      id uuid primary key default gen_random_uuid(),
      date date not null,
      start_time time not null,
      end_time time not null,
      reason text not null,
      created_at timestamptz not null default now(),
      constraint valid_schedule_time check (start_time < end_time)
    );

    alter table public.site_status enable row level security;
    alter table public.closure_schedules enable row level security;

    -- Customer boleh membaca status dan jadwal, tetapi tidak boleh mengubah.
    drop policy if exists "public can read site status" on public.site_status;
    create policy "public can read site status"
    on public.site_status for select
    using (true);

    drop policy if exists "authenticated can update site status" on public.site_status;
    create policy "authenticated can update site status"
    on public.site_status for update
    to authenticated
    using (true)
    with check (true);

    drop policy if exists "public can read closure schedules" on public.closure_schedules;
    create policy "public can read closure schedules"
    on public.closure_schedules for select
    using (true);

    drop policy if exists "authenticated can insert closure schedules" on public.closure_schedules;
    create policy "authenticated can insert closure schedules"
    on public.closure_schedules for insert
    to authenticated
    with check (true);

    drop policy if exists "authenticated can delete closure schedules" on public.closure_schedules;
    create policy "authenticated can delete closure schedules"
    on public.closure_schedules for delete
    to authenticated
    using (true);

    -- Opsional: agar admin bisa mengedit jadwal yang sudah ada.
    drop policy if exists "authenticated can update closure schedules" on public.closure_schedules;
    create policy "authenticated can update closure schedules"
    on public.closure_schedules for update
    to authenticated
    using (true)
    with check (true);
