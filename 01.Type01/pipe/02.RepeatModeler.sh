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

cd 02.RepeatModeler

RepeatModeler -database ../01.BuildDatabase/${dbName} -LTRStruct -threads ${threadN} 1> ../02.RepeatModeler.log 2>&1