<%--
  Created by IntelliJ IDEA.
  User: shenjingbing
  Date: 2020/4/13
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>
       分享书屋</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no" />
    <link rel='stylesheet' id='light-css'  href='../resources/home1/css/light.css' type='text/css' media='all' />
    <link rel='stylesheet' id='sytle-css'  href='../resources/home1/css/style.css' type='text/css' media='all' />
    <link rel='stylesheet' id='wp-block-library-css'  href='../resources/home1/css/style.min.css' type='text/css' media='all' />
    <script type='text/javascript' src='../resources/home1/js/swiper.min.js'></script>
    <script type='text/javascript' src='../resources/home1/js/html5shiv.js'></script>
    <script type='text/javascript' src='../resources/home1/js/selectivizr-min.js'></script>
    <script type='text/javascript' src='../resources/home1/js/jquery.min.js'></script>
    <script type='text/javascript' src='../resources/home1/js/jiazai.js'></script>
</head>
<body>
<nav class="header-web">
    <div class="ed">
        <a href="" class="logo" title="logo" rel="home"><img src="../resources/home1/picture/logo.png" ></a>

        <form id="search-form" method="get" class="search" action="../book/search_list" >
            <input class="text" type="text" name="keyword" placeholder="请输入..." value="${keyword}">
            <input class="butto" value="搜索" type="submit">
        </form>


        <ul class="nav-list">
            <c:forEach items="${bookCategoryList }" var="bookCategory">
                <li><a data-cont="${bookCategory.name }" title="${bookCategory.name }" href="../book/category_list?cid=${bookCategory.id }">${bookCategory.name }</a></li>
            </c:forEach>
        </ul>


        <script type="text/javascript" src="../resources/home1/js/index.js"></script>
    </div>
</nav>
<!--header-web-->
<%--<div id="container-page">--%>

<%--    <aside id="sitebar">--%>
<%--        <div class="sitebar_list">--%>
<%--            <h4 class="sitebar_title">原创随机</h4><ul id="randomposts"><li><a href="http://demo.yzipi.com/388.htm">如果你是管理，一定要意识到这八点</a></li><li><a href="http://demo.yzipi.com/285.htm">妓女欠款1000元的段子！看谁能看懂其中的含义</a></li><li><a href="http://demo.yzipi.com/38.htm">从泡妞段子看你的资金运作水平</a></li><li><a href="http://demo.yzipi.com/1138.htm">你能负担起的才叫梦想，否则不过是人生的负累</a></li><li><a href="http://demo.yzipi.com/1606.htm">解决不了问题，是不是你就是最大问题</a></li></ul></div> <div class="sitebar_list">--%>
<%--        <a href="http://www.yzipi.com/list" target="_blank"><img width="364" height="189" src="../resources/home1/picture/ef.jpg" class="image wp-image-2135  attachment-full size-full" alt="" style="max-width: 100%; height: auto;" /></a></div> <div class="sitebar_list">--%>
<%--        <h4 class="sitebar_title">网站标签</h4><div class="tagcloud"><a href=" " class="tag-cloud-link tag-link-20 tag-link-position-1" style="font-size: 15px;">如何带团队</a>--%>
<%--        <a href=" " class="tag-cloud-link tag-link-10 tag-link-position-2" style="font-size: 15px;">资金运作思维</a>--%>
<%--        <a href=" " class="tag-cloud-link tag-link-17 tag-link-position-3" style="font-size: 15px;">员工离职原因</a>--%>
<%--        <a href=" " class="tag-cloud-link tag-link-13 tag-link-position-4" style="font-size: 15px;">解决方案思维</a>--%>
<%--        <a href=" " class="tag-cloud-link tag-link-51 tag-link-position-5" style="font-size: 15px;">执行力</a>--%>
<%--        <a href=" " class="tag-cloud-link tag-link-11 tag-link-position-6" style="font-size: 15px;">饭堂阿姨</a>--%>
<%--        <a href=" " class="tag-cloud-link tag-link-14 tag-link-position-7" style="font-size: 15px;">标题如何起</a>--%>
<%--        <a href=" " class="tag-cloud-link tag-link-12 tag-link-position-8" style="font-size: 15px;">体验需求</a>--%>
<%--        <a href=" " class="tag-cloud-link tag-link-16 tag-link-position-9" style="font-size: 15px;">马云</a>--%>
<%--        <a href=" " class="tag-cloud-link tag-link-9 tag-link-position-10" style="font-size: 15px;">泡妞段子</a></div>--%>
<%--    </div><a href="http://www.yzipi.com/service" target="_blank" ><img class="totop" src="static/picture/ge.jpg" /></a>--%>
<%--        <script type="text/javascript">--%>
<%--            $(function() {--%>
<%--                var elm = $('.totop');--%>
<%--                var startPos = $(elm).offset().top;--%>
<%--                $.event.add(window, "scroll", function() {--%>
<%--                    var p = $(window).scrollTop();--%>
<%--                    $(elm).css('position',((p) > startPos) ? 'fixed' : 'static');--%>
<%--                    $(elm).css('top',((p) > startPos) ? '0px' : '');--%>
<%--                });--%>
<%--            });--%>
<%--        </script>--%>
<%--    </aside>  <article class="box">--%>
    <!--幻灯片-->
    <div class="hmFocus">
        <div class="swiper-container autoImg">
            <div class="swiper-wrapper">
                <div class="swiper-slide"> <a href="http://demo.yzipi.com/189.htm"target="_blank"><img src="../resources/home1/picture/huan1.png" 　alt=""></a></div>
                <div class="swiper-slide">  <a href="http://demo.yzipi.com/1162.htm" target="_blank"><img src="../resources/home1/picture/huan3.png" alt=""></a></div>
                <div class="swiper-slide">  <a href="http://demo.yzipi.com/wp-content/themes/gr/images/huan2.png" target="_blank"><img src="../resources/home1/picture/huan2.png" alt=""></a></div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>


    <script language="javascript">
        var swiper = new Swiper('.hmFocus .swiper-container', {
            pagination: '.swiper-pagination',
            loop: true,
            autoplay: 5500,
            paginationClickable: true
        });
    </script>



