package spring.mvc.farmfarm.dto;

import java.sql.Date;

public class PartnerDTO {

   private String mem_id; // 회원 아이디
   private String mem_name; // 회원 이름
   private String farm_nick; // 닉네임
   private Date farm_regDate; // 파트너 등록일
   private int farm_status; // 파트너 상태(1: 파트너 신청 대기, 2: 파트너 승인 완료)
   private int farm_adv; // 파트너 점수
   
   public String getMem_id() {
      return mem_id;
   }
   public void setMem_id(String mem_id) {
      this.mem_id = mem_id;
   }
   public String getMem_name() {
      return mem_name;
   }
   public void setMem_name(String mem_name) {
      this.mem_name = mem_name;
   }
   public String getFarm_nick() {
      return farm_nick;
   }
   public void setFarm_nick(String farm_nick) {
      this.farm_nick = farm_nick;
   }
   public Date getFarm_regDate() {
      return farm_regDate;
   }
   public void setFarm_regDate(Date farm_regDate) {
      this.farm_regDate = farm_regDate;
   }
   public int getFarm_status() {
      return farm_status;
   }
   public void setFarm_status(int farm_status) {
      this.farm_status = farm_status;
   }
   public int getFarm_adv() {
      return farm_adv;
   }
   public void setFarm_adv(int farm_adv) {
      this.farm_adv = farm_adv;
   }
}