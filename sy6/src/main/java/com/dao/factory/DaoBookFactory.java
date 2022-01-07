package com.dao.factory;

import com.dao.impl.IBookDao;
import com.dao.util.BookDaoUtil;

public class DaoBookFactory {
	public static IBookDao getBookDaoInstance() {
		return new BookDaoUtil();
	}
}
