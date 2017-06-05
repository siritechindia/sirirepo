package com.siri.esmartHealthCare.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.siri.esmartHealthCare.beans.SignupBean;
import com.siri.esmartHealthCare.domain.SignupDomain;
@Repository
public class SignupDaoImpl implements SignupDaoI{

	@Autowired
	private SessionFactory sf;
	
	String msg = "";
	
	@Override
	public List<String> getDepList() {
		Session hSession = sf.openSession();
		Query query = hSession.createQuery("select deptName from DepartmentDomine"); 
		List<String> listOfDeptNames = query.list();
		//List<DepartmentBean> listofdeptbeans=new ArrayList<DepartmentBean>();
		
		return listOfDeptNames;
	}
	@Override
	public String saveDetails(SignupBean signupBean) {
		SignupDomain signupDomaine = new SignupDomain();
		signupDomaine.setFirstname(signupBean.getFirstname());
		signupDomaine.setMiddlename(signupBean.getMiddlename());
		signupDomaine.setLastname(signupBean.getLastname());
		signupDomaine.setGender(signupBean.getGender());
		signupDomaine.setUserid(signupBean.getUserid());
		signupDomaine.setPassword(signupBean.getPassword());
		signupDomaine.setMobilenumber(signupBean.getMobilenumber());
		signupDomaine.setEmail(signupBean.getEmail());
		signupDomaine.setDepartment(signupBean.getDepartment());
		signupDomaine.setAcceptTerm(signupBean.getAcceptTerm());
		Session hSession = sf.openSession();
		Transaction txn  = hSession.beginTransaction();
		Integer serIdValue = (Integer)hSession.save(signupDomaine);
		System.out.println(serIdValue);
		txn.commit();
		
		if(serIdValue>0){
			msg = "success";
		}else{
			msg = "fail";
		}
		hSession.close();
		return msg;
	}

	
}
