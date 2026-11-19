package com.android.wiimu.upnp.impl;

import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.IWiimuPlayQueue;
import com.linkplay.core.nas.LPMediaServerPlayItem;
import com.linkplay.core.nas.LPMediaServerResultListener;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes.dex */
public class j implements IWiimuPlayQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IWiimuPlayQueue f22584a;

    public static class a {
        private a() {
        }

        public static j a() {
            return new j(0);
        }
    }

    private j() {
        this.f22584a = new d();
    }

    public static j a() {
        return a.a();
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void appendTracksInQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.appendTracksInQueue(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void appendTracksInQueueEx(String str, int i2, int i3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.appendTracksInQueueEx(str, i2, i3, device, iWiimuActionCallback);
    }

    public IWiimuPlayQueue b() {
        return this.f22584a;
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void backupQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.backupQueue(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void browseNAS(Device device, LPMediaServerPlayItem lPMediaServerPlayItem, int i2, int i3, LPMediaServerResultListener lPMediaServerResultListener) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue != null) {
            iWiimuPlayQueue.browseNAS(device, lPMediaServerPlayItem, i2, i3, lPMediaServerResultListener);
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void browseQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.browseQueue(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void browseQueueUSBDisk(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.browseQueueUSBDisk(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void createQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.createQueue(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void deleteQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.deleteQueue(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getKeyMapping(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.getKeyMapping(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getQueueIndex(Device device, String str, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.getQueueIndex(device, str, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getQueueLoopMode(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.getQueueLoopMode(device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getQueueOnline(String str, String str2, String str3, int i2, String str4, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.getQueueOnline(str, str2, str3, i2, str4, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserFavorites(Device device, String str, String str2, String str3, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.getUserFavorites(device, str, str2, str3, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserInfo(Device device, String str, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.getUserInfo(device, str, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserLogin(Device device, String str, String str2, String str3, String str4, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.getUserLogin(device, str, str2, str3, str4, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserLogout(Device device, String str, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.getUserLogout(device, str, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void playQueueWithIndex(String str, int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.playQueueWithIndex(str, i2, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void removeTracksInQueue(String str, int i2, int i3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.removeTracksInQueue(str, i2, i3, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void replaceQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.replaceQueue(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void searchQueueOnline(String str, String str2, int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.searchQueueOnline(str, str2, i2, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setKeyMapping(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.setKeyMapping(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setQueueLoopMode(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.setQueueLoopMode(i2, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setQueuePolicy(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.setQueuePolicy(str, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setQueueRecord(String str, String str2, String str3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.setQueueRecord(str, str2, str3, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setSongsRecord(String str, String str2, String str3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.setSongsRecord(str, str2, str3, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setSpotifyPreset(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.setSpotifyPreset(i2, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void userRegister(String str, String str2, String str3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.userRegister(str, str2, str3, device, iWiimuActionCallback);
    }

    public void a(IWiimuPlayQueue iWiimuPlayQueue) {
        this.f22584a = iWiimuPlayQueue;
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void appendTracksInQueue(String str, int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.appendTracksInQueue(str, i2, device, iWiimuActionCallback);
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserInfo(Device device, String str, boolean z, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.getUserInfo(device, str, z, iWiimuActionCallback);
    }

    public /* synthetic */ j(int i2) {
        this();
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserInfo(Device device, String str, String str2, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuPlayQueue iWiimuPlayQueue = this.f22584a;
        if (iWiimuPlayQueue == null) {
            return;
        }
        iWiimuPlayQueue.getUserInfo(device, str, str2, iWiimuActionCallback);
    }
}
