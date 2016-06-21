package org.lee.mapper;

import java.util.HashMap;
import java.util.List;

import org.lee.model.Friend;


public interface FriendMapper {

	int getFriendCount(HashMap<String, Object> paramMap);

	List<Friend> getFriendList(HashMap<String, Object> paramMap);

	int addFriend(Friend Friend);

	int editFriend(Friend Friend);

	Friend getFriendById(String id);

	int deleteFriend(String id);

	List<Friend> getAllFriendList();
	
}
