package com.siri.esmartHealthCare.services;

import java.util.List;

import com.siri.esmartHealthCare.beans.SignupBean;

public interface SignupServicesI {
	public List<String> getDepList();
	public String saveDetails(SignupBean signupBean);
}
