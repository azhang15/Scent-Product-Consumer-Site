package com.mie.model;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
	
public class StudentList {

	private Map map = new HashMap();
	
	public void add(Student new_student){
		getMap().put(new Integer(new_student.getStudentId()),new_student);
	}
	public boolean has(int student_id){
		return getMap().containsKey(new Integer(student_id));
	}
	public boolean has(Student student){
		return getMap().containsKey(new Integer(student.getStudentId()));
	}
	public int size(){
		return getMap().size();
	}
	
	public Iterator iterator() {
		return getMap().values().iterator();
	}
	public Map getMap() {
		return map;
	}
	public void setMap(Map map) {
		this.map = map;
	}
	
	public Student get(int student_id) throws NotFoundException {
		if (!has(student_id)) {
			throw new NotFoundException("Cannot find student " + student_id);
		}
		return (Student) getMap().get(new Integer(student_id));
	}

	/**
	 * 
	 * @return <tt>Iterator</tt> of all students in the list in no specific
	 *         order.
	 */

	public boolean insert(Student student) {

		int stid = student.getStudentId();
		String stfname = student.getFirstName();
		String stinitial = student.getInitial();
		String stlname = student.getLastName();
		String stemail = student.getEmail();

		String qStr = "INSERT INTO Student Values ('" + stid + "', '" + stfname + "', '" + stinitial + "', '" + stlname + "', '" + stemail
				+ "')";
		boolean updateResult = Main.runUpdate(qStr);
		return updateResult;
	}

}
