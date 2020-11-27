for batches in {0..21}
do
 for repository in {0..10}
 do
  reponame=`cat batches.json | jq -r '.batches['"${batches}"'].reponame['"${repository}"'].repo_name'`
  echo Reponame ${reponame}
  cmd="https://rally1.rallydev.com/slm/webservice/v2.0/scmrepository?query=(Name%20=%20${reponame})"
  curl --header "zsessionid:_5qkiIFxQaSYES9XL4aMNUFH2EeGMEiemV4EtMH4o" -H "Content-Type: application/json" ${cmd} >get.json
  cat get.json
  SCMID=`cat get.json | jq '.QueryResult.Results[0]._ref' | grep -oE '[0-9][0-9][0-9]*'`
  echo SCMID ${SCMID} 
  address=${SCMID} 
  jq --arg a "${address}" '.batches['"${batches}"'].reponame['"${repository}"'].rally_scm_id = $a' batches.json > "tmp" && mv "tmp" batches.json
 echo "completed ' ${address}'"
 done
done
