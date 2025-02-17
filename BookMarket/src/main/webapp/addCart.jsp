<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, dto.*, dao.*" %>

<%
    // URL에서 id 파라미터를 가져옴
    String id = request.getParameter("id");
    // id가 null이거나 공백이라면 도서 목록 페이지로 리디렉션
    if(id == null || id.trim().equals("")){
        response.sendRedirect("books.jsp");
        return; // 리디렉션 후 코드 실행을 멈춥니다.
    }
    
    // BookRepository 객체 생성하여 데이터베이스에서 책 정보를 가져옴
    BookRepository dao = BookRepository.getInstance();
    
    // 주어진 id로 도서 정보를 가져옴
    Book book = dao.getBookById(id);
    
    // 해당 id의 도서가 존재하지 않으면 예외 처리 페이지로 리디렉션
    if(book == null){
        response.sendRedirect("exceptionNoBookId.jsp");
        return; // 리디렉션 후 코드 실행을 멈춥니다.
    }
    
    // 모든 도서를 가져오는 과정
    ArrayList<Book> goodsList = dao.getAllBooks();
    Book goods = new Book();
    
    // goodsList에서 선택한 도서를 찾음
    for(int i = 0; i < goodsList.size(); i++){
        goods = goodsList.get(i);
        if(goods.getBookId().equals(id)){
            break;
        }
    }
    
    // 세션에서 장바구니(cartlist)를 가져옴. 만약 장바구니가 없다면 새로 생성
    ArrayList<Book> list = (ArrayList<Book>)session.getAttribute("cartlist");
    if(list == null){
        list = new ArrayList<Book>();
        session.setAttribute("cartlist", list);
    }
    
    // 장바구니에 이미 선택한 도서가 있는지 확인
    int cnt = 0;
    Book goodsQnt = new Book();
    for(int i = 0; i < list.size(); i++){
        goodsQnt = list.get(i);
        // 도서 id가 일치하는 경우 수량을 증가시킴
        if(goodsQnt.getBookId().equals(id)){
            cnt++;
            int orderQuantity = goodsQnt.getQuantity() + 1;
            goodsQnt.setQuantity(orderQuantity);
        }
    }
    
    // 장바구니에 해당 도서가 없다면 새로 추가
    if(cnt == 0){
        goods.setQuantity(1); // 기본 수량 1로 설정
        list.add(goods); // 장바구니에 추가
    }
    
    // 도서 페이지로 리디렉션 (id를 URL 파라미터로 전달)
    response.sendRedirect("book.jsp?id=" + id);
%>
