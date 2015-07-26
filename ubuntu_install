install_it()
{
    echo "Your choice is $1"   # 这个 $1 必须要参考底下命令的下达
}

# mk tmp
if ! [ -d tmp ];
then
        mkdir tmp
else
        rm -rf tmp/*
fi


echo install::update source...
if [ -f "/etc/apt/sources.list_backup" ];
then
        echo "install::source::File sources.list_backup exists."
        echo '#123' >> /etc/apt/sources.list_backup
else
        echo install::source::backup sources.list
        cp /etc/apt/sources.list /etc/apt/sources.list_backup
        echo '#aliyun' >> /etc/apt/sources.list
        echo 'deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse' >> /etc/apt/sources.list
        echo 'deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse' >> /etc/apt/sources.list
        echo 'deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse' >> /etc/apt/sources.list
        echo 'deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse' >> /etc/apt/sources.list
        echo 'deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse' >> /etc/apt/sources.list
        echo 'deb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse' >> /etc/apt/sources.list
        echo 'deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse' >> /etc/apt/sources.list
        echo 'deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse' >> /etc/apt/sources.list
        echo 'deb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse' >> /etc/apt/sources.list
        echo 'deb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse' >> /etc/apt/sources.list
        apt-get update
fi


echo install::vim...
#if installed_vim not exist, then install vim
#if ! [ -f "/etc/apt/installed_vim" ];
#then
        apt-get -y install vim
        apt-get -y install git
#       echo '1' > /etc/apt/installed_vim
#fi

echo install::chorme..
#if ! [ -f "/etc/apt/installed_chrome" ];
#then
        cd tmp
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo apt-get -f install libappindicator1 libindicator7
        sudo dpkg -i google-chrome-stable_current_amd64.deb
        cd -
#       echo '1' > /etc/apt/installed_chrome
#fi
