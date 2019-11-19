<%@page import="dataDto.FreeBoardDto"%>
<%@page import="dataDb.FreeBoardDB"%>
<%@page import="dataDb.QnaDb"%>
<%@page import="dataDb.MemberDB"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.List"%>
<%@page import="dataDto.GuestBookDto"%>
<%@page import="dataDb.GuestBookDB"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Fourket : 커뮤니티</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>   <!-- jquery 3.2.1 cdn -->
<link href="css/community.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<%
	String myid = (String)session.getAttribute("id");
	String loginok=(String)session.getAttribute("loginok");

	MemberDB    mdb = new MemberDB();
	QnaDb       qdb = new QnaDb();
	FreeBoardDB fdb = new FreeBoardDB();
	
	String name = fdb.getName(myid);
	String nickname = qdb.getNickname(myid);
	
	int pageNum = 1;
	
	
%>
<script>
	
	
	
	$(function(){
		freeboard_list(1);
    	
        $("#qaboard").hide();
        $("#guestboard").hide();
      
        
        $("#free").click(function(){
           $("#freeboard").show(); 
            $("#qaboard").hide();
            $("#guestboard").hide();
            
        });
        
        $("#qa").click(function(){
           $("#qaboard").show(); 
            $("#freeboard").hide();
            $("#guestboard").hide();
            qaboard_list();
        });
        
        $("#guest").click(function(){
           $("#guestboard").show(); 
            $("#qaboard").hide();
            $("#freeboard").hide();
            guestbook_list();
        }); 
        
        
        
        $("#menu_but").click(function(){
	        $(".side_menu").css("right","0px");
	    }) ;
	 
	     $("#close_but").click(function(){
	        $(".side_menu").css("right","-350px"); 
	     });
	     
	     
	     
	     $("#enter_but").click(function(){
	    	 
	    	 var subject = $('#subject').val();
	    	 
	    	 if(subject == "")
    		 {
	    		alert("내용을 입력해주세요");
	    		return false;
    		 }
	    	 
	    	 
	    	 $.ajax({
	    		type: "post",
	    		url: "guestbook_insert.jsp",
	    		dataType: "xml",
	    		data: {"subject":subject},
	    		
	    		success : function(data){
					$("#subject").val("");
					$("#subject").focus();
					// 추가후 메모리스트 다시 출력
					guestbook_list();
				},
				
				statusCode : {
					404: function(){
						alert("url을 찾을수 없어요");
					},
					500: function(){
						alert("서버 오류");
					}
				}
				
	    	 });
	     });
	 
	     
	     $("#qnawrite_but").click(function(){
	     	$("#qnawrite_form").show();
	     	$("#qna_list").hide();	   
	      });
	      
	      $("#qnawrite_close").click(function(){
	     	$("#qnawrite_form").hide();
	     	$("#qna_list").show();
	      });
	     
	   
	     
	    
	     
	    
    });
	
	 function guestbook_list()
     {
    	 $.ajax({
				type: "get",
				url: "guestbook_list.jsp",
				dataType: "xml",
				
				success: function(data)
				{
					var str = "";
					
					$(data).find("memodata").each(function(){
						var s = $(this);
						str += "<div>";
						str += "    <p class='name_date'>";
						str += "        <span>" + s.find("nickname").text() + "</span>";
						str += "        <span>" + s.find("wdate").text() + "</span>";
						str += "    </p>";
						str += "    <p>" + s.find("subject").text() + "</p>";
						str += "</div>";
					});
					$("#guest_list").html(str);
					
				},
				statusCode : {
					404: function(){
						alert("url을 찾을수 없어요");
					},
					500: function(){
						alert("서버 오류");
					}
				}
			});
     }
	 
	 function freeboard_list(item)
	 {
		 $.ajax({
			type: "get",
			url: "freeboard_list.jsp",
			dataType: "xml",
			data : {"pageNum":item},
			
			success : function(data)
			{
				var str = "";
				
				
				str += '<table id="freetable">'; 
				str += '    <tr class="title" style="height: 50px;">';
				str += '        <td style="width: 80px;">번호</td>';
				str += '        <td style="width: 1000px;">제목</td>';
				str += '        <td style="width: 100px;">이름(닉네임)</td>';
				str += '        <td style="width: 90px;">작성일</td>';
				str += '        <td style="width: 80px;">조회수</td>';
				str += '    </tr>';
				
				$(data).find("freeboard").each(function(){
					var s = $(this);
					
					str += '<tr class="info" style="height: 50px;" onclick="freeboard_detail(this)"  num="'+s.find('num').text()+'">'; 
					str += '    <td>'+ s.find('num').text() +'</td>';	
					str += '    <td>'+ s.find('subject').text() +'</td>';
					str += '    <td>'+ s.find('name').text() +'</td>';
					str += '    <td>'+ s.find('wdate').text() +'</td>';
					str += '    <td>'+ s.find('readcount').text() +'</td>';
					str += '</tr>';
				});
				
				var s2 = $(data).find("pageing");
				var stpage = s2.find("stpage").text();
				var enpage = s2.find("enpage").text();
				var cupage = s2.find("cupage").text();
				var ttpage = s2.find("ttpage").text();
				
				str += '</table>';
				str += '<div class="but_line">';
				str += '    <p id="write_but" onclick="write_form()">글쓰기</p>';
				str += '</div>';
				str += '<div class="pagenation">';
				str += '    <ul>';
				if( stpage > 1)
				{
					str += '    <li>';
					str += '        <a id="prevnum" prevnum="1" onclick="freeboard_prev(this)">이전</a>';
					str += '    </li>';	
				}
				for(var i = stpage ; i <= enpage ; i++)
				{
					if(i == cupage)
					{
						str += '<li>';
						str += '    <a onclick="freeboard_paging(this)" class="page_a" style="color:red;">'+ i +'</a>';
						str += '</li>';		
					}
					else
					{
						str += '<li>';
						str += '    <a onclick="freeboard_paging(this)" class="page_a" style="color:black;">' + i + '</a>';
						str += '</li>';	
					}
				}
				
				if( enpage < ttpage )
				{
					
					str += '   <li>';
					str += '        <a id="nextnum" nextnum="1" onclick="freeboard_next(this)">다음</a>';
					str += '   </li>';	
					
					
				}
				str += '   </ul>';
				str += '</div>';
				
				$("#freeboard").html(str);

				var prevpage = Number(stpage) - Number(1);
				var nextpage = Number(enpage) + Number(1);
			
				$("#prevnum").attr("prevnum",prevpage);
				$("#nextnum").attr("nextnum",nextpage);
			},
			
			statusCode : {
				404: function(){
					alert("url을 찾을수 없어요");
				},
				500: function(){
					alert("서버 오류");
				}
			}
		 });
	 }
	 
	 function freeboard_paging(item)
	 {
		 var pnum = $(item).text();
		 
		 freeboard_list(pnum);
	 }
	 
	 function freeboard_prev(item)
	 {
		 var prevnum = $(item).attr("prevnum");
		 freeboard_list(prevnum);
	 }
	 
	 function freeboard_next(item)
	 {
		 var nextnum = $(item).attr("nextnum");
		 freeboard_list(nextnum);
	 }
	 
	 
	 
	 
	 
	 function freeboard_detail(item)
	 {
		 var num = $(item).attr("num");
		 
		 if( <%=mdb.idSearch(myid)%> == true)
		 {
			 $.ajax({
					type: "get",
					url: "freeboard_detail.jsp",
					dataType: "xml",
					data: {"num":num},
					
					success : function(data)
					{
						var str = "";
						
						$(data).find("freeboard").each(function(){
							
							var s = $(this);
							var cnum = s.find("num").text();
							
							str += '<div class="content_show">';
							str += '    <div class="content_title">';
							str += '        <p class="title_text">'+ s.find("subject").text() +'</p>';
					        str += '        <p>자유 게시판</p>';
					        str += '        <p>'+ s.find("wdate").text() +'</p>';
					        str += '        <div class="writer">';
					        str += '            <p>'+ s.find("name").text() +'</p>';
					        str += '        </div>';
					        str += '    </div>';
					        str += '    <div class="content_text">';
					        str += s.find("content").text();
					        str += '    </div>';
					        str += '    <div class="comment">';
					        str += '        <div class="commnet_st">';
					        str += '        <p>댓글 갯수</p>';
					        str += '        <p>등록순</p>';
					        str += '        <p>조회수'+ s.find("readcount").text() +'</p>';
					        str += '        <p>좋아요</p>';
					        str += '    </div>';
					        str += '    <div class="comment_text">';
					        str += '        <textarea placeholder="댓글입력"></textarea>';
					        str += '        <p>등록</p>';
							str += '    </div>';			                
					        str += '</div>';
					        str += '<div class="show_butlist">';
					        
					        if(s.find("mid").text() == "<%=myid%>" )
				        	{
					        	str += '    <p onclick="free_update_show(this)">수정</p>';
					        	str += '    <p onclick="free_delete(this)" num="'+ s.find("num").text() +'">삭제</p>';
				        	}else{
				        		str += '';
				        	}
					        str += '        <p onclick="freeboard_list(1)">목록</p>';
					        str += '        <p id="nav_write" onclick="write_form()">글쓰기</p>';
					        str += '    </div>';
					        str += '</div>';
						});
						$("#freeboard").html(str);
					},
					
					statusCode : {
						404: function(){
							alert("url을 찾을수 없어요");
						},
						500: function(){
							alert("서버 오류");
						}
					}
				 }); 
		 }
		 else{
			 alert("로그인을 해야 볼수있습니다");
			 return false;
		 }
		 
		 
	 } 
	 
	 function write_form()
	 {
		 if( <%=mdb.idSearch(myid)%> == true)
		 {
		 	var str = '';
	    	
	    	str += '<div class="freeboard_write" id="write_form">';
	    	str += '    <div class="title">';
	    	str += '        <p>게시판</p> ';
	    	str += '        <p>자유 게시판</p>';
	    	str += '    </div>';
	    	str += '    <div class="title">';
	    	str += '        <p>제목</p>';
	    	str += '        <p>';
	    	str += '        <input type="text" placeholder="제목을 입력하세요." id="free_subject">';
	    	str += '        </p>';
	    	str += '    </div>';
	    	str += '    <textarea id="free_text"></textarea>';
	    	str += '    <div class="but_line">';
	    	str += '        <p id="write_close" onclick="freewrite_close()">취소</p>';
	    	str += '        <p id="freewrite_sub" onclick="freewrite()">확인</p>';
	    	str += '    </div>';
	    	str += '</div>';
	    	
	    	$("#freeboard").html(str);
		 }
		 else
		 {
			alert("로그인을 해야 글쓰기를 하실수 있습니다.");
			return false;
		 }
		 	
	 }
	 
	 function freewrite()
	 {
	 	var freesubject = $('#free_subject').val();
    	var freetext = $('#free_text').val();
    	
   		if(freesubject == "" || freetext == "")
 		{
	    		alert("제목과 내용을 모두 입력해주세요");
	    		return false;
 		}
   	
    	$.ajax({
    		type: "post",
    		url: "freeboard_insert.jsp",
    		dataType: "xml",
    		data: {"freesubject":freesubject,"freetext":freetext},
    		
    		success : function(data){
    			$('#free_text').val("");
    			$('#free_subject').val("");
    			$("#free_subject").focus();
    			
    			freeboard_list(1);
    			
    		},
    		statusCode : {
				404: function(){
					alert("url을 찾을수 없어요");
				},
				500: function(){
					alert("서버 오류");
				}
			}
			
    	});
    		
	 	$("#write_form").hide();
	 	freeboard_list(1);
	 }
	 
	 function freewrite_close()
	 {
	 	freeboard_list(1); 
	 }
	 
	 function free_delete(d_num)
	 {
		 var num = $(d_num).attr("num");
		 
		 $.ajax({
				type: "get",
				url: "freeboard_delete.jsp",
				dataType: "xml",
				data: {"num":num},
				
				success : function(data)
				{
					alert("삭제 되었습니다.");
					freeboard_list(1); 
				},
				statusCode : {
					404: function(){
						alert("url을 찾을수 없어요");
					},
					500: function(){
						alert("서버 오류");
					}
				}
		 });
	 }
	 
	 function free_update_show(u_num)
	 {
		 var num = $(u_num).prev().attr("num");
		 
		 $.ajax({
			type: "get",
			url: "freeboard_detailup.jsp",
			dataType: "xml",
			data: {"num":num},
			
			success : function(data)
			{
				var str = "";
				
				$(data).find("freeboard").each(function(){
					var s = $(this);
					
					str += '<div class="content_show">';
					str += '    <div class="content_title">';
			        str += '        <p>자유 게시판</p>';
			        str += '    <div class="writer">';
			        str += '        <input id="send_subject" type="text" class="title_text" value="'+ s.find("subject").text()  +'">';
			        str += '    </div>';
			        str += '    </div>';
			        str += '    <div class="content_text">';
			        str += '        <textarea id="send_content">' + s.find("content").text() + '</textarea>';
			        str += '    </div>';
			        str += '    <div class="show_butlist">';
			        str += '        <p onclick="free_update(this)" num="'+ s.find("num").text() +'">확인</p>';
			        str += '        <p onclick="freeboard_list(1)">목록</p>';
			        str += '        <p id="nav_write" onclick="write_form()">글쓰기</p>';
			        str += '    </div>';
			        str += '</div>';
				});
				$("#freeboard").html(str);
			},
			
			statusCode : {
				404: function(){
					alert("url을 찾을수 없어요");
				},
				500: function(){
					alert("서버 오류");
				}
			}
		 });
	 } 
	 
	 function free_update(u_num)
	 {
		 var num = $(u_num).attr("num");
		 var subject = $("#send_subject").val();
		 var freecontent = $("#send_content").val();
		 
		 $.ajax({
				type: "get",
				url: "freeboard_update.jsp",
				dataType: "xml",
				data: {"num":num,"subject":subject,"freecontent":freecontent},
				
				success : function(data)
				{
					alert("수정이 완료 되었습니다.");
					freeboard_list(1); 
				},
				statusCode : {
					404: function(){
						alert("url을 찾을수 없어요");
					},
					500: function(){
						alert("서버 오류");
					}
				}
		 });
	 }
	 
	 /* qna 게시판 */ 
    
    /* qna 리스트 */ 
    function qaboard_list()
    {
       $.ajax({
         type: "get",
         url: "qna_list.jsp",
         dataType: "xml",
         
         success : function(data)
         {
            var str = "";
            str += "<table id='qnatable'>";
            str += "<tr class='title' style='height: 50px;'>";
            str += "<td style='width: 80px;'>번호</td>";
            str += "<td style='width: 1000px;'>제목</td>";
            str += "<td style='width: 100px;'>이름(닉네임)</td>";
            str += "<td style='width: 90px;'>작성일</td>";
            str += "<td style='width: 80px;''>답변여부</td>";
            str += "</tr>";
            $(data).find("qnadata").each(function(){
               var s = $(this);
               
               str += "<tr class='info' style='height: 50px;'>";
               str += "<td>"+s.find("num").text()+"</td>";
               str += "<td class='qnatitle' id='qnaview_open' onclick='qnaview_open(this)' num='"+s.find('num').text() +"'>"+s.find("title").text()+"</td>";
               str += "<td>"+s.find("nickname").text()+"</td>";
               str += "<td>"+s.find("writedate").text()+"</td>";
               /* str += "<td>"+s.find("replyok").text()+"</td><br>"; */
               if(s.find("replyok").text()=="null")
                  {
                     str +="<td class='qnaok' onclick='qnaview_recontent(this)' num='"+s.find('num').text() +"'>Χ</td>";
                  }
               else
                  {
                     str +="<td class='qnaok' onclick='qnaview_open(this)' num='"+s.find('num').text() +"'>○</td>";
                  }
               str += "</tr>";
               
               
            });
            str += "</table>";
            str += "<div class='but_line' id='qnawrite_but' onclick='qnawrite_form()'>";
            str += "<p>글쓰기</p>";
            str += "</div>";
            $("#qna_list").html(str);
         },
         
         statusCode : {
            404: function(){
               alert("url을 찾을수 없어요");
            },
            500: function(){
               alert("서버 오류");
            }
         }
       });
    }
    
    
    
    
    
    /* qna 글쓰기 버튼 */
    function qnawrite_btn()
     {
       qnawrite_form();
     }
    
    /* qna 글쓰기 폼 */
    function qnawrite_form()
    {
       if(<%=mdb.idSearch(myid)%> == true)
       {
          $.ajax({
               type: "get",
               url: "qna_nickname.jsp",
               dataType: "xml",
            
               success : function(data)
               {
                   var str = "";
                   
                   str +="<div class='qnaboard_write'>";
                   str +="<div class='title'>";
                   str +="<p>게시판</p>";
                   str +="<p>Q & A</p>";
                   str +="</div>";
                   str +="<div class='title'>";
                   str +="<p>닉네임</p>";
                   $(data).find("qna").each(function(){
                      var s = $(this);
                      str +="<p>"+s.find("nickname").text()+"</p>";    
                   });
                                 
                   str +="</div>";
                   str +="<div class='title'>";
                   str +="<p>제목</p>";
                   str +="<input id='qnawrite_title' type='text' placeholder='제목을 입력하세요.'>";
                   str +="</div>";
                   str +="<textarea id='qnawrite_content' placeholder='내용을 입력하세요.'></textarea>";
                   str +="<div class='but_line'>";
                   str +="<p id='qnawrite_close' onclick='qnawrite_close()'>취소</p>";
                   str +="<p id='qnawrite_save' onclick='qnawrite_save()'>저장</p>";
                   str +="</div>";
                   str +="</div>";
             
                   $("#qna_list").html(str);
               }
                
          });
       }
       else
       {
         alert("로그인이 필요합니다.");
          return false;
       }
       
       
    }
    
    /* qna 글쓰기 폼에서 취소버튼 */
    function qnawrite_close()
    {
       qaboard_list();
    }
    
    /* qna 글저장 */ 
    function qnawrite_save()
    {
       var nickname = $("#qnawrite_nickname").val();
        var title = $("#qnawrite_title").val();
        var content = $("#qnawrite_content").val();
        //alert(nickname+","+title+","+content);
        
        
        if(title == "" || nickname == "" || content == "")
       {
          alert("내용을 입력해주세요");
          return false;
       }
        
        
        $.ajax({
          type: "post",
          url: "qnacontent_insert.jsp",
          dataType: "xml",
          data: {"nickname":nickname,"title":title,"content":content},
          
          success : function(data){
            // 추가후 qnaboard리스트 다시 출력
            qaboard_list();
         },
         
         statusCode : {
            404: function(){
               alert("url을 찾을수 없어요");
            },
            500: function(){
               alert("서버 오류");
            }
         }
         
        });
    }
    
    /* qna 글보기 */ 
    function qnaview_open(qnanum)
    {
        var num=$(qnanum).attr("num");
        if(<%=mdb.idSearch(myid)%> == true)
        {
          $.ajax({
               type: "post",
              url: "qna_detail.jsp",
              dataType: "xml",
              data: {"num":num},
              success : function(data){
                 var str = "";
                 $(data).find("qnaview").each(function(){
                   var s = $(this);
                   
                   str +="<div class='qnaboard_write'>";
                   str +="<div class='title'>";
                   str +="<p>게시판</p>";
                   str +="<p>Q & A</p>";
                   str +="</div>";
                   str +="<div class='title'>";
                   str +="<p>닉네임</p>";
                   str +="<p>"+s.find('nickname').text()+"</p>";
                   str +="</div>";
                   str +="<div class='title'>";
                   str +="<p>제목</p>";
                   str +="<p>"+s.find('title').text()+"</p>";
                   str +="</div>";
                   str +="<div class='title'>";
                   str +="<p>작성일</p>";
                   str +="<p>"+s.find('writedate').text()+"</p>";
                   str +="</div>";
                   str +="<p id='qnawrite_content'>"+s.find('content').text()+"</p>";
                   if(s.find('replyok').text()=="0")
                      {
                         str +="<div class='title'>";
                         str +="<p>답변일</p>";
                         str +="<p>"+s.find('replydate').text()+"</p>";
                         str +="</div>";
                         str +="<p id='qnawrite_recontent'>"+s.find('recontent').text()+"</p>";
                         str +="<div class='but_line'>";
                         str +="<p id='qnaview_close' onclick='qnaview_close()'>목록으로</p>";
                         str +="</div>";
                         str +="</div>";
                      }
                   else
                      {
                          str +="<div class='but_line'>";
                          str +="<p id='qnaview_close' onclick='qnaview_close()'>목록으로</p>";
                         str +="</div>";
                         str +="</div>";
                      }
                  
                   
                });
                 $("#qna_list").html(str);
               
             },
            
            statusCode : {
               404: function(){
                  alert("url을 찾을수 없어요");
               },
               500: function(){
                  alert("서버 오류");
               }
            }
            
           });
        }
        else
        {
          alert("로그인이 필요합니다.");
          return false;
        }
        
      
      
    }
    
    /* qna 답글 달기 */ 
    function qnaview_recontent(qnanum)
    {
        var num=$(qnanum).attr("num");
        var admin="<%=myid%>";   
        
       if(admin == "hyu")
        {
          $.ajax({
               type: "post",
              url: "qna_detail.jsp",
              dataType: "xml",
              data: {"num":num},
              success : function(data){
                 var str = "";
                 $(data).find("qnaview").each(function(){
                   var s = $(this);
                   
                   str +="<div class='qnaboard_write'>";
                   str +="<div class='title'>";
                   str +="<p>게시판</p>";
                   str +="<p>Q & A</p>";
                   str +="</div>";
                   str +="<div class='title'>";
                   str +="<p>닉네임</p>";
                   str +="<p>"+s.find('nickname').text()+"</p>";
                   str +="</div>";
                   str +="<div class='title'>";
                   str +="<p>제목</p>";
                   str +="<p>"+s.find('title').text()+"</p>";
                   str +="</div>";
                   str +="<div class='title'>";
                   str +="<p>작성일</p>";
                   str +="<p>"+s.find('writedate').text()+"</p>";
                   str +="</div>";
                   str +="<textarea id='qnawrite_content'>"+s.find('content').text()+"</textarea>";
                   // 답글 영역
                   str +="<div class='title'>";
                   str +="<p><b>답글 내용</b></p>";
                   /*  str +="<p>"+s.find('replydate').text()+"</p>"; */
                   str +="</div>";
                   str +="<textarea id='qnawrite_recontent' placeholder='내용을 입력하세요.'></textarea>";
                   str +="<div class='but_line'>";
                   str +="<p id='qnawrite_close' onclick='qnawrite_close()'>취소</p>";
                   str +="<p id='qnawrite_save' onclick='qnarecontent_save(this)' num='"+s.find('num').text() +"'>답글저장</p>";
                   str +="</div>";
                   str +="</div>";
                  
                   
                });
                 $("#qna_list").html(str);
               
             },
            
            statusCode : {
               404: function(){
                  alert("url을 찾을수 없어요");
               },
               500: function(){
                  alert("서버 오류");
               }
            }
            
           });
        }
       else
       {
          alert("관리자만 답변할 수 있습니다.");
            return false;
       }
        
      
      
    }
    
    /* qna 답글저장 */ 
    function qnarecontent_save(qnanum)
    {
       var num=$(qnanum).attr("num");
       var recontent = $("#qnawrite_recontent").val();
        //alert(recontent);
        
        
        if(recontent == "")
       {
          alert("내용을 입력해주세요");
          return false;
       }
        
        
        $.ajax({
          type: "post",
          url: "recontent_insert.jsp",
          dataType: "xml",
          data: {"num":num,"recontent":recontent},
          
          success : function(data){
            // 추가후 qnaboard리스트 다시 출력
            qaboard_list();
         },
         
         statusCode : {
            404: function(){
               alert("url을 찾을수 없어요");
            },
            500: function(){
               alert("서버 오류");
            }
         }
         
        });
    }
    
    /* qna 글보기 목록버튼 */ 
    function qnaview_close()
    {
       qaboard_list();
    }
    
    

     
</script>
</head>
<body>
<%
   GuestBookDB db = new GuestBookDB();

   List<GuestBookDto> list = new Vector<>();
%>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<div class="container">
		<div class="cm_title">
			<p>Fourket Commnuity</p>
		</div>
		<div class="text_list_but">
			<p id="free">자유게시판</p>
			<p id="qa">Q&A</p>
			<p id="guest">방명록</p>
		</div>
		<div class="text_list" id="freeboard">
			<div class="free_list" id="free_list">
				
			</div>
		</div>
		
		<div class="text_list" id="qaboard">
			<div class="qna_list" id="qna_list">
			</div>
		
		</div>
		<div class="text_list" id="guestboard">
			<div class="text_enter">
	           <textarea class="lineword" id="subject" placeholder="한줄짜리 글을 남겨보세요" autofocus="autofocus"></textarea>
	            <!-- <p class="enter_but" id="enter_but">메모하기</p> -->
	            <button class="enter_but" id="enter_but">메모하기</button>
	       </div>
	       <div id="guest_list" class="guest_list">
	       		
	       </div>
		</div>
	</div>
</body>
</html>