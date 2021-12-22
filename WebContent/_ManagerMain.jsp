<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
		
		
        <!-- Bootstrap CSS -->
        	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
             	 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
             	 crossorigin="anonymous">

        <!-- Jquery와 Ajax 사용       -->
       		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
        <!-- Google Font -->
        	<link rel="preconnect" href="https://fonts.googleapis.com">
			<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
			<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
			
			
			
        	<title>코:꾼의 게임뉴스</title>

        <!-- style -->
        <style type ="text/css">
        
* {
  	box-sizing: border-box;
  	font-family: 'Gowun Batang', serif;
  
	}

body {
  font-family: Arial, Helvetica, sans-serif;
  background-image:url('https://cdn.pixabay.com/photo/2016/10/20/18/35/earth-1756274_1280.jpg');
}


header {
  background-image: url('https://cdn.pixabay.com/photo/2016/10/20/18/35/earth-1756274_1280.jpg');
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

nav{
  height : 50px;
  background-image: url('https://cdn.pixabay.com/photo/2016/10/20/18/35/earth-1756274_1280.jpg');
  padding-left:82%;
  padding-top:5px; 
  
}

.bttn{
	padding-right:10%}

aside {
  float: right;
  width: 20%;
  margin-right: 10px;
  margin-top: 10px;
  min-height: 700px;
  background-color: black;
  padding: 20px;
  border-radius: 10px;
  border-style:solid;
  border-color:white;
	
}


aside ul {
  list-style-type: none;
  padding: 0;
}


article {
  float: left;
  padding: 20px;
  width: 75%;
  margin-top: 10px;
  margin-left:7px;
  background-color: black;
  min-height: 1000px;
  border-radius: 10px;
  }


section::after {
  content: "";
  display: table;
  clear: both;
}


footer {
  background-color: #777;
  text-align: center;
  color: white;
  height:10%;
}

.btn-group{
	float:right;
	margin-right:30px;
}

.btn-group:after{
	clear:both;	
	display: table;}


		
.card-columns{
  flex: auto;
  display:inline-block;
  
}


.card{
	
	flex:1;
  	width: 33%;
  	margin-bottom: 30px !important;
  	background-color:black;
  	color:white;
  	border-color:white;
  	
}

#article-box{
  display:none;
}



