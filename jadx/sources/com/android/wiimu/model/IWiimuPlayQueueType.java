package com.android.wiimu.model;

import com.linkplay.lpmdpkit.utils.PhoneUUIDBuilder;

/* JADX INFO: loaded from: classes5.dex */
public interface IWiimuPlayQueueType {
    public static final String ALDI_LIFE_MUSIK = "AldiLife";
    public static final String AmazonMusic = "Amazon Music";
    public static final String EXTALEXA = "ALEXA";
    public static final String EXTALI_RPC = "ALI-RPC";
    public static final String EXTDEEZER = "Deezer";
    public static final String EXTIHeartRadio = "iHeartRadio";
    public static final String EXTQPLAY = "QPLAY";
    public static final String EXTQingtingFM = "Qingtingfm";
    public static final String EXTRHAPSODY = "Rhapsody";
    public static final String EXTTIDAL = "Tidal";
    public static final String EXTVTUNER = "vTuner";
    public static final String ExtBaseSuffix = "_#~";
    public static final String ExtCurrentQueue = "CurrentQueue";
    public static final String ExtCustomListQueue = "WiimuCustomList";
    public static final String ExtDoubanRadio = "Douban";
    public static final String ExtDownloadSuffix = "_#~download";
    public static final String ExtFavouriteQueue = "MyFavouriteQueue";
    public static final String ExtHistoryQueue = "HistoryDiskQueue";
    public static final String ExtLocalPreffix;
    public static final String ExtLocalQueue;
    public static final String ExtMyFavouriteQueue = "MyFavouriteQueue";
    public static final String ExtPandoraRadio = "Pandora";
    public static final String ExtPreset = "PresetSongs";
    public static final String ExtQingTingSuffix = "_#~qingting";
    public static final String ExtRecentlyQueue = "RecentlyQueue";
    public static final String ExtRemoteLocalSuffix = "_RemoteLocal";
    public static final String ExtSpotify = "SPOTIFY";
    public static final String ExtSpotifySuffix = "_#~spotify";
    public static final String ExtTFCardSuffix = "_#~mytfcard";
    public static final String ExtTTPodSearch;
    public static final String ExtTTPodSearchSuffix = "ttpod_search";
    public static final String ExtTianTianDongTingSuffix = "_#~ttdt";
    public static final String ExtTianTianMusic;
    public static final String ExtTianTianMusicSearchSuffix = "天天动听搜索";
    public static final String ExtTianTianMusicSuffix = "天天动听";
    public static final String ExtTianTianMusicSuffixSearch = "_#~ttpodsearch";
    public static final String ExtTotalQueue = "TotalQueue";
    public static final String ExtTuneRadio = "TuneIn";
    public static final String ExtUSBDiskQueue = "USBDiskQueue";
    public static final String ExtUpnpServer = "UPnPServer";
    public static final String ExtXimalaya = "Ximalaya";
    public static final String ExtXimalayaSuffix = "_#~xmly";
    public static final String Kindle = "Kindle Books";
    public static final String Qobuz = "Qobuz";
    public static final String RADIODE = "RadioNet";
    public static final String SAAVN = "SAAVN";
    public static final String SiriusXM = "SIRIUSXM";

    static {
        String str = "Android_" + PhoneUUIDBuilder.uuidBuild();
        ExtLocalPreffix = str;
        ExtLocalQueue = str.concat("_RemoteLocal");
        ExtTianTianMusic = str.concat(ExtTianTianMusicSuffix);
        ExtTTPodSearch = str.concat(ExtTTPodSearchSuffix);
    }
}
