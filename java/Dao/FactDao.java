package Dao;

public class FactDao {
	private memberDao md;
	private porderDao pd;
	private memberQuery mq;
	private porderQuery pq;
	public memberDao getMd() {
		return md;
	}
	public void setMd(memberDao md) {
		this.md = md;
	}
	public porderDao getPd() {
		return pd;
	}
	public void setPd(porderDao pd) {
		this.pd = pd;
	}
	public memberQuery getMq() {
		return mq;
	}
	public void setMq(memberQuery mq) {
		this.mq = mq;
	}
	public porderQuery getPq() {
		return pq;
	}
	public void setPq(porderQuery pq) {
		this.pq = pq;
	}
	
	

}
