#!/bin/bash
echo "Hi"
msg_regex='[A-Z]+[0-9]+'
Author=`git log -1 |  grep Author | cut -d" " -f2,3`
Commit_msg=`git log -1 | grep -Es $msg_regex`
echo Author ${Author}
git log -1 | grep -oEq $msg_regex
if [ $? -eq 0 ]
then
        echo "Regex Match"
         for ids in `git log -1 | grep -oE $msg_regex`
         do
                echo $ids
        cmd="https://rally1.rallydev.com/slm/webservice/v2.0/defect?query=(FormattedID%20%3D%20${ids})"  
        echo URL ${cmd} 
        curl --header "zsessionid:_qjZabCw6TUajYHNKzj5pZ587kdzh70RSrjTs9aNkH7M" -H "Content-Type: application/json" ${cmd} >get.json
        
        #cat get.json
        ObjectID=`cat get.json | cut -d"/" -f8 | cut -d"\"" -f1`
        echo ObjectID ${ObjectID}
        artifact="/defect/${ObjectID}"
	 echo artifact ${artifact}
         curl --header "zsessionid:_qjZabCw6TUajYHNKzj5pZ587kdzh70RSrjTs9aNkH7M" -H "Content-Type: application/json" -d '{"Changeset":{"Revision":"1","SCMRepository":"/scmrepository/424317194036","CommitTimestamp":"2020-10-09","Message":"'"${Commit_msg}"'","Author":"/user/436763892860","Artifacts":{"Artifact":"'"${artifact}"'"}}}' https://rally1.rallydev.com/slm/webservice/v2.0/changeset/create?workspace=workspace/10703513144 >post.json
         echo "Printing POST Json"
         cat post.json
         
        done
else
        echo "Commit doesn't contain Rally Artifact ID"
fi
