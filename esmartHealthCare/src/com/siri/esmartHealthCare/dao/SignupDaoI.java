package com.siri.esmartHealthCare.dao;

import java.util.List;

import com.siri.esmartHealthCare.beans.SignupBean;

public interface SignupDaoI {
public List<String> getDepList();
public String saveDetails(SignupBean signupBean);
}
