# suppresses reporting converges if resource is configured to do so
module ResourceQuieter
  def quiet_converge_if_configured
    if quiet
      Chef::Log.info 'Since this resource is configured to be quiet, converges will not be reported'
      new_resource.updated_by_last_action(false)
    end
  end
end
