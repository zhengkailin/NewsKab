<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>KAB创业教育网</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/play.css"/>
    <script src="bootstrap-3.3.7-dist/js/jquery.min.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="/comm/head.jsp"%>


<div class="container headinfo">
    <div class="banner">
        <h3>KAB概况</h3>
        <img src="/img/banner.gif" alt=""/>
    </div>
    <div class="locaiton"><a href="/indexlist">首页</a>&gt;&gt;KAB概况</div>
</div>
<div class="container mianinfo">
    <h3>${generals.title}</h3>
    <hr/>
    <p>项目背景</p>

    <span>${generals.content}</span>
    <p>项目简介</p>

    <span>为适应创新创造的时代要求，满足青年就业的现实需要，培养青年的创业意识和创业能力，共青团中央、全国青联与国际劳工组织合作，自2005年8月起在中国大学中开展KAB创业教育（中国）项目（简称“KAB项目”）。这是共青团中央、全国青联通过国际合作推进中国创业教育发展的一项尝试，旨在吸收借鉴国际经验的基础上，探索出一条具有中国特色的创业教育之路。</span>

    <span>KAB创业教育项目目前已在全球30多个国家开展。其核心内容是国际劳工组织为培养大中学生的创业意识和创业能力而专门开发的课程体系，与已经在各国广泛实施的“创办和改善你的企业”项目（SIYB项目）共同构成一个完整的创业培训体系。该课程一般以选修课的形式在大学开展，学生通过选修该课程可以获得相应的学分。围绕该课程，学生还可以参加KAB创业俱乐部、创业大讲堂等课外实践活动。通过教授和操练有关企业和创业的基本知识和技能，该项目帮助学生对创业树立全面认识和体验，切实提高其创业意识和创业能力，培养有创业和创新精神的青年人才。</span>

    <span>截至2011年2月，KAB创业教育（中国）项目已培训来自850所高校的2931名师资，在100所高校创设大学生KAB创业俱乐部，20万多名大学生参加了学习实践。在清华大学、中国青年政治学院、浙江大学等600多所高校开设了《大学生KAB创业基础》课程，公开出版了《大学生KAB创业基础》教师用书和学生用书两套教材，建立了课程建设、师资培训、质量控制、交流推广四大体系，受到师生广泛欢迎。根据教育的需要和学生的要求, 该项目将继续在全国各高校推广。</span>

    <p>推广计划</p>

    <span>2008年5月，经团中央书记处批准，为KAB项目的交流和推广，并为KAB相关合作机构提供服务与支持，中国青年报社负责组建KAB全国推广办公室。根据授权，KAB全国推广办公室主要职责如下： KAB项目的市场宣传与推广。在各大高校举办相关活动，引导更多高校加入KAB项目；为KAB项目筹款。为KAB项目的推广与发展募集资金；承办KAB项目相关会议。包括KAB创业教育论坛、KAB项目中国年会、KAB大讲堂等相关活动的承办与市场开发。负责KAB创业俱乐部的申请、联系等日常管理工作。为KAB相关合作机构提供服务与支持。包括为KAB日常管理机构、KAB中国研究所、KAB项目师资培训基地等机构提供相关协助、服务与支持，成为促进KAB事业的纽带。</span>

    <span>KAB全国推广办公室为更好的协调社会力量参加KAB项目，与中国光华科技基金会达成战略合作协议，在中国光华科技基金会设立“青年创业专项基金KAB项目”。专项负责筹集的KAB资金管理。</span>

    <span>根据KAB俱乐部发展要求，未来三年中，每年计划拓展100家KAB创业俱乐部。这将保证这一公益项目的可持续发展，加快培养高校师资，让广大高校大学生受益。</span>

    <span>为积极落实“以创业带动就业”的十七大精神，从创业教育入手，让有创业梦想的大学生对创业有一个相对完整的理解，在真正创业前做好各种准备，甚至提前尝试创业体验，提高大学生的创业成功率和抗风险能力。团中央、全国青联、全国学联、国际劳工组织将联合主办一系列活动，这些活动将主要由KAB全国推广办公室、中国光华科技基金会、KAB创业教育中国研究所等机构联合承办，目的是更好的推进KAB创业教育课程与实践的结合，使更多的高校开展KAB创业教育和成立KAB创业俱乐部，从而推动中国高校创业教育的发展，培养高校大学生的创新精神和创业能力。</span>

    <p>KAB主要活动</p>

    <span>1、“KAB年会”活动。该活动是KAB中国项目的重要活动之一，是为了总结KAB项目一年的成果，表彰一批先进的KAB师资和院校，并对KAB创业教育项目面临的问题进行研讨。该活动由团中央、全国青联、全国学联、国际劳工组织联合主办，由KAB全国推广办公室、中国青年报社及各高校承办。“KAB年会”活动每年举办一次。</span>

    <span>2、“KAB大讲堂”活动。主要是邀请一些知名企业家走进校园，讲述他们的创业成功经历，并和大学生进行互动交流。该活动由团中央、全国青联、全国学联、国际劳工组织联合主办，KAB全国推广办公室、中国青年报社等单位承办。该计划每年在全国高校举办25次到35次。</span>

    <span> 3、“全国十佳KAB创业俱乐部”展示活动。该活动主要是为了指导、推动各高校开展KAB创业教育课外实践活动，帮助各高校大学生KAB创业俱乐部更好的发展。“全国十佳KAB创业俱乐部”展示活动由团中央、全国青联、全国学联、国际劳工组织联合主办，KAB全国推广办公室、中国青年报社、中国光华科技基金会等单位承办，活动从2008年起每年举办一次。</span>

    <span>4、“KAB创业俱乐部主席暑期训练营”活动。这个活动已经举办两届，由KAB全国推广办公室主办，中国光华科技基金会、诺基亚（中国）投资有限公司提供公益支持。这个活动主要为了提高俱乐部主席的领导管理能力，以及加强他们的实践能力。</span>

    <span>5、“创业计划书”展示活动。每年举办一次，该活动由团中央、全国青联、全国学联、国际劳工组织联合主办，由KAB全国推广办公室、中国青年报社及各高校承办，主要为了提高大学生的创业精神、创新意识，提高他们的创业素质与创业能力。</span>

    <p>加入KAB推广计划</p>

    <span>作为一项旨在提高和培养大学生创业能力和创新精神的公益活动，KAB项目离不开社会各界的支持，我们欢迎有责任的企业和企业家加入KAB推广计划，加入方式主要有三种。</span>

    <span> 1、成为大学生KAB创业指导老师。大学生的创业热情很高，也有一些创业实践活动，为更好地指导大学生创业，我们计划向有创业经验的企业家、管理专家，包括企业和各研究机构发出邀请，聘请他们担当创业指导老师，以创业教练的身份与大学生直接交流，指导大学生创业。参加该计划的企业家和专家，一年至少要有半天时间义务与大学生就创业问题进行交流。</span>

    <span>2、为大学生KAB学员提供实践机会。该计划旨在让大学生KAB学员结合书本知识经验，在真正创业前，有机会参加各类社会实践，提高大学生的就业能力和创新精神。我们欢迎各大中型企业加入该计划，加入该计划的企业每年至少要提供一次大学生实践实习机会，人数、地域不限。</span>

    <span>3、赞助KAB行动。KAB项目是一个公益组织，因此需要面向社会筹集资金，扶持大学生参加社会实践，通过举办一系列活动，促进KAB项目在高校的发展，活跃大学校园的创业文化和创新精神。我们欢迎有责任的企业赞助KAB推广计划。</span>


</div>


<%@include file="/comm/foot.jsp"%>

</body>
</html>