<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle   ">--%>


<%--            <a href=" " target="_blank">--%>
<%--                10年经验 ，工资涨幅竟10%都不到      </a> </h2>--%>

<%--        <span class="titleimg   "> <a href="http://demo.yzipi.com/1952.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/w-1000x556.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/12/w-1000x556.png 1000w, http://demo.yzipi.com/wp-content/uploads/2018/12/w-768x426.png 768w, http://demo.yzipi.com/wp-content/uploads/2018/12/w.png 1280w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/1952.htm" target="_blank">   </a>--%>
<%-- <a href="http://demo.yzipi.com/1952.htm" target="_blank">  </a>--%>
<%--   </span>--%>

<%--        <time  class="  ">--%>
<%--            2018.12.15		  　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao ">--%>
<%--            <p>打工者心态和老板心态，就像两座对望的高山，站在自己的山头上，看到的所有风景都是反的。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle   ">--%>


<%--            <a href="http://demo.yzipi.com/1892.htm" target="_blank">--%>
<%--                交待工作一定要讲清楚，哪怕说5遍      </a> </h2>--%>

<%--        <span class="titleimg   "> <a href="http://demo.yzipi.com/1892.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/sw-1000x556.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/11/sw-1000x556.png 1000w, http://demo.yzipi.com/wp-content/uploads/2018/11/sw-768x427.png 768w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/1892.htm" target="_blank">   </a>--%>
<%-- <a href="http://demo.yzipi.com/1892.htm" target="_blank">  </a>--%>
<%--   </span>--%>

<%--        <time  class="  ">--%>
<%--            2018.11.02		  　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao ">--%>
<%--            <p>一旦你成为管理者，在安排工作时，一定要把工作讲清楚，让团队明确工作内容和目标。否则，很可能大家都是白忙活。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class="mucctitle   ">--%>


<%--            <a href="http://demo.yzipi.com/71.htm" target="_blank">--%>
<%--                为什么你的努力一文不值      </a> </h2>--%>


<%--        <time  class="tebe ">--%>
<%--            2018.10.29		 &nbsp;<span class="zan">Hot</span> 　--%>
<%--        </time>--%>

