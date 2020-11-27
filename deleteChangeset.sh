cmd="https://rally1.rallydev.com/slm/webservice/v2.0/SCMrepository/457457205816"  
        echo URL ${cmd} 
        curl --header "zsessionid:_5qkiIFxQaSYES9XL4aMNUFH2EeGMEiemV4EtMH4o" -H "Content-Type: application/json" -X DELETE ${cmd} >get.json
 echo "deleted" 
cat get.json      
