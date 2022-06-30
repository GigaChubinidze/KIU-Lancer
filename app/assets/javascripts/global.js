document.addEventListener("turbolinks:load", function() 
{
    var notification = document.querySelector('.global-notification');
    if(notification) 
    {
      window.setTimeout(function() 
      {
        notification.style.display = "none";
      }, 
      0);
      //set 0 to 1000 to get errors
    }
  
});