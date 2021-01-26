<%--
  Created by IntelliJ IDEA.
  User: yanus
  Date: 10/8/2017
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Posts</title>

    <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>

    <script src="http://code.jquery.com/jquery-1.9.0.min.js" type="text/javascript"></script>

    <link href="<c:url value="/resources/css/all.css"/>" type="text/css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/resources/js/all.js?<?=filemtime( 'js/file.js' )?>"
            type="text/javascript"></script>

</head>
<body>
<div class="page-container personal-page-background">
    <div class="wrapper">
        <!--include ../templates/_nav-games-->
        <nav class="navbar header">
            <button type="button" data-toggle="collapse" data-target="#adaptiveMenu"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                    class="navbar-toggle navbar-toggler-right"><span class="navbar-toggler-icon"></span></button>
            <a href="index.html" class="navbar-brand"><img src="/resources/img/besa-logo-light.svg"></a>
            <div id="adaptiveMenu" class="collapse navbar-collapse">
                <ul class="nav-gamess navbar-nav mr-auto">
                    <li class="nav-games__item nav-item active"><a href="main-page-csgo.html"
                                                                   class="nav-games__link nav-link"><span>CS GO</span></a>
                    </li>
                    <li class="nav-games__item nav-item active"><a href="main-page-wot.html"
                                                                   class="nav-games__link nav-link"><span>World of tanks</span></a>
                    </li>
                    <li class="nav-games__item nav-item active"><a href="main-page-paragon.html"
                                                                   class="nav-games__link nav-link"><span>Paragon</span></a>
                    </li>
                    <li class="nav-games__item nav-item active"><a href="main-page-dota.html"
                                                                   class="nav-games__link nav-link"><span>Dota 2</span></a>
                    </li>
                </ul>
                <c:choose>
                <c:when test="${isExist == false}">
                <div class="account-option"><span class="login login__icon"><a href="../login.html">Вход</a>
                            </span><span>/</span><span class="registration"><a
                        href="../registration.html">Регистрация</a></span></div>
                </c:when>
                <c:otherwise>
                <div class="account-option"><span class="login login__icon"><a>${login}</a>
                <div class="account-option__actions-list">
                  <ul class="account-option__list">
                    <li class="account-option__item"><a class="account-option__link" href="createNewsPage">Написать новость</a></li>
                    <li class="account-option__item"><a class="account-option__link" href="createSteamOrVideoPage">Добавить стрим или видео</a></li>
                    <li class="account-option__item"><a class="account-option__link"
                                                        href="deletePostsPage">Удалить пост</a></li>
                    <li class="account-option__item"><a class="account-option__link" href="">Добавить матч</a></li>
                      <li class="account-option__item"><a class="account-option__link" href="/getViewPage">Просмотр постов</a></li>
                  </ul>
                </div></span><span> : </span><a>Здесь</a></div>
                </c:otherwise>
                </c:choose>
        </nav>
        <div class="registration-block">
            <h2>Удаление постов</h2>
            <form id="registration-form" class="registration-form" action="deletePost" method="post">
                <fieldset>
                    <select name="type">
                        <option value="video">Video</option>
                        <option value="stream">Stream</option>
                        <option value="news">News</option>
                    </select>
                </fieldset>

                <fieldset>
                    <input name="id" type="text" size="40" placeholder="Ид поста из БД">
                </fieldset>
                <button>Удалить</button>
                <ul class="social">
                    <li class="social__item"><a class="link--social regisrtVK"></a></li>
                    <li class="social__item"><a class="link--social registrFace"></a></li>
                    <li class="social__item"><a class="link--social registrGoogle"></a></li>
                </ul>
            </form>
        </div>

        <div class="footer">
            <ul class="tech-support">
                <li class="tech-support__item"><a class="link-item">Faq</a></li>
                <li class="tech-support__item"><a class="link-item">Тех. поддержка</a></li>
            </ul>
            <span class="copyright">© 2016—2017</span>
            <ul class="social">
                <li class="social__item"><a class="link--social google"></a></li>
                <li class="social__item"><a class="link--social youtube"></a></li>
                <li class="social__item"><a class="link--social tumblr"></a></li>
                <li class="social__item"><a class="link--social facebook"></a></li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>
