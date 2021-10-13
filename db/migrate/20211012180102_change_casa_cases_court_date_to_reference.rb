class ChangeCasaCasesCourtDateToReference < ActiveRecord::Migration[6.1]
  def up
    CasaCase.find_each do |casa_case|
      CourtDate.create(
        date: casa_case.court_date,
        casa_case: casa_case,
        hearing_type: casa_case.hearing_type,
        judge: casa_case.judge
      )
    end
  end
end