<%--        <div class="zuiyao ">--%>
<%--            <p>你可以不“努力”吗?当然不行。因为“努力”这两个字，本就应该是每个人站在职场起跑线时的觉悟。这是最基本的角色设定。一个整天把“我已经努力”挂在嘴边的人，</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle    kuda">--%>


<%--            <a href="http://demo.yzipi.com/1606.htm" target="_blank">--%>
<%--                解决不了问题，是不是你就是最大问题      </a> </h2>--%>

<%--        <span class="titleimg    kudai"> <a href="http://demo.yzipi.com/1606.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/fe-1000x556.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/10/fe-1000x556.png 1000w, http://demo.yzipi.com/wp-content/uploads/2018/10/fe-768x427.png 768w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/1606.htm" target="_blank"> <img width="3000" height="1667" src="../resources/home1/picture/dv.jpg" class="attachment-post-thumbnail size-post-thumbnail" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/03/dv.jpg 3000w, http://demo.yzipi.com/wp-content/uploads/2018/03/dv-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/03/dv-768x427.jpg 768w" sizes="(max-width: 3000px) 100vw, 3000px" />  </a>--%>
<%-- <a href="http://demo.yzipi.com/1606.htm" target="_blank"><img width="3000" height="1667" src="../resources/home1/picture/ew.jpg" class="attachment-post-thumbnail size-post-thumbnail" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/10/EW.jpg 3000w, http://demo.yzipi.com/wp-content/uploads/2018/10/EW-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/10/EW-768x427.jpg 768w" sizes="(max-width: 3000px) 100vw, 3000px" />  </a>--%>
<%--   </span>--%>

<%--        <time  class="   kudat">--%>
<%--            2018.10.23		  　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao  kudap">--%>
<%--            <p>平台能造就每一个人，现在你可以一览众山小，总有一天你会感到高处不胜寒。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle   ">--%>


<%--            <a href="http://demo.yzipi.com/2099.htm" target="_blank">--%>
<%--                读书有多好，不代表以后你会混得比别人好      </a> </h2>--%>

<%--        <span class="titleimg   "> <a href="http://demo.yzipi.com/2099.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/d-1000x556.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2019/04/d-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2019/04/d-768x427.jpg 768w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/2099.htm" target="_blank">   </a>--%>
<%-- <a href="http://demo.yzipi.com/2099.htm" target="_blank">  </a>--%>
<%--   </span>--%>

<%--        <time  class="  ">--%>
<%--            2018.10.06		  　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao ">--%>
<%--            <p>小时候，家里穷，读不起书，那时我每天只能蹲在教室后门口，偷偷的学着，小学是这样，初中是这样，高中还是这样。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle   ">--%>


<%--            <a href="http://demo.yzipi.com/1689.htm" target="_blank">--%>
<%--                腾讯离职员工：别把平台当能力，离开了你什么也不是      </a> </h2>--%>

<%--        <span class="titleimg   "> <a href="http://demo.yzipi.com/1689.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/ce-1000x556.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/09/ce-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/09/ce-768x427.jpg 768w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/1689.htm" target="_blank">   </a>--%>
<%-- <a href="http://demo.yzipi.com/1689.htm" target="_blank">  </a>--%>
<%--   </span>--%>

<%--        <time  class="  ">--%>
<%--            2018.09.30		  　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao ">--%>
<%--            <p>在大公司，你就是一颗螺丝钉。平台需要最大程度上利用你的性价比，对于你个人发展，并没有多大兴趣。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle   ">--%>


<%--            <a href="http://demo.yzipi.com/1648.htm" target="_blank">--%>
<%--                今天，是我离开自已创办的企业一周年      </a> </h2>--%>

<%--        <span class="titleimg   "> <a href="http://demo.yzipi.com/1648.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/e-1000x556.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/09/e-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/09/e-768x427.jpg 768w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/1648.htm" target="_blank">   </a>--%>
<%-- <a href="http://demo.yzipi.com/1648.htm" target="_blank">  </a>--%>
<%--   </span>--%>

<%--        <time  class="  ">--%>
<%--            2018.09.19		 &nbsp;<span class="zan">Hot</span> 　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao ">--%>
<%--            <p>很多时候，自已并不是死在对手的攻击下，而是死在自已的欲望中。想多了，常常无法前行，纠结多了，也就越来越迷失自我。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle   ">--%>


