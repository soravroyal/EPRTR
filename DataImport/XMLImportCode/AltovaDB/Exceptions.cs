//
// Exceptions.cs
//
// This file was generated by MapForce 2008r2sp1.
//
// YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
// OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.
//
// Refer to the MapForce Documentation for further details.
// http://www.altova.com/mapforce
//

using System;
using System.Data;
using Altova;

namespace Altova.Db
{
	/// <summary>
	/// Base class for all exceptions thrown by functions of the Altova.Db-library..
	/// </summary>
	public class DBException : AltovaException 
	{
		protected string	failedItem;
		protected string	errorMessage;

		public DBException( string failedItem, string errorMessage ) 
			: base( failedItem + " \n" + errorMessage )
		{
			this.failedItem = failedItem;
			this.errorMessage = errorMessage;
		}

		public string FailedItem
		{
			get
			{
				return failedItem;
			}
		}

		public string ErrorMessage 
		{
			get
			{
				return errorMessage;
			}
		}
	}


	/// <summary>
	/// Is thrown when an error occurs during connecting/disconnecting to the database
	/// </summary>
	public class DBConnectionException : DBException 
	{
		public enum EErrorKind
		{
			Open,
			Init,
			Finalize,
			Close
		};

		protected EErrorKind	eKind;

		public DBConnectionException( EErrorKind eKind, string connectionString, string errorMessage) 
			: base( connectionString, errorMessage )
		{
			this.eKind = eKind;
		}

		public string ConnectionString
		{
			get
			{
				return failedItem;
			}
		}

		public EErrorKind Kind 
		{
			get
			{
				return eKind;
			}
		}
	}


	/// <summary>
	/// This exception is thrown when errors occur during SQL-statement execution
	/// </summary>
	public class DBExecuteException : DBException 
	{
		public enum EErrorKind
		{
			PrepareCommand,
			PrepareParams,
			Execute,
			GetAffected,
			GetColumn,
			SetColumn,
			ReadNextResult
		};

		protected EErrorKind	eKind;


		public DBExecuteException( EErrorKind eKind, string sqlCommand, string errorMessage) 
			: base( sqlCommand, errorMessage )
		{
			this.eKind = eKind;
		}
		
		public DBExecuteException( DBExecuteException other )
			: base( other.SQLCommand, other.ErrorMessage )
		{
			this.eKind = other.eKind;
		}

		public string SQLCommand
		{
			get
			{
				return failedItem;
			}
		}

		public EErrorKind Kind 
		{
			get
			{
				return eKind;
			}
		}
	}


	/// <summary>
	/// This exception is used for extended transaction-handling (when errors occur within transactions)
	/// </summary>
	public class DBTransactionException : DBException 
	{
		public enum EErrorKind
		{
			Stop,
			RollbackAll
		};


		protected EErrorKind			eKind;
		protected DBExecuteException	innerDBExecuteException;


		public DBTransactionException( EErrorKind eKind, string transactionName, DBExecuteException innerDBException ) 
			: base( transactionName, innerDBException.ErrorMessage )
		{
			this.eKind = eKind;
			this.innerDBExecuteException = innerDBException;
		}

		public string TransactionName
		{
			get
			{
				return failedItem;
			}
		}

		public EErrorKind Kind 
		{
			get
			{
				return eKind;
			}
		}

		public DBExecuteException	InnerDBExecuteException
		{
			get
			{
				return innerDBExecuteException;
			}
		}
	}

}