@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
        </style>

        <!-- javascript -->
        <script>
       
        					
        function Add_Cards(){
        	
        	var img_url= $('#InputImageUrl').val();
        	var link_url=$('#InputNewsUrl').val();
        	var title = $('#InputNewsTitle').val();
       		var summ = $('#exampleFormControlTextarea1').val();
        	var mpwd = $('#ManaerPWD').val();
       		
       		
       		var temp_html = `<div class="card">
							<a href="` +link_url+ `" style="color:black"><img class="card-img-top" 
								src="`+img_url+`" 
								alt="Card image cap" 
								></a>
							<div class="card-body">
				        		<h5 class="card-title" href="`+link_url+`">`+title+`</h5>
				                <p class="card-text">`+summ+`</p>
				            </div>
				            </div>`;
				            
	       if(mpwd!="1234"){
	    	   alert("관리자번호를 확인해주세요");  
	    	   
	       }else{  
	    	   alert('기사작성완료!');
				$('#cards').prepend(temp_html);}
		
     		
        }
        
        function Box_Clear(){
			$('#InputImageUrl').val('');
			$('#InputNewsUrl').val('');
        	$('#InputNewsTitle').val('');
       		$('#exampleFormControlTextarea1').val('');
        	$('#ManaerPWD').val('');
		}
				      		
		function Article_Show() {
				if($('#article-box').css('display')!='none'){
				   $('#article-box').hide();
				   $('#btn-article-box').text('기사작성');
				                }
				    else{$('#article-box').show();
				         $('#btn-article-box').text('창닫기');
				         Box_Clear();}
				                 } 
            
        </script>


    </head>

    <body>
    
      
        <header>
            <h1 id="heading"><a href="Premain.jsp" style="color:white">코드:꾼스트 게임뉴스</a></h2>
          </header>
          
      
        <nav>
        	<div class="btn-group">
            <button type="button" class="btn btn-dark" style="background-color:black">로그아웃</button>
            &nbsp;&nbsp;
            <button type="button" class="btn btn-dark" style="background-color:black">회원정보</button>
            </div>
        </nav>

        
      <section>
        <aside name="art-box">
          <button id="btn-article-box" class="btn btn-danger" onclick="Article_Show()"><a href="#" style='color:white' >기사작성</a></button> <br>
          <div class="form-article" id="article-box">
            <div>
            <div class="form-group" >
              <br>
              <label for="LabelNewsUrl">기사 URL 입력</label>
              <input type="url" class="form-control" id="InputNewsUrl" aria-describedby="urlHelp" placeholder="기사url 입력">
            </div>
            <div class="form-group" >
              <label for="LabelImageUrl">이미지 주소 입력</label>
              <input type="url" class="form-control" id="InputImageUrl" aria-describedby="urlHelp" placeholder="IMGurl 입력">
            </div>
            <div class="form-group" >
              <label for="Title">기사제목 입력</label>
              <input type="text" class="form-control" id="InputNewsTitle" aria-describedby="urlHelp" placeholder="기사제목 입력">
            </div>
            <div class="form-group">
              <label for="exampleFormControlTextarea1">기사요약</label>
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            
            <div class="form-group">
              <label for="exampleInputPassword1" style="font-size:smaller">관리자확인</label>
              <input type="password" class="form-control" id="ManaerPWD" placeholder="관리자비밀번호">
            </div>
            <button type="submit" class="btn btn-primary" onclick="Add_Cards()">작성완료</button>
            <button type="submit" class="btn btn-primary" onclick="Box_Clear()">clear</button>
          </div>
          </div>



            <div class="button_group">
           
            <hr>
            <br>
            
            <h4><a href="#"style='color:white'>회원관리</a> </h4>
            <br><br><br>
            <h4><a href="#"style='color:white'>자유게시판</a></h4>
            <br><br><br>
            <h4><a href="#"style='color:white'>문의사항</a></h4>
            </div>
        </aside>
        
        <article>
          
                                         
          <div class="card-columns" id="cards">
          
          <div class="card">
              <img class="card-img-top" onclick="https://www.wowtv.co.kr/NewsCenter/News/Read?articleId=A202112100232&t=NN" src="https://img.wowtv.co.kr/wowtv_news/dnrs/20211210/B20211210144858410.jpg" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title"><a href="https://www.wowtv.co.kr/NewsCenter/News/Read?articleId=A202112100232&t=NN" style="color:white">배틀그라운드 공짜로 즐긴다…</a></h5>
                <p class="card-text">크래프톤이 다음달 `PUBG: 배틀그라운드`를 무료 전환한다.</p>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" onclick="https://www.fomos.kr/esports/news_view?lurl=%2Fesports%2Fnews_list%3Fnews_cate_id%3D13&entry_id=106459" src="http://appdata.hungryapp.co.kr/data_file/data_img/202112/20/W163997701870675111.png" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title"><a href="https://www.fomos.kr/esports/news_view?lurl=%2Fesports%2Fnews_list%3Fnews_cate_id%3D13&entry_id=106459" style="color:white">롤 더 넥스트 최종회 예고</a></h5>
                <p class="card-text">라이엇 게임즈가 '글로벌 K-예능의 대표주자' SBS와 함께 제작하고 있는 지상파 최초의 대국민 e스포츠 오디션 '롤 더 넥스트 2021(LoL THE NEXT 2021)'가 최종 우승자를 가리는 결승전의 결과를 공개한다.</p>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" onclick="https://www.inven.co.kr/webzine/news/?news=265318" src="https://image.zdnet.co.kr/2021/12/18/1169cdddb7071684288916562c0579e2-watermark.jpg" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title"><a href="https://www.inven.co.kr/webzine/news/?news=265318" style="color:white">로스트아크, '로아온 윈터' 12월 18일 개최 예고</a></h5>
                <p class="card-text">스마일게이트 RPG(대표 지원길)는 24일 로스트아크의 온라인 모험가 페스티벌 ‘LOA ON WINTER(이하 로아온 윈터)’의 안내 페이지를 오픈하고 행사 일정 및 모험가 참여 이벤트를 공개했다.</p>
              </div>
            </div> 
            <div class="card">
              <img class="card-img-top"  onclick="https://www.edaily.co.kr/news/read?newsId=01200486629280488&mediaCodeNo=258" src="http://cdn.dtoday.co.kr/news/photo/202112/512479_409839_1653.png" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title"><a href="https://www.edaily.co.kr/news/read?newsId=01200486629280488&mediaCodeNo=258" style="color:white">'롤 더 넥스트 2021', D조 최종 우승으로 막내려</a></h5>
                <p class="card-text">라이엇 게임즈가 '글로벌 K-예능의 대표주자' SBS와 함께 제작하고 있는 대국민 e스포츠 오디션 '롤 더 넥스트 2021(LoL THE NEXT 2021)'에서 '왁왁' 금광현이 주장을 맡은 D조가 최종 우승을 차지하며 피날레를 장식했다.</p>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" onclick="http://www.youthdaily.co.kr/news/article.html?no=88697" src="http://www.youthdaily.co.kr/data/photos/20211251/art_16399865114282_97564a.jpg" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title"><a href="http://www.youthdaily.co.kr/news/article.html?no=88697" style="color:white">크래프톤, 배틀그라운드 모바일 12월 크리스마스 이벤트 진행</a></h5>
                <p class="card-text">㈜크래프톤(대표 김창한)의 배틀그라운드 모바일이 12월 업데이트를 통해 신규 모드를 비롯한 다양한 모드를 선보이고, 크리스마스 분위기를 즐길 수 있는 시즌 이벤트를 진행한다고 20일 밝혔다.</p>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" onclick="http://www.gameple.co.kr/news/articleView.html?idxno=201052" src="https://cdn.gameple.co.kr/news/photo/202112/201052_201809_4355.jpg" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title"><a href="http://www.gameple.co.kr/news/articleView.html?idxno=201052" style="color:white"> 로스트아크 금강선 디렉터가 말하는 'MMORPG'와 '낭만'</a></h5>
                <p class="card-text">라이엇 게임즈가 '글로벌 K-예능의 대표주자' SBS와 함께 제작하고 있는 지상파 최초의 대국민 e스포츠 오디션 '롤 더 넥스트 2021(LoL THE NEXT 2021)'가 최종 우승자를 가리는 결승전의 결과를 공개한다.</p>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" onclick="https://www.gamemeca.com/view.php?gid=1672680" src="https://cdn.gamemeca.com/data_center/239/638/20211218194927.jpg" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title"><a href="https://www.gamemeca.com/view.php?gid=1672680" style="color:white">유료 ‘더보기’ 없앤 금강선 ˝이것이 로스트아크식 재투자˝</a></h5>
                <p class="card-text">금강선 디렉터는 18일 로스트아크 공식 유튜브 채널에서 진행한 온라인 발표회 ‘로아온 윈터’를 통해 “이렇게 돈을 벌었으면 환원해야 하지 않겠나. 어떻게 재투자하는지 보여드리겠다”라고 전했다.</p>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" onclick="http://www.gameple.co.kr/news/articleView.html?idxno=201055" src="https://cdn.gameple.co.kr/news/photo/202112/201055_201816_4515.jpg" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title"><a href="http://www.gameple.co.kr/news/articleView.html?idxno=201055" style="color:white"> 롤, 2022 시즌 계획 공개 '아리 스킬 바뀐다'</a></h5>
                <p class="card-text">아리, 잔나 스킬 조정을 비롯해 수정초 추가, 순간이동 주문 변경 등 예고</p>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" onclick="https://www.gamemeca.com/view.php?gid=1672688" src="https://cdn.gamemeca.com/data_center/239/700/20211219195309.jpg" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title"><a href="https://www.gamemeca.com/view.php?gid=1672688" style="color:white">국가대항전 부활, 배틀그라운드 e스포츠 2022년 계획 공개</a></h5>
                <p class="card-text">플레이어언노운스 배틀그라운드(이하 배그) e스포츠의 2022년 계획이 공개됐다. 기본적으론 올해 개최 형식을 그대로 따라가는 와중에 국가대항전인 펍지 네이션스 컵을 추가로 진행될 예정이다.</p>
              </div>
            </div>                    
            
           
            
           </div>
            
          
        </article>
      </section>
      
      <footer>
        <p>저작권 관련 규정 / since 2021 / 관리자 / 문의 번호/ email. </p>
      </footer>
      
        
        
        
        
    
    </body>
</html>