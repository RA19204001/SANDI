<%-- //最初に訪れるところThread_table表からスレッドを表示する
//カテゴリ別に表示できる（デフォルトは総合）
//新着順と人気順で並び替えできる --%>
<%@ page pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ja">

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" media="all" href="css/toppage.css">
	<title>SANちゃんねる</title>
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<a href="/sandi/thread?theme=1"><img src="images/rogo1.png" width="40%"></a>
		</div>
		<ul class="nav">
			<li class="theme"><a href="/sandi/thread?theme=1">総合</a></li>
			<li class="theme"><a href="/sandi/thread?theme=2">雑談</a></li>
			<li class="theme"><a href="/sandi/thread?theme=3">相談</a></li>
			<li class="theme"><a href="/sandi/thread?theme=4">趣味</a></li>
		</ul>

		<div id="main">

		<!-- 全体のもっと見る -->
			<div class="readmoremore">
				<input id="check2" class="readmoremore-check" type="checkbox">
				<div class="readmoremore-content">

					<div class="create">
						<a href="createthread" class="button">スレッド作成</a>
					</div>
				<div class="columnbox">
					<div class="column">
						<div class="title">
							<h2>人気掲示板</h2>
						</div>
						<div class="threadMain">
							<div class="threadBox">
								<c:forEach var="prof" items="${famousUsers}">
									<div class="titlebox">
										<h3>
											<a href="/sandi/res?id=${prof.id}&name=${prof.name}&count=${prof.count}">${prof.name}</a>
										</h3>
										<!-- 概要のもっと見る -->
										<div class="readmore">
											<input id="${prof.id}" class="readmore-check" type="checkbox">
											<div class="readmore-content">
												${prof.description}
												<!-- 概要の閉じる -->
											</div>
											<label class="readmore-label" for="${prof.id}"></label>
										</div>
										<p>テーマ : ${prof.theme}</p>
										<h6>閲覧数 : ${prof.count}</h6>
										<h6>投稿日時 : ${prof.date}</h6>
									</div><br>
								</c:forEach>
							</div><br><br><br>
						</div>
					</div>

						<div class="column">
							<div class="title">
								<h2>新着掲示板</h2>
							</div>
						<div class="threadMain">
							<div class="threadBox">
								<c:forEach var="prof" items="${newUsers}">
									<div class="titlebox">
										<h3>
											<a
												href="/sandi/res?id=${prof.id}&name=${prof.name}&count=${prof.count}">${prof.name}</a>
										</h3>
										<!-- 概要のもっと見る -->
										<div class="readmore">
											<input id="readmore ${prof.id}" class="readmore-check" type="checkbox">
											<div class="readmore-content">
												${prof.description}
												<!-- 概要の閉じる -->
											</div>
											<label class="readmore-label" for="readmore ${prof.id}"></label>
										</div>
										<p>テーマ : ${prof.theme}</p>
										<h6>閲覧数 : ${prof.count}</h6>
										<h6>投稿日時 : ${prof.date}</h6>
									</div><br>
								</c:forEach>

							</div><br><br><br>
						</div>
					</div>
				</div>
					<br>

					<!-- 全体の閉じる -->
				</div>
				<label class="readmoremore-label" for="check2"></label>
			</div>

		</div>
	</div>
	<footer>
		<div class="footer_pagetop">
			<span>
				<a href="/sandi/thread?theme=1">PAGETOP</a>
			</span>
		</div>
		<div class="footer_copyright">
			<small>
				© 2019</small>
		</div>
	</footer>

</body>

</html>
