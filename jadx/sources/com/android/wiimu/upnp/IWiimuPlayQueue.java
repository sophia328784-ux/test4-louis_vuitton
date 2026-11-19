package com.android.wiimu.upnp;

import com.linkplay.core.nas.LPMediaServerPlayItem;
import com.linkplay.core.nas.LPMediaServerResultListener;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes.dex */
public interface IWiimuPlayQueue {
    void appendTracksInQueue(String str, int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void appendTracksInQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void appendTracksInQueueEx(String str, int i2, int i3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void backupQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void browseNAS(Device device, LPMediaServerPlayItem lPMediaServerPlayItem, int i2, int i3, LPMediaServerResultListener lPMediaServerResultListener) throws Exception;

    void browseQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void browseQueueUSBDisk(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void createQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void deleteQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getKeyMapping(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getQueueIndex(Device device, String str, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getQueueLoopMode(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getQueueOnline(String str, String str2, String str3, int i2, String str4, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getUserFavorites(Device device, String str, String str2, String str3, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getUserInfo(Device device, String str, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getUserInfo(Device device, String str, String str2, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getUserInfo(Device device, String str, boolean z, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getUserLogin(Device device, String str, String str2, String str3, String str4, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void getUserLogout(Device device, String str, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void playQueueWithIndex(String str, int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void removeTracksInQueue(String str, int i2, int i3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void replaceQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void searchQueueOnline(String str, String str2, int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setKeyMapping(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setQueueLoopMode(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setQueuePolicy(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setQueueRecord(String str, String str2, String str3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setSongsRecord(String str, String str2, String str3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void setSpotifyPreset(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;

    void userRegister(String str, String str2, String str3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception;
}
