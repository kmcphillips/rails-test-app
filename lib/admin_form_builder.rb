class AdminFormBuilder < ActionView::Helpers::FormBuilder
  def admin?
    true
  end
end
