# Make observer available in development
if Mix.env() == :dev do
  Mix.ensure_application!(:observer)
end
