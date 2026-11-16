-- Ông Già Noel 2026: tra cứu tối đa 20 đơn gần nhất chỉ bằng số điện thoại.
-- Chỉ trả về thông tin cơ bản, không trả địa chỉ/ghi chú/tên bé.
create or replace function public.lookup_bookings_by_phone(p_phone text)
returns table(
  booking_code text,
  status text,
  visit_at timestamptz,
  service_name text,
  total_amount numeric
)
language sql
stable
security definer
set search_path = public
as $$
  select o.booking_code, o.status, o.visit_at, o.service_name, o.total_amount
  from public.orders o
  where length(regexp_replace(coalesce(p_phone,''), '[^0-9]', '', 'g')) between 9 and 12
    and regexp_replace(o.phone, '[^0-9]', '', 'g') = regexp_replace(coalesce(p_phone,''), '[^0-9]', '', 'g')
    and o.archived_at is null
  order by o.created_at desc
  limit 20;
$$;
revoke all on function public.lookup_bookings_by_phone(text) from public;
grant execute on function public.lookup_bookings_by_phone(text) to anon, authenticated;
