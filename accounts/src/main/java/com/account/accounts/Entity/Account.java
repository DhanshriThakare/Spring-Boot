package com.account.accounts.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="accounts")
public class Account {
	@Id
 private Integer accno;
	@Column(nullable=false)
	private String accnm;
	@Column(nullable=false)
	private String acctype;
	@Column(nullable=false)
	private String balance;
	public Integer getAccno() {
		return accno;
	}
	public void setAccno(Integer accno) {
		this.accno = accno;
	}
	public String getAccnm() {
		return accnm;
	}
	public void setAccnm(String accnm) {
		this.accnm = accnm;
	}
	public String getAcctype() {
		return acctype;
	}
	public void setAcctype(String acctype) {
		this.acctype = acctype;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	
}
