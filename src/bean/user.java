package bean;

public class user {
	private String username;
	private String password;
	private int permission;
	private String xm;
	private String sfzh;
	private String xb;
	private String gj;
	private String ss;
	private String gzdw;
	private String zzjgdm;
	private String zyfx;
	private String szhy;
	private String jycd;
	private String zc;
	private String txdz;
	private String yzbm;
	private String sj;
	private String gddh;
	private String yx;
	private String qq;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getXm() {
		return xm;
	}
	public void setXm(String xm) {
		this.xm = xm;
	}
	public String getSfzh() {
		return sfzh;
	}
	public void setSfzh(String sfzh) {
		this.sfzh = sfzh;
	}
	public String getXb() {
		return xb;
	}
	public void setXb(String xb) {
		this.xb = xb;
	}
	public String getGj() {
		return gj;
	}
	public void setGj(String gj) {
		this.gj = gj;
	}
	public String getSs() {
		return ss;
	}
	public void setSs(String ss) {
		this.ss = ss;
	}
	public String getGzdw() {
		return gzdw;
	}
	public void setGzdw(String gzdw) {
		this.gzdw = gzdw;
	}
	public String getZzjgdm() {
		return zzjgdm;
	}
	public void setZzjgdm(String zzjgdm) {
		this.zzjgdm = zzjgdm;
	}
	public String getZyfx() {
		return zyfx;
	}
	public void setZyfx(String zyfx) {
		this.zyfx = zyfx;
	}
	public String getSzhy() {
		return szhy;
	}
	public void setSzhy(String szhy) {
		this.szhy = szhy;
	}
	public String getJycd() {
		return jycd;
	}
	public void setJycd(String jycd) {
		this.jycd = jycd;
	}
	public String getZc() {
		return zc;
	}
	public void setZc(String zc) {
		this.zc = zc;
	}
	public String getTxdz() {
		return txdz;
	}
	public void setTxdz(String txdz) {
		this.txdz = txdz;
	}
	public String getYzbm() {
		return yzbm;
	}
	public void setYzbm(String yzbm) {
		this.yzbm = yzbm;
	}
	public String getSj() {
		return sj;
	}
	public void setSj(String sj) {
		this.sj = sj;
	}
	public String getGddh() {
		return gddh;
	}
	public void setGddh(String gddh) {
		this.gddh = gddh;
	}
	public String getYx() {
		return yx;
	}
	public void setYx(String yx) {
		this.yx = yx;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public int getPermission() {
		return permission;
	}
	public void setPermission(int permission) {
		this.permission = permission;
	}
	
	public user(String username, String password, String xm, String sfzh, String xb, String gj, String ss, String gzdw,
			String zzjgdm, String zyfx, String szhy, String jycd, String zc, String txdz, String yzbm, String sj,
			String gddh, String yx, String qq) {
		super();
		this.username = username;
		this.password = password;
		this.xm = xm;
		this.sfzh = sfzh;
		this.xb = xb;
		this.gj = gj;
		this.ss = ss;
		this.gzdw = gzdw;
		this.zzjgdm = zzjgdm;
		this.zyfx = zyfx;
		this.szhy = szhy;
		this.jycd = jycd;
		this.zc = zc;
		this.txdz = txdz;
		this.yzbm = yzbm;
		this.sj = sj;
		this.gddh = gddh;
		this.yx = yx;
		this.qq = qq;
	}
	
	public user(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public user(int permission)
	{
		super();
		this.permission=permission;
	}
	
	public user() {
		super();
	}
	public user(String username, String password,int permission) {
		super();
		this.username = username;
		this.password=password;
		this.permission = permission;
	}
	
	
}