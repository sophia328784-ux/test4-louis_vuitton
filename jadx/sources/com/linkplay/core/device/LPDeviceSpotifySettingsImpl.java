package com.linkplay.core.device;

import android.text.TextUtils;
import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.impl.h;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPDlnaPlayerData;
import com.linkplay.core.listener.LPDevicePlayerListener;
import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import defpackage.n00;
import java.util.Map;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes2.dex */
class LPDeviceSpotifySettingsImpl implements LPDeviceSpotifySettings {
    private String upnpUUID;

    public LPDeviceSpotifySettingsImpl(String str) {
        this.upnpUUID = str;
    }

    private LPDevice getLPDevice() {
        if (TextUtils.isEmpty(this.upnpUUID)) {
            return null;
        }
        return LPDeviceManager.getInstance().deviceForID(this.upnpUUID);
    }

    private Device getUpnpDevice() {
        if (TextUtils.isEmpty(this.upnpUUID)) {
            return null;
        }
        return LPDlnaPlayerData.me().getMediaRenderByuuid(this.upnpUUID);
    }

    private boolean skipLimitHas(int i2) {
        int skiplimit;
        LPDevice lPDevice = getLPDevice();
        if (lPDevice == null || !TextUtils.equals(lPDevice.getMediaInfo().getMediaType(), "SPOTIFY") || (skiplimit = lPDevice.getMediaInfo().getSkiplimit()) > 7) {
            return false;
        }
        if (skiplimit == 7) {
            return true;
        }
        if (skiplimit == 0) {
            return false;
        }
        if ((skiplimit & i2) == i2) {
            return true;
        }
        if (3 == skiplimit && (i2 == 1 || i2 == 2)) {
            return true;
        }
        if (5 == skiplimit && (i2 == 1 || i2 == 4)) {
            return true;
        }
        return 6 == skiplimit && (i2 == 2 || i2 == 4);
    }

    @Override // com.linkplay.core.device.LPDeviceSpotifySettings
    public boolean isFreeSpotifyAccount() {
        LPDevice lPDevice = getLPDevice();
        return (lPDevice == null || !TextUtils.equals(lPDevice.getMediaInfo().getMediaType(), "SPOTIFY") || lPDevice.getMediaInfo().getSkiplimit() == 0) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x006d  */
    @Override // com.linkplay.core.device.LPDeviceSpotifySettings
    public boolean isShowSpotifySeekButton() {
        boolean z;
        LPDevice lPDevice = getLPDevice();
        if (lPDevice == null) {
            return false;
        }
        String mediaType = lPDevice.getMediaInfo().getMediaType();
        if (TextUtils.isEmpty(mediaType)) {
            return false;
        }
        String trackSource = lPDevice.getMediaInfo().getTrackSource();
        if (TextUtils.isEmpty(trackSource)) {
            return false;
        }
        if (TextUtils.equals(mediaType, "SPOTIFY") && (trackSource.trim().toUpperCase().startsWith("spotify:show".toUpperCase()) || trackSource.trim().toUpperCase().startsWith(LPPlayHeader.LPPlayMediaType.SPOTIFY_EPISODE.toUpperCase()))) {
            z = true;
            if (Integer.parseInt(lPDevice.getDeviceStatus().getUpnpVersion()) == 1005 && skipLimitHas(1)) {
                z = false;
            }
        } else {
            z = false;
        }
        if (Integer.parseInt(lPDevice.getDeviceStatus().getUpnpVersion()) == 1005 && isFreeSpotifyAccount()) {
            return false;
        }
        return z;
    }

    @Override // com.linkplay.core.device.LPDeviceSpotifySettings
    public boolean spotifyNextEnable() {
        LPDevice lPDevice = getLPDevice();
        if (lPDevice == null) {
            return false;
        }
        String mediaType = lPDevice.getMediaInfo().getMediaType();
        if (TextUtils.isEmpty(mediaType) || TextUtils.isEmpty(lPDevice.getMediaInfo().getTrackSource())) {
            return false;
        }
        boolean z = TextUtils.equals(mediaType, "SPOTIFY") && !(Integer.parseInt(lPDevice.getDeviceStatus().getUpnpVersion()) == 1005 && skipLimitHas(8));
        if (Integer.parseInt(lPDevice.getDeviceStatus().getUpnpVersion()) == 1005 && isFreeSpotifyAccount()) {
            return false;
        }
        return z;
    }

    @Override // com.linkplay.core.device.LPDeviceSpotifySettings
    public boolean spotifyPrevEnable() {
        LPDevice lPDevice = getLPDevice();
        if (lPDevice == null) {
            return false;
        }
        String mediaType = lPDevice.getMediaInfo().getMediaType();
        if (TextUtils.isEmpty(mediaType) || TextUtils.isEmpty(lPDevice.getMediaInfo().getTrackSource())) {
            return false;
        }
        boolean z = TextUtils.equals(mediaType, "SPOTIFY") && !(Integer.parseInt(lPDevice.getDeviceStatus().getUpnpVersion()) == 1005 && skipLimitHas(4));
        if (Integer.parseInt(lPDevice.getDeviceStatus().getUpnpVersion()) == 1005 && isFreeSpotifyAccount()) {
            return false;
        }
        return z;
    }

    @Override // com.linkplay.core.device.LPDeviceSpotifySettings
    public void spotifySeekBackward(final LPDevicePlayerListener lPDevicePlayerListener) {
        Device upnpDevice = getUpnpDevice();
        if (upnpDevice == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.a().BackForward(upnpDevice, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDeviceSpotifySettingsImpl.1
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess("Success");
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(e2);
            }
        }
    }

    @Override // com.linkplay.core.device.LPDeviceSpotifySettings
    public boolean spotifySeekEnable() {
        LPDevice lPDevice = getLPDevice();
        if (lPDevice == null) {
            return false;
        }
        String mediaType = lPDevice.getMediaInfo().getMediaType();
        if (TextUtils.isEmpty(mediaType) || TextUtils.isEmpty(lPDevice.getMediaInfo().getTrackSource())) {
            return false;
        }
        boolean z = TextUtils.equals(mediaType, "SPOTIFY") && !(Integer.parseInt(lPDevice.getDeviceStatus().getUpnpVersion()) == 1005 && skipLimitHas(2));
        if (Integer.parseInt(lPDevice.getDeviceStatus().getUpnpVersion()) == 1005 && isFreeSpotifyAccount()) {
            return false;
        }
        return z;
    }

    @Override // com.linkplay.core.device.LPDeviceSpotifySettings
    public void spotifySeekForward(final LPDevicePlayerListener lPDevicePlayerListener) {
        Device upnpDevice = getUpnpDevice();
        if (upnpDevice == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.a().SeekForward(upnpDevice, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDeviceSpotifySettingsImpl.2
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess("Success");
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(e2);
            }
        }
    }
}
