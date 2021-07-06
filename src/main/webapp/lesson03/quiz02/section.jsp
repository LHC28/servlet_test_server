<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
    
<%
//아티스트 정보 

 Map<String, Object> artistInfo = new HashMap<>();
 artistInfo.put("name", "아이유");
 artistInfo.put("debute", 2008);
 artistInfo.put("agency", "EDAM엔터테인먼트");
 artistInfo.put("photo", "https://w.namu.la/s/3ca92265fffe4dd38a729df3df7dd41ea3ef12b72383958c8fd0bea79ffaa0331810fb8bea8ba09156d69e5f792eef522dd8eb932389ed972ff233c2c9adb34fc92d9ebceb03cdd9ae4ff0093f88e0e7bbe21d3251555878b233fa2a5f6af14544c8dd26f4cb608d0b0101c91fc37dce");


//아이유 노래 리스트 
 List<Map<String, Object>> musicList = new ArrayList<>();

 Map<String, Object> musicInfo = new HashMap<>();
 musicInfo.put("id", 1);
 musicInfo.put("title", "팔레트");
 musicInfo.put("album", "Palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 2);
 musicInfo.put("title", "좋은날");
 musicInfo.put("album", "Real");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
 musicInfo.put("time", 233);
 musicInfo.put("composer", "이민수");
 musicInfo.put("lyricist", "김이나");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 3);
 musicInfo.put("title", "밤편지");
 musicInfo.put("album", "palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
 musicInfo.put("time", 253);
 musicInfo.put("composer", "제휘,김희원");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 4);
 musicInfo.put("title", "삐삐");
 musicInfo.put("album", "삐삐");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://ww.namu.la/s/5ea8ba97baf8af3cc13f2972d9d23bcd17e19b8b8a96ce86d50c4bd03ad4df30321fc7e012738ad4b00c50642195ef7a68ff484ad760b15ff46bb1dc45ffb3fc399e4345c5d4dd2240820b59f3a573a57f84b8a6a2e4fb26ce5e81ad66d85f77debc979900275f6cf7a51386c8c39aa9");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "이종훈");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 5);
 musicInfo.put("title", "스물셋");
 musicInfo.put("album", "CHAT-SHIRE");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://w.namu.la/s/4a817b8f4ec9caca4027a6991651a401d683a7691f1926bd60e59908f306d439f7cc251af5ef263a6f0a249e831d5d9cf641855bf590dadd86869ff941aad8dc236bc91bac89f84cff60c981d8d6c85f57a2ff4df00b5efe3bbc10e9745ce13571eda48f1912435423317450475d6ffe");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 6);
 musicInfo.put("title", "Blueming");
 musicInfo.put("album", "Love poem");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);
%>
<%-- list값을 다른 것들처럼 jsp파일을 만들어서 가져오는 방식을 활용할 수 있다. --%>
<%
String title = request.getParameter("title");
// 제목을 입력하거나 클릭하기 때문에 가져오는 값은 하나면 충분하다...
// out.print를 가지고 값이 잘 출력되는지 확인하면서 하는 것도 좋다.
%>
<%
// 클릭하거나 검색하지 않았을 때
if(title==null){
%>
<section class="content d-flex">
	
	<div class="picture d-flex align-items-center justify-content-center">
		<img src="https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg" alt="사진" width="150px" height="150px">
	</div>
	<%-- 블록 태그를 활용할 수도 있다. 여기서는 인라인 태그를 사용하여 <br>을 통해 줄바꿈을 하였다. --%>
	<div class="pictureExplain m-3">
		<h3><b><%=artistInfo.get("name") %></b></h3>
		<b><%=artistInfo.get("agency") %></b><br>
		<b><%=artistInfo.get("debute") %>데뷔</b>
	</div>
</section>

<%
// 제목을 검색하거나 클릭한 경우
// map형태의 target을 만들어 저장해주는 방법도 있다. 같은 id값인지 비교하는 방식으로 확인한다.
// 여기서 검색과 클릭하는 때 넘어오는 값이 모두 title이기 때문에 한 가지 조건으로 가능했다.
}else{
	for(int i=0; i<musicList.size(); i++){
		if(musicList.get(i).get("title").equals(title)){
			// 만약 id값도 넘기도록 하면 or을 활용해서 할 수 있을 것 같다.
			// 반복할 때마다 request.getparameter()을 통해 값을 받아오는 방법도 가능하다.
			// int로 하는 경우 null일 때 0으로 받아 계산이 될 가능성이 있다.
			// 따라서 int 대신 integer을 사용하여 위와 같은 상황이 나오는 것을 방지하도록 한다.
%>
<div class="contentsTitle1 d-flex align-items-end">
	<%-- margin이 먹히지 않으면 padding을 활용하는 것과 같으 다른 방식을 가져다 써보도록 한다... --%>
	<div class="font mb-1"><b>곡 정보</b></div>
</div>
<%-- 클릭하지 않았을 때의 크기와 다르기 때문에 크기 조절을 위해 클래스를 새로 만들었다. --%>
<section class="content1 d-flex">
	<div class="picture1 d-flex align-items-center justify-content-center">
		<img src="<%=musicList.get(i).get("thumbnail") %>" alt="사진" width="200px" height="200px">
	</div>
	<%-- 굳이 칸을 만들어 정렬하지 않고 padding을 활용했으면 더 간단했을 것 같다. --%>
	<%-- 내가 한건 모양이 맞지 않는다. margin으로는 맞추기 어려웠다... --%>
	<div class="pictureExplain m-3">
		<div class="font2"><%=musicList.get(i).get("title") %></div>
		<div class="font3"><%=musicList.get(i).get("singer") %></div>
		<div class="d-flex musicEx mt-3">
			<div class="musicEx1">앨범</div>
			<div class="musicEx1"><%=musicList.get(i).get("album") %></div>
		</div>
		<div class="d-flex musicEx">
			<div class="musicEx1">재생시간</div>
			<%
			// object이기 때문에 int로 형변환하였다.
			int minute = (int)musicList.get(i).get("time")/60;
			int second = (int)musicList.get(i).get("time")%60;
			%>
			<div class="musicEx1"><%=minute +" : "+second %></div>
		</div>
		<div class="d-flex musicEx">
			<div class="musicEx1">작곡가</div>
			<div class="musicEx1"><%=musicList.get(i).get("composer") %></div>
		</div>
		<div class="d-flex musicEx">
			<div class="musicEx1">작사가</div>
			<div class="musicEx1"><%=musicList.get(i).get("lyricist") %></div>
		</div>
	</div>
</section>
<div class="lyrics d-flex align-items-end">
	<div class="font"><b>가사</b></div>
</div>
<%-- 각각 크기를 부여하여 중간에 위치하도록 하였다. --%>
<div class="lyrics1 mt-2 d-flex align-items-center">
	<div class="lyrics2 mt-2"><b>가사 정보 없음</b></div>
</div>
	<%
		}
	}
}
	%>
