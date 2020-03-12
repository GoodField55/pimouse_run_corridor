#!/bin/bash -xve

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_run_corridor/

#pimouse_ros を git clone でワークスペースに持ってくる
cd ~/catkin_ws/src/
git clone --depth=1 https://github.com/GoodField55/pimouse_ros.git
          #↑depth=1を指定すると最新のものだけをクローンできる

cd ~/catkin_ws
catkin_make

