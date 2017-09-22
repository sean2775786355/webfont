package com.safewind.webfont.dao;

import com.safewind.webfont.bean.Comment;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * create By seanChrist 2017/08/04
 * @function 对字体评论的数据库操作接口
 */
@Repository
public interface CommentDao {
    /**
     * 供用户浏览字体评论的简要信息
     * @return 反回的是字体评论的集合
     */
    public List<Comment> queryCommentList();
    /**
     * 供用户浏览该字体评论的内容
     * @param fontId    该字体的编号
     * @return      字体的一个集合
     */
    public List<Comment> findCommentListByFontId(int fontId);
    /**
     * 添加用户的评论到数据库
     * @param comment
     */
    public void addComment(Comment comment);

    /**
     * 删除用户对字体的评论
     * 需要Comment的属性
     *  username  用户名     限制该用户只能删除自己的评论
     *  frontId   字体编码    锁定用户删除字体评论的范围
     */
    public void deleteComment(Comment comment);

    /**
     * 引用他人的评论
     * @param id     评论的编号
     * @return          他人评论的语句
     */
    public String quoteOthersComment(int id);

    /**
     * 回复他人的评论
     * @param id     评论的编号
     * @return      评论的用户名称
     */
    public String replyOthersComment(int id);



}
