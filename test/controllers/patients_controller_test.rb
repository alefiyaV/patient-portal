require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url, as: :json
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { dob: @patient.dob, email: @patient.email, first_name: @patient.first_name, last_name: @patient.last_name, password: @patient.password, personal_health_number: @patient.personal_health_number, provider_id: @patient.provider_id, sex: @patient.sex, telephone: @patient.telephone } }, as: :json
    end

    assert_response 201
  end

  test "should show patient" do
    get patient_url(@patient), as: :json
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { dob: @patient.dob, email: @patient.email, first_name: @patient.first_name, last_name: @patient.last_name, password: @patient.password, personal_health_number: @patient.personal_health_number, provider_id: @patient.provider_id, sex: @patient.sex, telephone: @patient.telephone } }, as: :json
    assert_response 200
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient), as: :json
    end

    assert_response 204
  end
end
