package com.project.just_meet.repository;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.project.just_meet.model.Event;

@Repository
public class EventDaoImpl extends JdbcDaoSupport implements EventDao {

	@Autowired
	DataSource dataSource;

	@PostConstruct
	private void initialize() {
		setDataSource(dataSource);
	}

	@Override
	public void insertEvent(Event evento) {
		String sql = "INSERT INTO event " + "(id, cost, participants, participan, title, place, "
				+ "street, province, description, category, date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		getJdbcTemplate().update(sql,
				new Object[] { evento.getId(), evento.getCost(), evento.getParticipants(), evento.getParticipan(),
						evento.getTitle(), evento.getPlace(), evento.getStreet(), evento.getProvince(),
						evento.getDescription(), evento.getCategory(), evento.getDate() });
	}

	@Override
	public void deleteEventById(int id) {
		String sql = "DELETE FROM event WHERE Id = ?";
		getJdbcTemplate().update(sql, new Object[] { id });

	}

	@Override
	public Event findByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}
}