class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Routes to Students_____________________________________________________________________
  get "/students" do
    student = Student.all
    student.to_json
  end

  get "/students/:id" do
    student = Student.find(params[:id])
    student.to_json
  end

  post "/students" do
    student = Student.create( student_name:params[:student_name])
    student.to_json
  end


  delete "/students/:id" do
    student = Student.find(params[:id])
    student.destrostudent
    student.to_json
  end

  patch '/students/:id' do
   student = Student.find(params[:id])
   student.update(student_name:params[:student_name])
   student.to_json
  end

  #Routes to Subjects_______________________________________________________________________
  get "/subjects" do
    subject = Subject.all
    subject.to_json
  end


  get "/subjects/:id" do
    subject = subject.find(params[:id])
    subject.to_json
  end

  get "/subjects/:id/:cards" do
    subject = Subject.find(params[:id]).cards
    subject.to_json
  end


  post "/subjects" do
    subject = Subject.create( subject:params[:subject])
    subject.to_json
  end

  delete "/subjects/:id" do
    subject = Subject.find(params[:id])
    subjectt.destroy
    subject.to_json
  end

  patch '/subjects/:id' do
    subject = Subject.find(params[:id])
    subject.update(subject:params[:subject])
    subject.to_json
  end

  #Routes to Cards____________________________________________________________________________
  get "/cards" do
    card = Card.all
    card.to_json
  end
  
  get "/cards/:id" do
    student = Card.find(params[:id])
    student.to_json
  end

  post "/cards" do
    subject = Card.create( front:params[:front], back:params[:back],student_id:params[:student_id],subject_id:params[:subject_id])
    subject.to_json
  end

  delete "/cards/:id" do
    subject = Card.find(params[:id])
    subjectt.destroy
    subject.to_json
  end

  patch '/cards/:id' do
    cards = Card.find(params[:id])
    card.update( front:params[:front], back:params[:back],student_id:params[:student_id],subject_id:params[:subject_id])
    card.to_json
  end

end
