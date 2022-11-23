# device_oppo_PCCM00
oppo reno10倍变焦版twrp设备树

此设备树暂不能编译可用的recovery,卡在了系统recovery分区大小不足,即使精简了twrp的中文字体等

oppo reno10x系统recovery分区大小只有64mb所以也无法刷入,所以也没办法测试编译出的recovery是否能启动

如果要正常编译(twrp12.1),需要修改BOARD_RECOVERYIMAGE_PARTITION_SIZE到更大值,例如134217728(120mb)

不修改直接编译会出现error: +out/target/product/PCCM00/recovery.img too large (67485696 > 67039232)

我还不确定是否必须要dtb部分,不要dtb部分则可正常编译刷入但是无法启动
