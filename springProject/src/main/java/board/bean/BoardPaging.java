package board.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class BoardPaging {
	private int currentPage;
	private int pageBlock; 
	private int pageSize;
	private int totalArticle;
	private StringBuffer pagingHTML;

	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		int totalPage = (totalArticle+pageSize-1) / pageSize;
		int startPage = (currentPage-1)/pageBlock * pageBlock +1; 
		int endPage = startPage + pageBlock -1;
		if(endPage > totalPage) endPage = totalPage;
		if(startPage > pageBlock) pagingHTML.append("[ <a id='paging' href='../board/boardList?pg="+ (startPage-1) +"' class="+(startPage-1)+"> 이전 </a> ]");
		
		for(int i = startPage; i <= endPage ; i++) {
			if(i == currentPage) pagingHTML.append("[ <a id='currPaging' href='../board/boardList?pg="+ i +"'>"+ i +"</a> ]"); //
			else pagingHTML.append("[ <a id = 'paging' href='../board/boardList?pg="+ i +"'>"+ i +"</a> ]"); //		
		}
		
		if(endPage < totalPage) pagingHTML.append("[ <a id='paging' href='../board/boardList?pg="+ (endPage+1) +"'> 다음 </a> ]"); //
	}
	
//강사님 	
	public void makeSearchPagingHTML() {
		pagingHTML = new StringBuffer();
		int totalPage = (totalArticle+pageSize-1) / pageSize;
		int startPage = (currentPage-1)/pageBlock * pageBlock +1; 
		int endPage = startPage + pageBlock -1;
		if(endPage > totalPage) endPage = totalPage;
		//<span>: width 속성 없음. 안에 들어오는 글자 수 만큼 길이를 잡는다. 
		//페이지에 매번 pg(i), searchOp, searchWord를 실어 주어야 하는 번거로움 => javascript 함수로 넘겨서 처리한다.  
		
		if(startPage > pageBlock) pagingHTML.append("[ <span id='paging' class='"+(startPage-1)+"' onclick=search("+(startPage-1)+")> 이전 </span> ]");		
		for(int i = startPage; i <= endPage ; i++) {
			if(i == currentPage) pagingHTML.append("[ <span id='currPaging' class='"+i+"' onclick=search("+i+")>"+ i +"</span> ]"); //onclick=location.href='../board/boardSearch?pg="+ i +"'
			else pagingHTML.append("[ <span id = 'paging' class='"+i+"' onclick=search("+i+")>"+ i +"</span> ]");			
		}
		
		if(endPage < totalPage) pagingHTML.append("[ <span id='paging' class='"+ (endPage+1) +"' onclick=search("+(endPage+1)+")> 다음 </span> ]");
	
	}
}
