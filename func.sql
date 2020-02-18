create function get_version()
returns text deterministic
begin
	return version();
end