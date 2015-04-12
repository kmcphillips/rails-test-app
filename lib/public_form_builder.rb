class PublicFormBuilder < ActionView::Helpers::FormBuilder
  def admin?
    false
  end
end
