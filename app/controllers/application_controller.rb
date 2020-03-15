class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    users_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def ymcov(yyyymm, cnt)
    yyyy = yyyymm[0, 4]
    mm = yyyymm[4, 2]
    return yyyy + "年" + mm + "月(" + cnt + ")"
  end
end
