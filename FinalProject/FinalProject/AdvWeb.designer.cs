﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18052
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FinalProject
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="AdvWebDevProject")]
	public partial class AdvWebDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    #endregion
		
		public AdvWebDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["AdvWebDevProjectConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public AdvWebDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AdvWebDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AdvWebDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public AdvWebDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.pDelClassStudents")]
		public int pDelClassStudents([global::System.Data.Linq.Mapping.ParameterAttribute(Name="ClassId", DbType="Int")] System.Nullable<int> classId, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="StudentId", DbType="Int")] System.Nullable<int> studentId)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), classId, studentId);
			return ((int)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.pUpdClassStudents")]
		public int pUpdClassStudents([global::System.Data.Linq.Mapping.ParameterAttribute(Name="OriginalClassId", DbType="Int")] System.Nullable<int> originalClassId, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="OriginalStudentId", DbType="Int")] System.Nullable<int> originalStudentId, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="NewClassId", DbType="Int")] System.Nullable<int> newClassId, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="NewStudentId", DbType="Int")] System.Nullable<int> newStudentId)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), originalClassId, originalStudentId, newClassId, newStudentId);
			return ((int)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.pInsClassStudents")]
		public int pInsClassStudents([global::System.Data.Linq.Mapping.ParameterAttribute(Name="ClassId", DbType="Int")] System.Nullable<int> classId, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="StudentId", DbType="Int")] System.Nullable<int> studentId)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), classId, studentId);
			return ((int)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.pSelClassesByStudents")]
		public ISingleResult<pSelClassesByStudentsResult> pSelClassesByStudents()
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
			return ((ISingleResult<pSelClassesByStudentsResult>)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.pSelLoginIdByLoginAndPassword")]
		public int pSelLoginIdByLoginAndPassword([global::System.Data.Linq.Mapping.ParameterAttribute(Name="StudentLogin", DbType="NVarChar(50)")] string studentLogin, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="StudentPassword", DbType="NVarChar(50)")] string studentPassword, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="StudentId", DbType="Int")] ref System.Nullable<int> studentId)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), studentLogin, studentPassword, studentId);
			studentId = ((System.Nullable<int>)(result.GetParameterValue(2)));
			return ((int)(result.ReturnValue));
		}
	}
	
	public partial class pSelClassesByStudentsResult
	{
		
		private int _StudentId;
		
		private string _StudentName;
		
		private string _StudentEmail;
		
		private int _ClassId;
		
		private string _ClassName;
		
		private System.DateTime _ClassDate;
		
		private string _ClassDescription;
		
		public pSelClassesByStudentsResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StudentId", DbType="Int NOT NULL")]
		public int StudentId
		{
			get
			{
				return this._StudentId;
			}
			set
			{
				if ((this._StudentId != value))
				{
					this._StudentId = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StudentName", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
		public string StudentName
		{
			get
			{
				return this._StudentName;
			}
			set
			{
				if ((this._StudentName != value))
				{
					this._StudentName = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StudentEmail", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
		public string StudentEmail
		{
			get
			{
				return this._StudentEmail;
			}
			set
			{
				if ((this._StudentEmail != value))
				{
					this._StudentEmail = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ClassId", DbType="Int NOT NULL")]
		public int ClassId
		{
			get
			{
				return this._ClassId;
			}
			set
			{
				if ((this._ClassId != value))
				{
					this._ClassId = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ClassName", DbType="NVarChar(100) NOT NULL", CanBeNull=false)]
		public string ClassName
		{
			get
			{
				return this._ClassName;
			}
			set
			{
				if ((this._ClassName != value))
				{
					this._ClassName = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ClassDate", DbType="DateTime NOT NULL")]
		public System.DateTime ClassDate
		{
			get
			{
				return this._ClassDate;
			}
			set
			{
				if ((this._ClassDate != value))
				{
					this._ClassDate = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ClassDescription", DbType="NVarChar(2000) NOT NULL", CanBeNull=false)]
		public string ClassDescription
		{
			get
			{
				return this._ClassDescription;
			}
			set
			{
				if ((this._ClassDescription != value))
				{
					this._ClassDescription = value;
				}
			}
		}
	}
}
#pragma warning restore 1591
