package cafe24project;

public enum Days {
	Monday("월요일"), Tuesday("화요일"), Wednesday("수요일"), Thursday("목요일"), Friday("금요일");
	   
	   private String kr_days;

	   private Days(String kr_days) {
	      this.kr_days = kr_days;
	   }

	   public String getKr_days() {
	      return kr_days;
	   }

	   public void setKr_days(String kr_days) {
	      this.kr_days = kr_days;
	   }
}
