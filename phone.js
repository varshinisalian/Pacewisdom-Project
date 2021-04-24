function mvalidation(){
    flag=0
    let number=document.getElementById("pno").value;
    if(isNaN(number))
    {
        flag=1
        document.getElementById("message").innerHTML="**Enter only numeric value";
        return false;

    }
    if(number.length<10)
    {
        falg=1
        document.getElementById("message").innerHTML="**Enter only 10 digit";
        return false;
    }
    if(number.length>10)
    {
        flag=1
        document.getElementById("message").innerHTML="**Enter only 10 digit";
        return false;
    }
    if((number.charAt(0)!=9) && (number.charAt(0)!=8) && (number.charAt(0)!=7) && (number.charAt(0)!=6))
    {
        flag=1
        document.getElementById("message").innerHTML="**Should begin with 9,8,7,6";
        return false;
    }
    else{
        flag=0
    }
}