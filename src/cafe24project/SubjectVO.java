package cafe24project;

public class SubjectVO {
	private int classCode; // <td>과목코드</td>
	private String subject;// <td>과목</td>
	private String day;// <td>요일</td>
	private String period;// <td>교시</td>
	
	
	public SubjectVO(int classCode, String subject, String day, String period) {
		super();
		this.classCode = classCode;
		this.subject = subject;
		this.day = day;
		this.period = period;
	}


	public int getClassCode() {
		return classCode;
	}


	public void setClassCode(int classCode) {
		this.classCode = classCode;
	}


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public String getDay() {
		return day;
	}


	public void setDay(String day) {
		this.day = day;
	}


	public String getPeriod() {
		return period;
	}


	public void setPeriod(String period) {
		this.period = period;
	}


	@Override
	public String toString() {
		return "SubjectVO [classCode=" + classCode + ", subject=" + subject + ", day=" + day + ", period=" + period
				+ "]";
	}
	
	

}
