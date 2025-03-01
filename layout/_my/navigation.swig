<script>
document.addEventListener('click', function(event) {

  const checkUrl=function (url){
      return url?.includes('my-hexo-blog');
  };
  // Check if the clicked element is an <a> tag.
  if (event.target.tagName === 'A'|| event.target.parentNode.tagName === 'A') {
    event.preventDefault();
    if(checkUrl(event.target.href)||event.target.parentNode.href){
      const url=event.target.parentNode.href??event.target.href;
        
    // // 播放音效
    var audio = new Audio("{{url_for('my-asset/audio/p5.mp3')}}");
    audio.play();
    const fileNm=['crow.png','fox.png','haru.png','makoto.png','mona.png','navi.png','panther.png','skull.png','violet.png','joker.png','lavenza.png','twin1.png','twin2.png'];
    const filePath="{{url_for('my-asset/img/')}}";
    // 显示图片
    var popupImage = document.getElementById('popupImage');
    popupImage.src=`${filePath+fileNm[Math.floor(Math.random() * fileNm.length)]}`
    popupImage.style.display = 'block';
  
    // 1 秒后跳转
     setTimeout(function() {
       popupImage.style.display = 'none';
       window.location.href = url; // 跳转到目标页面
     }, 850);
      event.preventDefault();
    }

  }
});
</script>
<style>
  #popupImage {
    display: none;
    position: fixed;
    top: 15%;
    z-index: 1;
    left:0px;
    width: 100%;
    height: 600px;
  }

</style>

<img id="popupImage" alt="Popup Image">