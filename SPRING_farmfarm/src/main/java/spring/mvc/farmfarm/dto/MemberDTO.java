package spring.mvc.farmfarm.dto;

import java.util.Date;

public class MemberDTO {
   
   private String mem_id;      
    private String mem_pwd;     
    private String mem_name;    
    private String mem_hp;      
    private String mem_email;   
    private String mem_address; 
    private int mem_grade;   
    private int mem_adv;  
    private Date mem_regDate;
   
    
    public String getMem_id() {
      return mem_id;
   }
   public void setMem_id(String mem_id) {
      this.mem_id = mem_id;
   }
   public String getMem_pwd() {
      return mem_pwd;
   }
   public void setMem_pwd(String mem_pwd) {
      this.mem_pwd = mem_pwd;
   }
   public String getMem_name() {
      return mem_name;
   }
   public void setMem_name(String mem_name) {
      this.mem_name = mem_name;
   }
   public String getMem_hp() {
      return mem_hp;
   }
   public void setMem_hp(String mem_hp) {
      this.mem_hp = mem_hp;
   }
   public String getMem_email() {
      return mem_email;
   }
   public void setMem_email(String mem_email) {
      this.mem_email = mem_email;
   }
   public String getMem_address() {
      return mem_address;
   }
   public void setMem_address(String mem_address) {
      this.mem_address = mem_address;
   }
   public int getMem_grade() {
      return mem_grade;
   }
   public void setMem_grade(int mem_grade) {
      this.mem_grade = mem_grade;
   }
   public int getMem_adv() {
      return mem_adv;
   }
   public void setMem_adv(int mem_adv) {
      this.mem_adv = mem_adv;
   }
   public Date getMem_regDate() {
      return mem_regDate;
   }
   public void setMem_regDate(Date mem_regDate) {
      this.mem_regDate = mem_regDate;
   }


}