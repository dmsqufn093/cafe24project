package cafe24project;

public class SubjectVO {


	   private int classCode; //과목코드
	   private int subjectCode;//과목코드
	   private String subject;// 과목
	   private String day01;// 요일 1
	   private String day02;// 요일 2
	   private String day03;// 요일 3 
	   private String period01;// 교시 1
	   private String period02;// 교시 2
	   private String period03;// 교시 3
	   private int credit;//학점
	   
	   public SubjectVO(int classCode, int subjectCode, String subject, String day01, String day02, String day03,
	         String period01, String period02, String period03, int credit) {
	      super();
	      this.classCode = classCode;
	      this.subjectCode = subjectCode;
	      this.subject = subject;
	      this.day01 = day01;
	      this.day02 = day02;
	      this.day03 = day03;
	      this.period01 = period01;
	      this.period02 = period02;
	      this.period03 = period03;
	      this.credit = credit;
	   }


	   public int getClassCode() {
	      return classCode;
	   }


	   public void setClassCode(int classCode) {
	      this.classCode = classCode;
	   }


	   public int getSubjectCode() {
	      return subjectCode;
	   }


	   public void setSubjectCode(int subjectCode) {
	      this.subjectCode = subjectCode;
	   }


	   public String getSubject() {
	      return subject;
	   }


	   public void setSubject(String subject) {
	      this.subject = subject;
	   }


	   public String getDay01() {
	      return day01;
	   }


	   public void setDay01(String day01) {
	      this.day01 = day01;
	   }


	   public String getDay02() {
	      return day02;
	   }


	   public void setDay02(String day02) {
	      this.day02 = day02;
	   }


	   public String getDay03() {
	      return day03;
	   }


	   public void setDay03(String day03) {
	      this.day03 = day03;
	   }


	   public String getPeriod01() {
	      return period01;
	   }


	   public void setPeriod01(String period01) {
	      this.period01 = period01;
	   }


	   public String getPeriod02() {
	      return period02;
	   }


	   public void setPeriod02(String period02) {
	      this.period02 = period02;
	   }


	   public String getPeriod03() {
	      return period03;
	   }


	   public void setPeriod03(String period03) {
	      this.period03 = period03;
	   }


	   public int getCredit() {
	      return credit;
	   }


	   public void setCredit(int credit) {
	      this.credit = credit;
	   }


	   @Override
	   public String toString() {
	      return "SubjectVO [classCode=" + classCode + ", subjectCode=" + subjectCode + ", subject=" + subject
	            + ", day01=" + day01 + ", day02=" + day02 + ", day03=" + day03 + ", period01=" + period01
	            + ", period02=" + period02 + ", period03=" + period03 + ", credit=" + credit + "]";
	   }
	   
	   
	   
}
