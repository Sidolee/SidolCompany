package com.javassem.vo;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class AuctioninfoVO {
	private Integer A_NUM;		//상품번호
	private String 	A_SELLER;	//아이디(판매자)  test2 << 
	private String 	A_TITLE;	//글 제목
	private String 	A_CONTENT;	//글 내용
	private Integer START_COST;	//지정가
	private Integer A_LIMIT;	//경매제한인원
	private Integer A_WARN;		//신고인원수
	private Integer A_ACCESS;	//접속자 수
	private String 	A_DISPLAY;	//공개 여부
	private Integer A_WISH;		//찜 인원
	private String 	A_DATE;		//게시글 등록일자
	private String 	A_STARTDAY;	//경매시작 날짜
	private String 	A_ENDDAY;	//경매종료 날짜
	private String 	S_NUM;		//보관 위치 코드
	private Integer C_ID;		//카테고리 코드
	
	//이미지파일 	
	private String 	A_IMG1;		//이미지1
	private String 	A_IMG2;		//이미지2
	private String 	A_IMG3;		//이미지3
	private String 	A_IMG4;		//이미지4
	
	//23.11.02 추가사항
	private String A_REALIMG; // 이미지1에 저장된 파일이름
	private long A_IMGSIZE;		// 파일크기
	
	//23.11.04 추가사항
	private String A_REALIMG2; // 이미지3에 저장된 파일이름
	private long A_IMGSIZE2;		// 이미지3파일크기
	private String A_REALIMG3; // 이미지3에 저장된 파일이름
	private long A_IMGSIZE3;		// 이미지3파일크기
	
	
	//이미지 등록을 위한 변수
	MultipartFile file1;
	MultipartFile file2;
	MultipartFile file3;

	//이미지 등록을 위한 함수
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
		
		//업로드 파일이 있는 경우
		if(!file1.isEmpty()) {
			this.A_IMG1=file1.getOriginalFilename();
			this.A_IMGSIZE=file1.getSize();
			
			//실제 저장된 파일명 만들기 
			UUID uuid= UUID.randomUUID();
			this.A_REALIMG = uuid.toString();
			
			//실제파일 저장
			//추후에 웹서버 경로를 찾아서 수정
			File f = new File("D:\\springweb\\sidol1\\src\\main\\webapp\\resources\\upload\\" + A_REALIMG);
			
			try {
				file1.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}//end of catch
		}//end of if
	}//end of setFile1
	
	//이미지 등록을 위한 함수
	public MultipartFile getFile2() {
		return file2;
	}
	public void setFile2(MultipartFile file2) {
		this.file2 = file2;
		
		//업로드 파일이 있는 경우
		if(!file2.isEmpty()) {
			this.A_IMG2=file2.getOriginalFilename();
			this.A_IMGSIZE2=file2.getSize();
			
			//실제 저장된 파일명 만들기 
			UUID uuid2 = UUID.randomUUID();
			this.A_REALIMG2 = uuid2.toString();
			
			//실제파일 저장
			//추후에 웹서버 경로를 찾아서 수정
			File f2 = new File("D:\\springweb\\sidol1\\src\\main\\webapp\\resources\\upload\\" + A_REALIMG2);
			
			try {
				file2.transferTo(f2);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}//end of catch
		}//end of if
	}//end of setFile2
	
	//이미지 등록을 위한 함수
	public MultipartFile getFile3() {
		return file3;
	}
	public void setFile3(MultipartFile file3) {
		this.file3 = file3;
		
		//업로드 파일이 있는 경우
		if(!file3.isEmpty()) {
			this.A_IMG3=file3.getOriginalFilename();
			this.A_IMGSIZE3=file3.getSize();
			
			//실제 저장된 파일명 만들기 
			UUID uuid3 = UUID.randomUUID();
			this.A_REALIMG3 = uuid3.toString();
			
			//실제파일 저장
			//추후에 웹서버 경로를 찾아서 수정
			File f3 = new File("D:\\springweb\\sidol1\\src\\main\\webapp\\resources\\upload\\" + A_REALIMG3);
			
			try {
				file3.transferTo(f3);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}//end of catch
		}//end of if
	}//end of setFile3
	
	
	
	
	

	public String toStringAll() {
		return "AuctioninfoVO [A_NUM=" + A_NUM + ", A_SELLER=" + A_SELLER + ", A_TITLE=" + A_TITLE + ", A_CONTENT="
				+ A_CONTENT + ", START_COST=" + START_COST + ", A_LIMIT=" + A_LIMIT + ", A_WARN=" + A_WARN
				+ ", A_ACCESS=" + A_ACCESS + ", A_DISPLAY=" + A_DISPLAY + ", A_WISH=" + A_WISH + ", A_DATE=" + A_DATE
				+ ", A_STARTDAY=" + A_STARTDAY + ", A_ENDDAY=" + A_ENDDAY + ", S_NUM=" + S_NUM + ", C_ID=" + C_ID
				+ ", A_IMG1=" + A_IMG1 + ", A_IMG2=" + A_IMG2 + ", A_IMG3=" + A_IMG3 + ", A_IMG4=" + A_IMG4
				+ ", A_REALIMG=" + A_REALIMG + ", A_IMGSIZE=" + A_IMGSIZE + ", A_REALIMG2=" + A_REALIMG2
				+ ", A_IMGSIZE2=" + A_IMGSIZE2 + ", A_REALIMG3=" + A_REALIMG3 + ", A_IMGSIZE3=" + A_IMGSIZE3
				+ ", file1=" + file1 + ", file2=" + file2 + ", file3=" + file3 + "]";
	}
	
	
	
	

	public String toStringAcutioninfoinsert() {
		return "AuctioninfoVO [A_NUM=" + A_NUM + ", A_SELLER=" + A_SELLER + ", A_TITLE=" + A_TITLE + ", A_CONTENT="
				+ A_CONTENT + ", START_COST=" + START_COST + ", A_LIMIT=" + A_LIMIT + ", A_DISPLAY=" + A_DISPLAY
				+ ", A_DATE=" + A_DATE + ", A_STARTDAY=" + A_STARTDAY + ", A_ENDDAY=" + A_ENDDAY + ", C_ID=" + C_ID
				+ ", A_IMG1=" + A_IMG1 + ", A_IMG2=" + A_IMG2 + ", A_IMG3=" + A_IMG3 + ", A_REALIMG=" + A_REALIMG
				+ ", A_IMGSIZE=" + A_IMGSIZE + ", A_REALIMG2=" + A_REALIMG2 + ", A_IMGSIZE2=" + A_IMGSIZE2
				+ ", A_REALIMG3=" + A_REALIMG3 + ", A_IMGSIZE3=" + A_IMGSIZE3 + "]";
	}
	
	public String getA_REALIMG2() {
		return A_REALIMG2;
	}
	public void setA_REALIMG2(String a_REALIMG2) {
		A_REALIMG2 = a_REALIMG2;
	}
	public long getA_IMGSIZE2() {
		return A_IMGSIZE2;
	}
	public void setA_IMGSIZE2(long a_IMGSIZE2) {
		A_IMGSIZE2 = a_IMGSIZE2;
	}
	public String getA_REALIMG3() {
		return A_REALIMG3;
	}
	public void setA_REALIMG3(String a_REALIMG3) {
		A_REALIMG3 = a_REALIMG3;
	}
	public long getA_IMGSIZE3() {
		return A_IMGSIZE3;
	}
	public void setA_IMGSIZE3(long a_IMGSIZE3) {
		A_IMGSIZE3 = a_IMGSIZE3;
	}
	public int getA_NUM() {
		return A_NUM;
	}
	public void setA_NUM(int a_NUM) {
		A_NUM = a_NUM;
	}
	public String getA_SELLER() {
		return A_SELLER;
	}
	public void setA_SELLER(String a_SELLER) {
		A_SELLER = a_SELLER;
	}
	public String getA_TITLE() {
		return A_TITLE;
	}
	public void setA_TITLE(String a_TITLE) {
		A_TITLE = a_TITLE;
	}
	public String getA_CONTENT() {
		return A_CONTENT;
	}
	public void setA_CONTENT(String a_CONTENT) {
		A_CONTENT = a_CONTENT;
	}
	public int getSTART_COST() {
		return START_COST;
	}
	public void setSTART_COST(int sTART_COST) {
		START_COST = sTART_COST;
	}
	public int getA_LIMIT() {
		return A_LIMIT;
	}
	public void setA_LIMIT(int a_LIMIT) {
		A_LIMIT = a_LIMIT;
	}
	public int getA_WARN() {
		return A_WARN;
	}
	public void setA_WARN(int a_WARN) {
		A_WARN = a_WARN;
	}
	public int getA_ACCESS() {
		return A_ACCESS;
	}
	public void setA_ACCESS(int a_ACCESS) {
		A_ACCESS = a_ACCESS;
	}
	public String getA_DISPLAY() {
		return A_DISPLAY;
	}
	public void setA_DISPLAY(String a_DISPLAY) {
		A_DISPLAY = a_DISPLAY;
	}
	public int getA_WISH() {
		return A_WISH;
	}
	public void setA_WISH(int a_WISH) {
		A_WISH = a_WISH;
	}
	public String getA_DATE() {
		return A_DATE;
	}
	public void setA_DATE(String a_DATE) {
		A_DATE = a_DATE;
	}
	public String getA_STARTDAY() {
		return A_STARTDAY;
	}
	public void setA_STARTDAY(String a_STARTDAY) {
		A_STARTDAY = a_STARTDAY;
	}
	public String getA_ENDDAY() {
		return A_ENDDAY;
	}
	public void setA_ENDDAY(String a_ENDDAY) {
		A_ENDDAY = a_ENDDAY;
	}
	public String getS_NUM() {
		return S_NUM;
	}
	public void setS_NUM(String s_NUM) {
		S_NUM = s_NUM;
	}
	public int getC_ID() {
		return C_ID;
	}
	public void setC_ID(int c_ID) {
		C_ID = c_ID;
	}
	public String getA_IMG1() {
		return A_IMG1;
	}
	public void setA_IMG1(String a_IMG1) {
		A_IMG1 = a_IMG1;
	}
	public String getA_IMG2() {
		return A_IMG2;
	}
	public void setA_IMG2(String a_IMG2) {
		A_IMG2 = a_IMG2;
	}
	public String getA_IMG3() {
		return A_IMG3;
	}
	public void setA_IMG3(String a_IMG3) {
		A_IMG3 = a_IMG3;
	}
	public String getA_IMG4() {
		return A_IMG4;
	}
	public void setA_IMG4(String a_IMG4) {
		A_IMG4 = a_IMG4;
	}
	public String getA_REALIMG() {
		return A_REALIMG;
	}
	public void setA_REALIMG(String A_REALIMG) {
		A_REALIMG = A_REALIMG;
	}
	public long getA_IMGSIZE() {
		return A_IMGSIZE;
	}
	public void setA_IMGSIZE(long A_IMGSIZE) {
		A_IMGSIZE = A_IMGSIZE;
	}
	 
	
}
