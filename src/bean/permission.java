package bean;

public class permission {
private int permission;
private int permissionid;
public int getPermission() {
	return permission;
}
public void setPermission(int permission) {
	this.permission = permission;
}
public int getPermissionid() {
	return permissionid;
}
public void setPermissionid(int permissionid) {
	this.permissionid = permissionid;
}
public permission(int permission, int permissionid) {
	super();
	this.permission = permission;
	this.permissionid = permissionid;
}
public permission() {
	super();
}

}