<%--            <a href="http://demo.yzipi.com/1162.htm" target="_blank">--%>
<%--                是骡子还是马，拉出来溜溜就知道      </a> </h2>--%>

<%--        <span class="titleimg   "> <a href="http://demo.yzipi.com/1162.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/5-1000x556.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/05/5-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/05/5-768x426.jpg 768w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/1162.htm" target="_blank">   </a>--%>
<%-- <a href="http://demo.yzipi.com/1162.htm" target="_blank">  </a>--%>
<%--   </span>--%>

<%--        <time  class="  ">--%>
<%--            2018.07.23		  　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao ">--%>
<%--            <p>学历只能证明你父母在你身上浪费了多少钱，证明你给中国的传统教育忽悠有多久。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle   ">--%>


<%--            <a href="http://demo.yzipi.com/1484.htm" target="_blank">--%>
<%--                标题改一下：热列庆祝戒烟一周年      </a> </h2>--%>

<%--        <span class="titleimg   "> <a href="http://demo.yzipi.com/1484.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/3-1000x556.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/07/3-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/07/3-768x427.jpg 768w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/1484.htm" target="_blank">   </a>--%>
<%-- <a href="http://demo.yzipi.com/1484.htm" target="_blank">  </a>--%>
<%--   </span>--%>

<%--        <time  class="  ">--%>
<%--            2018.06.23		  　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao ">--%>
<%--            <p>不要误以为侥幸一直存在，死神只是和你擦肩而过；不要因为一时的兴奋，换来的是生命的尽头，这绝对世界上最廉价的交易。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle    kuda">--%>


<%--            <a href="http://demo.yzipi.com/1471.htm" target="_blank">--%>
<%--                职场铁律：高层看决断、中层看理解、基层看执行      </a> </h2>--%>

<%--        <span class="titleimg    kudai"> <a href="http://demo.yzipi.com/1471.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/3re3-1000x556.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/07/3re3-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/07/3re3-768x427.jpg 768w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/1471.htm" target="_blank"> <img width="2000" height="1111" src="../resources/home1/picture/po9.jpg" class="attachment-post-thumbnail size-post-thumbnail" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/07/po9.jpg 2000w, http://demo.yzipi.com/wp-content/uploads/2018/07/po9-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/07/po9-768x427.jpg 768w" sizes="(max-width: 2000px) 100vw, 2000px" />  </a>--%>
<%-- <a href="http://demo.yzipi.com/1471.htm" target="_blank"><img width="3000" height="1667" src="../resources/home1/picture/ji.jpg" class="attachment-post-thumbnail size-post-thumbnail" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/01/ji.jpg 3000w, http://demo.yzipi.com/wp-content/uploads/2018/01/ji-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/01/ji-768x427.jpg 768w" sizes="(max-width: 3000px) 100vw, 3000px" />  </a>--%>
<%--   </span>--%>

<%--        <time  class="   kudat">--%>
<%--            2018.05.15		  　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao  kudap">--%>
<%--            <p>一新员工，刚到华为时，就公司的经营战略问题，写了一封“万言书”给任正非，任正非批复：“此人如果有精神病，建议送医院治疗；如果没病，建议辞退。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle   ">--%>


<%--            <a href="http://demo.yzipi.com/1232.htm" target="_blank">--%>
<%--                假如你的人生能有100岁，你活了已经超过1/4      </a> </h2>--%>

<%--        <span class="titleimg   "> <a href="http://demo.yzipi.com/1232.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/ere-1000x556.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/05/ere-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/05/ere-768x427.jpg 768w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/1232.htm" target="_blank">   </a>--%>
<%-- <a href="http://demo.yzipi.com/1232.htm" target="_blank">  </a>--%>
<%--   </span>--%>

<%--        <time  class="  ">--%>
<%--            2018.05.04		  　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao ">--%>
<%--            <p>能活100岁的人，25岁都已经过了1/4，生命在时间前面总是表现得那么的脆弱、无奈与恐惧。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <section class="list">--%>

<%--        <h2 class=" mecctitle   ">--%>


<%--            <a href="http://demo.yzipi.com/845.htm" target="_blank">--%>
<%--                靠加班、靠团建、靠个人，迟早你会靠边站      </a> </h2>--%>

