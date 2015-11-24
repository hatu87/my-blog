var article = (function (){
  return {
    showComments: function (e, data){
      $('#' + data.id + '-comment').show();
      e.preventDefault();
    }
  };
})();

