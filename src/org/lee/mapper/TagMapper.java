package org.lee.mapper;

import java.util.HashMap;
import java.util.List;

import org.lee.model.Article;
import org.lee.model.Tag;


public interface TagMapper {

	int getTagCount(HashMap<String, Object> paramMap);

	List<Tag> getTagList(HashMap<String, Object> paramMap);

	int addTag(Tag tag);

	int deleteTag(String id);

	Tag getTagById(String id);

	int editTag(Tag tag);

	List<Tag> getAllTagList();

	List<Tag> getArticleTagList(String id);

	Tag getTagByName(String tagName);

	List<Article> getLastTagArticleList(HashMap<String, Object> paramMap);

}
