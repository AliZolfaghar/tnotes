# send mail using postfix and mail-utils via terminal commandline 
# args : 
#        $1                $2         $3     $4
# echo "message" | mail -s "title" -r sender reciver
if [[ $1 == "" ]] || [[ $2 == "" ]] || [[ $3 == "" ]] || [[ $4 == "" ]]
then
    echo
    echo "./sendmail.sh message title sender@address reciver@address" # USAGE MESSAGE
    echo
else
    echo
    #  with file :  echo "MESSAGE_BODY" | mail -s "MESSAGE_SUBJECT" -r SENDER_ADDRESS@SERVER.COM -a FILE_NAME RECIVER_ADDRESS
    #    no file :  echo "MESSAGE_BODY" | mail -s "MESSAGE_SUBJECT" -r SENDER_ADDRESS@SERVER.COM RECIVER_ADDRESS
    echo $1 | mail -s $2 -r $3 $4
fi