class Course < ApplicationRecord
    def can_show_started?
        self.status.eql?("In Progress") || self.status.eql?("Completed")
    end

    def can_show_completed?
        self.status.eql?("Completed")
    end
end
