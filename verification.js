
function mvalidation(){
    flag=0
    
    let psw=document.getElementById("password").value;
    let cpw=document.getElementById("cpassword").value;
    if(psw!=cpw)
    {
        falg=1;
        alert("Password and Confirm password are not maching");
        return false
    }
    else{
        alert("Now this form is going to submit")

    }
   
}









