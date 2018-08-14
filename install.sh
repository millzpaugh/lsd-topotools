

# Check if parent directories exist
if ! [ -d /LSDTopoTools/Git_projects ]
  then
    echo "Need to make the Git projects folder"
    mkdir /LSDTopoTools/Git_projects
  else
    echo "I found a Git_projects folder."
fi

# Check if parent directories exist, part 2
if ! [ -d /LSDTopoTools/Topographic_projects ]
  then
    echo "Need to make the Topographic projects folder"
    mkdir /LSDTopoTools/Topographic_projects
  else
    echo "I found a Topographic_projects folder."
fi

# Download the setup tool
if [ -f /LSDTopoTools/LSDTopoToolsSetup.py ]
  then
  wget -P /LSDTopoTools/ https://raw.githubusercontent.com/LSDtopotools/LSDAutomation/master/LSDTopoToolsSetup.py
fi

# Run setup
#python /LSDTopoTools/LSDTopoToolsSetup.py -id 0



# check if the example dataset files have been cloned
if [ -f /LSDTopoTools/Topographic_projects/Test_data/Mandakini.bil ]
  then
    echo "Example data exists, updating."
    git --work-tree=/LSDTopoTools/Topographic_projects/Test_data --git-dir=/LSDTopoTools/Topographic_projects/Test_data/.git  pull origin master
  else
    echo "cloning the analysis packages"
    git clone https://github.com/LSDtopotools/LSDTT_vagrant_datasets.git /LSDTopoTools/Topographic_projects/Test_data
fi

# check if the files have been cloned
if [ -f /LSDTopoTools/Git_projects/LSDTopoTools_AnalysisDriver/LSDRaster.cpp ]
  then
    echo "LSDTopoTools_AnalysisDriver exists, updating."
    git --work-tree=/LSDTopoTools/Git_projects/LSDTopoTools_AnalysisDriver --git-dir=/LSDTopoTools/Git_projects/LSDTopoTools_AnalysisDriver/.git  pull origin master
  else
    echo "cloning the analysis packages"
    git clone https://github.com/LSDtopotools/LSDTopoTools_AnalysisDriver.git /LSDTopoTools/Git_projects/LSDTopoTools_AnalysisDriver
fi

if [ -f /LSDTopoTools/Git_projects/LSDTopoTools_CRNBasinwide/LSDRaster.cpp ]
  then
    echo "LSDTopoTools_CRNBasinwide exists, updating"
    git --work-tree=/LSDTopoTools/Git_projects/LSDTopoTools_CRNBasinwide --git-dir=/LSDTopoTools/Git_projects/LSDTopoTools_CRNBasinwide/.git pull origin master
  else
    echo "Cloning the cosmogenic packages"
    git clone https://github.com/LSDtopotools/LSDTopoTools_CRNBasinwide.git /LSDTopoTools/Git_projects/LSDTopoTools_CRNBasinwide
fi

if [ -f /LSDTopoTools/Git_projects/LSDTopoTools_ChiMudd2014/LSDRaster.cpp ]
  then
    echo "LSDTopoTools_ChiMudd2014 exists, updating"
    git --work-tree=/LSDTopoTools/Git_projects/LSDTopoTools_ChiMudd2014 --git-dir=/LSDTopoTools/Git_projects/LSDTopoTools_ChiMudd2014/.git pull origin master
  else
    echo "Cloning the chi analysis packages"
    git clone https://github.com/LSDtopotools/LSDTopoTools_ChiMudd2014.git /LSDTopoTools/Git_projects/LSDTopoTools_ChiMudd2014
fi

if [ -f /LSDTopoTools/Git_projects/LSDTopoTools_ChannelExtraction/LSDRaster.cpp ]
  then
    echo "LSDTopoTools_ChannelExtraction exists, updating"
    git --work-tree=/LSDTopoTools/Git_projects/LSDTopoTools_ChannelExtraction --git-dir=/LSDTopoTools/Git_projects/LSDTopoTools_ChannelExtraction/.git pull origin master
  else
    echo "Cloning the channel extraction packages"
    git clone https://github.com/LSDtopotools/LSDTopoTools_ChannelExtraction.git /LSDTopoTools/Git_projects/LSDTopoTools_ChannelExtraction
fi