<%--        <span class="titleimg   "> <a href="http://demo.yzipi.com/845.htm" target="_blank">--%>
<%--  <img width="1000" height="556" src="../resources/home1/picture/dw-1000x556.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="http://demo.yzipi.com/wp-content/uploads/2018/03/dw-1000x556.jpg 1000w, http://demo.yzipi.com/wp-content/uploads/2018/03/dw-768x427.jpg 768w" sizes="(max-width: 1000px) 100vw, 1000px" />  </a>--%>
<%--  <a href="http://demo.yzipi.com/845.htm" target="_blank">   </a>--%>
<%-- <a href="http://demo.yzipi.com/845.htm" target="_blank">  </a>--%>
<%--   </span>--%>

<%--        <time  class="  ">--%>
<%--            2018.04.19		  　--%>
<%--        </time>--%>

<%--        <div class=" zaiyao ">--%>
<%--            <p>如果你是领导或老板，结果导向靠个人，靠团建，靠加班，一时会有依靠，最终你也只会靠边站。</p>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--</article>--%>

<%--    <div id="post-read-more">--%>
<%--        <a href="http://demo.yzipi.com/page/2" >看更多</a>--%>
<%--    </div>--%>


<%--</div>--%>
<%--<footer id="dibu-main">--%>
<%--    <div class="bottomlist">--%>
<%--        <div class="xinlan"> <a href="https://weibo.com/pocoe" target="_blank" ><img src="../resources/home1/picture/xinlan.png" alt="新浪微博" title="新浪微博"></a> </div>--%>
<%--        <div class="weixin2">--%>
<%--            <div class="weixin"><span>公众号 : Yzipi6</span> <img src="../resources/home1/picture/weixin.png" alt="微信公众号"  title="微信公众号"> <img src="../resources/home1/picture/er2.png"/ class="xixii" alt="微信公众号" ></div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div class="bottom">--%>
<%--        <ul class="botop"> 	  <li id="menu-item-708" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-708"><a href="http://demo.yzipi.com/biao">网站标识</a></li>--%>
<%--            <li id="menu-item-1434" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1434"><a href="http://demo.yzipi.com/zhan">站长囧事</a></li>--%>
<%--            <li id="menu-item-1194" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1194"><a href="http://demo.yzipi.com/about">关于我们</a></li>--%>
<%--            <li id="menu-item-2129" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2129"><a target="_blank" href="http://www.020xuexiao.com">广州技校</a></li>--%>
<%--        </ul>--%>

<%--        <div class="botext"><a href="http://demo.yzipi.com/">--%>
<%--            Yzipi        </a> / <a href="http://www.miitbeian.gov.cn/" rel="external nofollow" target="_blank"> 粤ICP备18005985号 </a> <a href="http://www.yzipi.com/" target="_blank"> Wordpress </a></div>--%>
<%--        <div class="tongji"><script> var _hmt = _hmt || []; (function() {   var hm = document.createElement("script");   hm.src = "https://hm.baidu.com/hm.js?53b746b81800e69344039be9616cd518";   var s = document.getElementsByTagName("script")[0];    s.parentNode.insertBefore(hm, s); })(); </script></div>--%>
<%--    </div>--%>
<%--    </div>--%>

<%--    <div class="off">--%>
<%--        <div class="scroll" id="scroll" style="display:none;"> ︿ </div>--%>
<%--    </div>--%>
<%--    <script type="text/javascript">--%>
<%--        $(function(){--%>
<%--            showScroll();--%>
<%--            function showScroll(){--%>
<%--                $(window).scroll( function() {--%>
<%--                    var scrollValue=$(window).scrollTop();--%>
<%--                    scrollValue > 500 ? $('div[class=scroll]').fadeIn():$('div[class=scroll]').fadeOut();--%>
<%--                } );--%>
<%--                $('#scroll').click(function(){--%>
<%--                    $("html,body").animate({scrollTop:0},1224);--%>
<%--                });--%>
<%--            }--%>
<%--        })--%>
<%--    </script>--%>
<%--</footer>--%>
<!--dibu-->
<%--<script type='text/javascript' src='../resources/home1/js/wp-embed.min.js'></script>--%>
</body></html>