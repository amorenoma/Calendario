class Evento < ActiveRecord::Base
  attr_accessible :fecha, :asignatura, :tipo, :aula, :dificultad

  def self.all_asignaturas
    %w(ISI TC IST SAT DAT BIO PDAC AC SSOO PST Circuitos Calculo FDP CC IO)
  end
end
