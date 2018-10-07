class CreateEvaluationQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluation_questions do |t|
       t.integer :question_id
       t.integer :evaluation_id
    end
  end
end


