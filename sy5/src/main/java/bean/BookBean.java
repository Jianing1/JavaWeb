package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BookBean {
	private String bookName = null;
	private double bookPrice = 0;
	private String author = null;
	private String bookConcern = null;
	private int counts = 0;

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public double getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(double bookPrice) {
		this.bookPrice = bookPrice;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getBookConcern() {
		return bookConcern;
	}

	public void setBookConcern(String bookConcern) {
		this.bookConcern = bookConcern;
	}

	public int getCounts() {
		return counts;
	}

	public void setCounts(int counts) {
		this.counts = counts;
	}


	public BookBean() {

	}

	public int addBook(BookBean book) {
		Connection connection = db.DbUtil.getConnection();
		PreparedStatement psPreparedStatement = null;
		ResultSet resultSet = null;
		int count = 0;
		try {
			String sql = "insert into books(name,price,author,bookConcern,counts) values(?,?,?,?,?)";
			psPreparedStatement = connection.prepareStatement(sql);

			psPreparedStatement.setString(1, book.getBookName());
			psPreparedStatement.setDouble(2, book.getBookPrice());
			psPreparedStatement.setString(3, book.getAuthor());
			psPreparedStatement.setString(4, book.getBookConcern());
			psPreparedStatement.setInt(5, book.getCounts());
			count = psPreparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			try {

				if (psPreparedStatement != null) {
					psPreparedStatement.close();
				}
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return count;
	}
		public ResultSet showBook() {
		Connection connection2 = db.DbUtil.getConnection();
		PreparedStatement psPreparedStatement2 = null;
		ResultSet rsResultSet2 = null;

		try {
			String sql = "SELECT * FROM books";
			psPreparedStatement2 = connection2.prepareStatement(sql);
			rsResultSet2 = psPreparedStatement2.executeQuery();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rsResultSet2;
	}
}
