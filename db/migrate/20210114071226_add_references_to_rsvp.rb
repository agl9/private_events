class AddReferencesToRsvp < ActiveRecord::Migration[6.0]
  def change
    add_reference :rsvps, :attendee, index: true, foreign_key: { to_table: :users }
    add_reference :rsvps, :attended_event, index: true, foreign_key: { to_table: :events }

  end
end
