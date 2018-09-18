class CreateEvaluationQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluation_questions do |t|
      # t.index [:evaluation_id, :question_id]
      # t.index [:question_id, :evaluation_id]
    end
  end
end


