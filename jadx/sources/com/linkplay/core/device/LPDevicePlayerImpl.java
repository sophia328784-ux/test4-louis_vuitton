package com.linkplay.core.device;

import android.text.TextUtils;
import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.impl.h;
import com.android.wiimu.upnp.impl.j;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPDlnaPlayerData;
import com.linkplay.core.listener.LPDevicePlayerListener;
import com.linkplay.core.status.LPPlayMode;
import com.linkplay.core.status.LPPlayQueueType;
import com.linkplay.core.status.LPSpotifyPlayMode;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import com.linkplay.lpmdpkit.bean.LPPlayMediaData;
import com.linkplay.lpmdpkit.utils.LPLogUtil;
import com.linkplay.mediainfo.LPMediaInfo;
import com.linkplay.mediainfo.parser.LPCurrentQueueController;
import com.linkplay.mediainfo.parser.LPSourceCurrentQueueItem;
import defpackage.n00;
import java.util.List;
import java.util.Map;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes2.dex */
public class LPDevicePlayerImpl implements ILPDevicePlayer {
    private long mStartProgressTimer = 0;
    long startSetVolume = 0;
    private String upnpUUID;

    public LPDevicePlayerImpl(String str) {
        this.upnpUUID = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void appendTracks(final boolean z, final int i2, final LPPlayMediaData lPPlayMediaData) {
        List<String> tailData = z ? lPPlayMediaData.getTailData() : lPPlayMediaData.getHeadData();
        if (z) {
            if (tailData == null || tailData.size() <= i2) {
                appendTracks(false, 0, lPPlayMediaData);
            }
        } else if (tailData == null || tailData.size() <= i2) {
            return;
        }
        try {
            String str = tailData.get(i2);
            Device device = getDevice();
            if (device != null && !TextUtils.isEmpty(str)) {
                j.a().appendTracksInQueueEx(str, 0, z ? 1 : 0, device, new IWiimuActionCallback() { // from class: com.linkplay.core.device.LPDevicePlayerImpl.3
                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void failure(Exception exc) {
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "append queue failed");
                    }

                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void success(Map map) {
                        LPDevicePlayerImpl.this.appendTracks(z, i2 + 1, lPPlayMediaData);
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void appendTracksInQueueEx(String str, int i2, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.b().appendTracksInQueueEx(str, i2, 1, device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.17
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

    private void browseCurrentQueue(final String str, final LPMediaInfo lPMediaInfo, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.b().browseQueue(LPPlayQueueType.LP_CURRENT_QUEUE.getValue(), device, new IWiimuActionCallback() { // from class: com.linkplay.core.device.LPDevicePlayerImpl.15
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    if (map != null && map.size() != 0) {
                        LPDevicePlayerImpl.this.parseCurrentQueue(str, lPMediaInfo, LPCurrentQueueController.convert2CurrentQueueItem(map.get("QueueContext").toString()), lPDevicePlayerListener);
                    } else {
                        LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                        if (lPDevicePlayerListener2 != null) {
                            n00.B("next play failed", lPDevicePlayerListener2);
                        }
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

    private void createQueue(final LPPlayMediaData lPPlayMediaData, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            if (lPPlayMediaData == null) {
                if (lPDevicePlayerListener != null) {
                    lPDevicePlayerListener.onFailure(new Exception("play media data empty"));
                    return;
                }
                return;
            }
            String playData = lPPlayMediaData.getPlayData();
            if (!TextUtils.isEmpty(playData)) {
                j.a().createQueue(playData, device, new IWiimuActionCallback() { // from class: com.linkplay.core.device.LPDevicePlayerImpl.1
                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void failure(Exception exc) {
                        LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                        if (lPDevicePlayerListener2 != null) {
                            lPDevicePlayerListener2.onFailure(exc);
                        }
                    }

                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void success(Map map) {
                        LPDevicePlayerImpl.this.playQueueWithIndex(lPPlayMediaData, lPDevicePlayerListener);
                        LPDevicePlayerImpl.this.appendTracks(true, 0, lPPlayMediaData);
                    }
                });
            } else if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(new Exception("play media data empty"));
            }
        } catch (Exception e2) {
            if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(e2);
            }
        }
    }

    private Device getDevice() {
        if (TextUtils.isEmpty(this.upnpUUID)) {
            return null;
        }
        return LPDlnaPlayerData.me().getMediaRenderByuuid(this.upnpUUID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insertNext(final String str, final LPDevicePlayerListener lPDevicePlayerListener) {
        try {
            Device device = getDevice();
            if (device != null) {
                h.b().getQueueIndex(device, LPPlayQueueType.LP_CURRENT_QUEUE.getValue(), new IWiimuActionCallback() { // from class: com.linkplay.core.device.LPDevicePlayerImpl.18
                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void failure(Exception exc) {
                        LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                        if (lPDevicePlayerListener2 != null) {
                            lPDevicePlayerListener2.onFailure(exc);
                        }
                    }

                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void success(Map map) {
                        LPDevicePlayerImpl.this.appendTracksInQueueEx(str, Integer.parseInt(map.get("CurrentIndex").toString()), lPDevicePlayerListener);
                    }
                });
            } else if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(new Exception("null device exception"));
            }
        } catch (Exception e2) {
            if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseCurrentQueue(String str, LPMediaInfo lPMediaInfo, LPSourceCurrentQueueItem lPSourceCurrentQueueItem, LPDevicePlayerListener lPDevicePlayerListener) {
        List<LPMediaInfo> list;
        if (lPSourceCurrentQueueItem == null || (list = lPSourceCurrentQueueItem.tracksList) == null || list.size() == 0 || lPMediaInfo == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("next play failed", lPDevicePlayerListener);
                return;
            }
            return;
        }
        int size = lPSourceCurrentQueueItem.tracksList.size();
        int i2 = 1;
        for (int i3 = 0; i3 < size; i3++) {
            LPMediaInfo lPMediaInfo2 = lPSourceCurrentQueueItem.tracksList.get(i3);
            if (lPMediaInfo2 != null) {
                String title = lPMediaInfo2.getTitle() == null ? "" : lPMediaInfo2.getTitle();
                String album = lPMediaInfo2.getAlbum() == null ? "" : lPMediaInfo2.getAlbum();
                String artist = lPMediaInfo2.getArtist() == null ? "" : lPMediaInfo2.getArtist();
                String title2 = lPMediaInfo.getTitle() == null ? "" : lPMediaInfo.getTitle();
                String album2 = lPMediaInfo.getAlbum() == null ? "" : lPMediaInfo.getAlbum();
                String artist2 = lPMediaInfo.getArtist() != null ? lPMediaInfo.getArtist() : "";
                if (title.equals(title2) && album.equals(album2) && artist.equals(artist2)) {
                    removeTrackInQueue(str, i2, i2, lPDevicePlayerListener);
                    return;
                }
                i2++;
            }
        }
        insertNext(str, lPDevicePlayerListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playQueueWithIndex(LPPlayMediaData lPPlayMediaData, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
            }
        } else {
            try {
                j.a().playQueueWithIndex(lPPlayMediaData.getQueueName(), lPPlayMediaData.getPlayIndex(), device, new IWiimuActionCallback() { // from class: com.linkplay.core.device.LPDevicePlayerImpl.2
                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void failure(Exception exc) {
                        LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                        if (lPDevicePlayerListener2 != null) {
                            lPDevicePlayerListener2.onFailure(exc);
                        }
                    }

                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void success(Map map) {
                        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(LPDevicePlayerImpl.this.upnpUUID);
                        if (lPDeviceDeviceForID != null) {
                            lPDeviceDeviceForID.getMediaInfo().setTickTime(0L);
                            lPDeviceDeviceForID.getMediaInfo().setTotalTime(0L);
                        }
                        String string = map != null ? map.toString() : "Success";
                        LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                        if (lPDevicePlayerListener2 != null) {
                            lPDevicePlayerListener2.onSuccess(string);
                        }
                    }
                });
            } catch (Exception e2) {
                if (lPDevicePlayerListener != null) {
                    lPDevicePlayerListener.onFailure(e2);
                }
            }
        }
    }

    private void removeTrackInQueue(final String str, int i2, int i3, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
            }
        } else {
            try {
                h.b().removeTracksInQueue(LPPlayQueueType.LP_CURRENT_QUEUE.getValue(), i2, i3, device, new IWiimuActionCallback() { // from class: com.linkplay.core.device.LPDevicePlayerImpl.16
                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void failure(Exception exc) {
                        LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                        if (lPDevicePlayerListener2 != null) {
                            lPDevicePlayerListener2.onFailure(exc);
                        }
                    }

                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void success(Map map) {
                        LPDevicePlayerImpl.this.insertNext(str, lPDevicePlayerListener);
                    }
                });
            } catch (Exception e2) {
                if (lPDevicePlayerListener != null) {
                    lPDevicePlayerListener.onFailure(e2);
                }
            }
        }
    }

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void browseQueue(String str, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
            }
        } else {
            try {
                h.b().browseQueue(str, device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.14
                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void failure(Exception exc) {
                        LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                        if (lPDevicePlayerListener2 != null) {
                            lPDevicePlayerListener2.onFailure(exc);
                        }
                    }

                    @Override // com.android.wiimu.upnp.IWiimuActionCallback
                    public void success(Map map) {
                        if (map == null || map.size() == 0) {
                            LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                            if (lPDevicePlayerListener2 != null) {
                                n00.B("next play failed", lPDevicePlayerListener2);
                                return;
                            }
                            return;
                        }
                        LPDevicePlayerListener lPDevicePlayerListener3 = lPDevicePlayerListener;
                        if (lPDevicePlayerListener3 != null) {
                            lPDevicePlayerListener3.onSuccess(map.get("QueueContext").toString());
                        }
                    }
                });
            } catch (Exception e2) {
                if (lPDevicePlayerListener != null) {
                    lPDevicePlayerListener.onFailure(e2);
                }
            }
        }
    }

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void deleteWithIndex(int i2, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.b().removeTracksInQueue(LPPlayQueueType.LP_CURRENT_QUEUE.getValue(), i2, i2, device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.19
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void next(final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.a().next(device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.7
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    String string = map != null ? map.toString() : "Success";
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess(string);
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void nextPlay(LPPlayMediaData lPPlayMediaData, LPMediaInfo lPMediaInfo, LPDevicePlayerListener lPDevicePlayerListener) {
        if (getDevice() == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            if (lPPlayMediaData == null) {
                if (lPDevicePlayerListener != null) {
                    lPDevicePlayerListener.onFailure(new Exception("play data empty"));
                    return;
                }
                return;
            }
            String playData = lPPlayMediaData.getPlayData();
            if (!TextUtils.isEmpty(playData)) {
                browseCurrentQueue(playData, lPMediaInfo, lPDevicePlayerListener);
            } else if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(new Exception("play media data empty"));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(e2);
            }
        }
    }

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void pause(final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.a().pause(device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.5
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    String string = map != null ? map.toString() : "Success";
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess(string);
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void play(final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.a().play(device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.4
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    String string = map != null ? map.toString() : "Success";
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess(string);
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void playAudio(LPPlayMediaData lPPlayMediaData, LPDevicePlayerListener lPDevicePlayerListener) {
        if (getDevice() == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            if (lPPlayMediaData != null) {
                createQueue(lPPlayMediaData, lPDevicePlayerListener);
            } else if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(new Exception("play data param null"));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(e2);
            }
        }
    }

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void playCurrentPlayListWithIndex(int i2, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.b().playQueueWithIndex(LPPlayQueueType.LP_CURRENT_QUEUE.getValue(), i2 + 1, device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.21
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void playUSBSongsWithIndex(int i2, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.b().playQueueWithIndex(LPPlayQueueType.LP_USBDISK_QUEUE.getValue(), i2, device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.20
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void previous(final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.a().previous(device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.8
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    String string = map != null ? map.toString() : "Success";
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess(string);
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void queryCurrentPlaylist(LPDevicePlayerListener lPDevicePlayerListener) {
        if (getDevice() == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            browseQueue(LPPlayQueueType.LP_CURRENT_QUEUE.getValue(), lPDevicePlayerListener);
        } catch (Exception e2) {
            e2.printStackTrace();
            if (lPDevicePlayerListener != null) {
                lPDevicePlayerListener.onFailure(e2);
            }
        }
    }

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void setChannel(int i2, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.c().setChannel(i2, device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.12
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    String string = map != null ? map.toString() : "Success";
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess(string);
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void setPlayMode(LPPlayMode lPPlayMode, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.b().setQueueLoopMode(lPPlayMode.getStatus(), device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.10
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    String string = map != null ? map.toString() : "Success";
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess(string);
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void setProgress(int i2, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        LPLogUtil.i(LPLogUtil.LP_MUSIC_KIT, "setProgress start++");
        if (System.currentTimeMillis() - this.mStartProgressTimer <= 300) {
            LPLogUtil.i(LPLogUtil.LP_MUSIC_KIT, "setProgress start jump");
            return;
        }
        LPLogUtil.i(LPLogUtil.LP_MUSIC_KIT, "setProgress start send");
        this.mStartProgressTimer = System.currentTimeMillis();
        try {
            h.a().seek(i2, device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.9
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    String string = map != null ? map.toString() : "Success";
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess(string);
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void setSpotifyPlayMode(LPSpotifyPlayMode lPSpotifyPlayMode, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.b().setQueueLoopMode(lPSpotifyPlayMode.getStatus(), device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.11
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    String string = map != null ? map.toString() : "Success";
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess(string);
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void setVolume(int i2, final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            if (System.currentTimeMillis() - this.startSetVolume <= 150) {
                return;
            }
            this.startSetVolume = System.currentTimeMillis();
            h.c().setVolume(i2, device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.13
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    String string = map != null ? map.toString() : "Success";
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess(string);
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

    @Override // com.linkplay.core.device.ILPDevicePlayer
    public void stop(final LPDevicePlayerListener lPDevicePlayerListener) {
        Device device = getDevice();
        if (device == null) {
            if (lPDevicePlayerListener != null) {
                n00.B("null device exception", lPDevicePlayerListener);
                return;
            }
            return;
        }
        try {
            h.a().stop(device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.device.LPDevicePlayerImpl.6
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onFailure(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    String string = map != null ? map.toString() : "Success";
                    LPDevicePlayerListener lPDevicePlayerListener2 = lPDevicePlayerListener;
                    if (lPDevicePlayerListener2 != null) {
                        lPDevicePlayerListener2.onSuccess(string);
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
