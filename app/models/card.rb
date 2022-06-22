class Card < ActiveRecord::Base
    belongs_to :student
    belongs_to :subject

def create_card(front, back, student, subject)
    self.create(front: front, back: back, student_id: student_id, subject_id: subject_id)
end

def destroy_card(subject)
    self.find_by(subject_id: subject.id).destroy

    #if we want to destroy all the cards related to the subject
    # self.find_by(subject_id: subject.id).destroy_all

end

 #?
def edit_card (front, back, student, subject)
    self.update(front: front, back: back, student_id: student_id, subject_id: subject_id)
end




end