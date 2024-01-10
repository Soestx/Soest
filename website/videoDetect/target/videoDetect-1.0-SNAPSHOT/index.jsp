<%--
  Created by IntelliJ IDEA.
  User: Soest
  Date: 2024/1/7
  Time: 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>希利兰卡</title>
    <link rel="icon" href="static/log/linkedin_banner_image_1.png">
    <link href="static/css/title.css" rel="stylesheet">
    <link href="static/css/head.css" rel="stylesheet">
    <link href="static/css/items.css" rel="stylesheet">
    <link href="static/css/reset.css" rel="stylesheet">
    <link href="static/css/font.css" rel="stylesheet">
    <link href="static/css/bar.css" rel="stylesheet">
  </head>
  <body>

  <%--头部开始--%>
  <div class="header">
    <div class="wrap">
      <ul class="header-left">
        <li><a href="#"><i class="iconfont"></i>希利兰卡</a><span>|</span></li>
        <li><a href="#">首页</a><span>|</span></li>
        <li><a href="#">产品介绍</a><span>|</span></li>
        <li><a href="#">关于我们</a><span>|</span></li>
        <li><a href="#">合作</a><span>|</span></li>
        <li><a href="#">相关产品</a><span>|</span></li>
      </ul>

      <ul class="header-right">
        <li class="log">
          <a href="static/jsp/" target="_self">登录</a>
          <div class="log-list">
            您还没有登录，请先登录！
          </div>
        </li>
      </ul>
    </div>
  </div>
  <%--头部结束--%>

  <%--  bar-1--%>
  <div class="bar_1">
    <div class="blank"></div>
    <div class="wrap">
        <img src="static/imags/title.png" style="margin-top: -180px;margin-left: -290px">
    </div>
    <div class="wrap">
      <table class="tb">
        <tr>
          <td style="width: 100px"></td>
          <td class="fom">
            <div class="file-box">
              <label for="videoFile" class="simHei">选择视频文件：&emsp;&emsp;</label>
              <input type="file" id="videoFile" name="videoFile" accept="video/*" title="视频文件" style="width: 200px">
            </div>
            <div class="file-box">
              <label for="sensitiveInfo" class="simHei">敏感信息：&emsp;&emsp;&emsp;&emsp;</label>
              <input type="text" id="sensitiveInfo" name="sensitiveInfo" title="敏感信息" maxlength="30" style="width: 200px">
            </div>
            <div class="file-box">
              <label for="generateExtraVideo" class="simHei">是否生成额外视频：</label>
              <select id="generateExtraVideo" name="generateExtraVideo" style="width: 100px">
                <option value="yes">是</option>
                <option value="no">否</option>
              </select>
            </div>
            <div class="file-box">
              <input type="button" value="上传视频" onclick="uploadFile(uploadForm)" style="width: 100px;margin-left: 225px;">
            </div>
          </td>
          <td>
              <video controls style="width: 519.32px;height: 277.66px;background-color: black">
                <source src="https://cloud.video.taobao.com/play/u/3535383707/p/2/e/6/t/1/440364201058.mp4" type="video/webm" />

                <source src="/static/cs" type="video/mp4" />

                Download the
                <a href="/media/cc0-videos/flower.webm">WEBM</a>
                or
                <a href="/media/cc0-videos/flower.mp4">MP4</a>
                video.
              </video>

              <div style="margin-top: 20px;width: 100%">
                <label for="file" style="margin-left: 0">File progress:</label>
                <progress id="file" max="100" value="100" style="width: 100%">70%</progress>
              </div>
          </td>
        </tr>
      </table>
    </div>
  </div>


  <script>
    function uploadFile(form) {
      console.log(form)
      for (i = 0;i < form.length; i++)
      {
        if (form.elements[i].value == ''){
          alert("抱歉 '" + form.elements[i].title + "' 不能为空!");
          form.elements[i].focus();
          return false;
        }
      }

      const file = document.getElementById('uploadForm');

      // $.ajax({
      //     type:"post",
      //     url:"",
      //     async:"true",
      //     data:{
      //         video:"file"
      //     },
      //     dataType:"json",
      //     contentType:"application/x-www-form-urlencoded"
      //     success:function (){
      //
      //     },
      //     error:function (){
      //
      //     }
      // })

      if (file) {
        const formData = new FormData();
        formData.append('file', file);

        fetch('/upload', {
          method: 'POST',
          body: formData
        })
                .then(response => response.json())
                .then(data => {
                  console.log('文件上传成功！服务器返回的数据:', data);
                })
                .catch(error => {
                  alert('文件上传失败:', error);
                });
      }
    }
  </script>

  <div class="bar_2">

  </div>

  <div class="tail">

  </div>
  </body>
</html>
