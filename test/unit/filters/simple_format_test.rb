require File.expand_path('../../unit_test_helper', __FILE__)

class SimpleFormatTest < Minitest::Test

  def test_transform
    result = auto_html('Hey check out my blog => http://rors.org') { simple_format }
    assert_equal '<p>Hey check out my blog => http://rors.org</p>', result
  end

  def test_trasform2
    result = auto_html('Hey check out my code => http://github.com/dejan') { simple_format }
    assert_equal '<p>Hey check out my code => http://github.com/dejan</p>', result
  end

end
