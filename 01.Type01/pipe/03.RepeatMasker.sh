dbName=$1
threadN=$2

if [ -z "${dbName}" ]; then
    echo "Error: The variable 'Error' is empty."
    exit 1
fi

if [ -z "${threadN}" ]; then
    echo "Error: The variable 'threadN' is empty."
    exit 1
fi

cd 03.RepeatMasker

RepeatMasker -pa ${threadN} -lib ../02.RepeatModeler/${dbName}-families.fa ../ref.fa 1> ../03.RepeatMasker.log 2>&1