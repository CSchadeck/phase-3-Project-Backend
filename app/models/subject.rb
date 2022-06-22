class Subject < ActiveRecord::Base
    has_many :cards
    has_many :students, through: :cards

    def create_subject
        self.create(self_id: self.id)

    end

    def edit_name(subject)
        self.update(self_id: self.id)
    end
    end

    def destoy_subject(subject)
        self.find_by(self_id: self.id).destroy
    end

end