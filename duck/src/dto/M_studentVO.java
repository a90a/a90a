package dto;

import org.springframework.web.multipart.MultipartFile;

//�л� ���̺�
public class M_studentVO {

	// �л� ��ȣ - PK
	private int ms_num;
	// ���̵� - PK
	private String ms_id;
	// �̸���
	private String ms_email;
	// �н�����
	private String ms_pwd;
	// �̸�
	private String ms_name;
	// �������
	private int ms_birth;
	// ����
	private String ms_gender;
	// ��ȭ ��ȣ
	private String ms_phone;
	// �� / �� ������ �ּ�
	private String ms_loc1;
	// ���� ��¥
	private String ms_regdate;
	// ����
	private int ms_boolean;
	// �л� �̹���
	private String ms_img;
	// ÷�� ����
	private MultipartFile mf_img;

	public int getMs_num() {
		return ms_num;
	}

	public void setMs_num(int ms_num) {
		this.ms_num = ms_num;
	}

	public String getMs_id() {
		return ms_id;
	}

	public void setMs_id(String ms_id) {
		this.ms_id = ms_id;
	}

	public String getMs_email() {
		return ms_email;
	}

	public void setMs_email(String ms_email) {
		this.ms_email = ms_email;
	}

	public String getMs_pwd() {
		return ms_pwd;
	}

	public void setMs_pwd(String ms_pwd) {
		this.ms_pwd = ms_pwd;
	}

	public String getMs_name() {
		return ms_name;
	}

	public void setMs_name(String ms_name) {
		this.ms_name = ms_name;
	}

	public int getMs_birth() {
		return ms_birth;
	}

	public void setMs_birth(int ms_birth) {
		this.ms_birth = ms_birth;
	}

	public String getMs_gender() {
		return ms_gender;
	}

	public void setMs_gender(String ms_gender) {
		this.ms_gender = ms_gender;
	}

	public String getMs_phone() {
		return ms_phone;
	}

	public void setMs_phone(String ms_phone) {
		this.ms_phone = ms_phone;
	}

	public String getMs_loc1() {
		return ms_loc1;
	}

	public void setMs_loc1(String ms_loc1) {
		this.ms_loc1 = ms_loc1;
	}

	public String getMs_regdate() {
		return ms_regdate;
	}

	public void setMs_regdate(String ms_regdate) {
		this.ms_regdate = ms_regdate;
	}

	public int getMs_boolean() {
		return ms_boolean;
	}

	public void setMs_boolean(int ms_boolean) {
		this.ms_boolean = ms_boolean;
	}

	public String getMs_img() {
		return ms_img;
	}

	public void setMs_img(String ms_img) {
		this.ms_img = ms_img;
	}

	public MultipartFile getMf_img() {
		return mf_img;
	}

	public void setMf_img(MultipartFile mf_img) {
		this.mf_img = mf_img;
	}

}