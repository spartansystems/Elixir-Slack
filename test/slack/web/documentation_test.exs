defmodule Slack.Web.DocumentationTest do
  use ExUnit.Case
  alias Slack.Web.Documentation

  describe "Documentation.arguments_with_values/1" do
    test "that it returns a proper keyword list" do
      doc = %Documentation{required_params: [:channel]}

      argument_value_keyword_list = Documentation.arguments_with_values(doc)
      assert [channel: {:channel, [], nil}] == argument_value_keyword_list
    end
  end
end
