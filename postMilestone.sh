cmd="https://rally1.rallydev.com/slm/webservice/v2.0/milestone/458348180488"

curl --header "zsessionid:_5qkiIFxQaSYES9XL4aMNUFH2EeGMEiemV4EtMH4o" -H "Content-Type: application/json" ${cmd} >get.json

description=`cat get.json | jq '.Milestone.Description' | sed 's/"//g'`
notes=`cat get.json | jq '.Milestone.Notes' | sed 's/"//g'`

echo ${description}
		
curl --header "zsessionid:_5qkiIFxQaSYES9XL4aMNUFH2EeGMEiemV4EtMH4o" -H "Content-Type: application/json"  -d  '{"Milestone":{"Description":"'"${description}"'Another description data from post API in new line","Notes":"'"${notes}"'Another Notes data from post API in new line"}}' https://rally1.rallydev.com/slm/webservice/v2.0/milestone/458348180488 >post.json
echo "Printing POST Json"

cat post.json
