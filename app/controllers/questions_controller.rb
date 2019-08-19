# frozen_string_literal: true

# rubocop: disable Style/Documentation

class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    return @answer = '- Great!' if @question == 'I am going to work'

    if @question.include?('?')
      return @answer = "I don't care, get dressed and go to work!"
    end

    @answer = "I don't care, get dressed and go to work!"
  end
end
# rubocop: enable Style/Documentation
