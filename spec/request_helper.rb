module RequestHelpers
  def json_parser(obj)
    JSON.parse(obj).deep_transform_keys { |v| v.underscore.to_sym }
  end

  def camelize_of_json(obj)
    obj.deep_transform_keys { |v| v.to_s.camelize(:lower) }.to_json
  end

  def assert_emails(number)
    if block_given?
      original_count = ActionMailer::Base.deliveries.size
      yield
      new_count = ActionMailer::Base.deliveries.size
      number == new_count - original_count
    else
      number == ActionMailer::Base.deliveries.size
    end
  end
end
