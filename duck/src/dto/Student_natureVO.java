package dto;

//�л� ���� ���̺�
public class Student_natureVO {

	// �л� ���� ��ȣ - PK
	private int sn_num;
	// ���̵� - PK/FK
	private String ms_id;
	// ���� ����
	private String sn_my;
	// ����(���� ���ϴ�) ����
	private String sn_you;
	// ���� �о�
	private String sn_category;

	public int getSn_num() {
		return sn_num;
	}

	public void setSn_num(int sn_num) {
		this.sn_num = sn_num;
	}

	public String getMs_id() {
		return ms_id;
	}

	public void setMs_id(String ms_id) {
		this.ms_id = ms_id;
	}

	public String getSn_my() {
		return sn_my;
	}

	public void setSn_my(String sn_my) {
		this.sn_my = sn_my;
	}

	public String getSn_you() {
		return sn_you;
	}

	public void setSn_you(String sn_you) {
		this.sn_you = sn_you;
	}

	public String getSn_category() {
		return sn_category;
	}

	public void setSn_category(String sn_category) {
		this.sn_category = sn_category;
	}

}