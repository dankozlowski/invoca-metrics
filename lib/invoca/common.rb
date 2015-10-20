
# Stuff that prolly should go into it's own gem
# since it is copied from another project

# see https://rails.lighthouseapp.com/projects/8994/tickets/3620-objectnonblank-analogous-to-rubys-numericnonzero
class Object
  def nonblank?
    warn 'Object#nonblank? is deprecated, please use Object#presence instead'
    self if !blank?
  end
end
