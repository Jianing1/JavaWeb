package Model;

public class Grade {
	private String stuId;			//学生编号
	private String courseId;		//课程编号
	private String tcId;			//教师
	private String courseGrade;		//课程分数
	
	public void setStuId(String stuId){
		this.stuId = stuId;
	}
	
	public void setCourseId(String courseId){
		this.courseId = courseId;
	}
	
	public void setTcId(String tcId){
		this.tcId = tcId;
	}
	
	public void setCourseGrade(String courseGrade){
		this.courseGrade = courseGrade;
	}
	

	
	public String getStuId(){
		return stuId;
	}
	
	public String getCourseId(){
		return courseId;
	}
	
	public String getTcId(){
		return tcId;
	}
	
	public String getCourseGrade(){
		return courseGrade;
	}
}
