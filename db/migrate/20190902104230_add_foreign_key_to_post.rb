# frozen_string_literal: true

class AddForeignKeyToPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :user, foreign_key: true
  end
end
