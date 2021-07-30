package com.rayman.lps.mvc;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="users",schema="testdb")
public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Integer ID;
		
		public Integer getID() {
			return ID;
		}

		public void setID(Integer iD) {
			ID = iD;
		}
		@Column(name="First_Name")
		private String firstName;
		
		@Column(name="Last_Name")
		private String lastName;
		
		@Column(name="UserName")
		private String userName;
		
		@Column(name="Password")
		private String password;

		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String getUserName() {
			return userName;
		}

		public void setUserName(String userName) {
			this.userName = userName;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
		
}
