package com.linkplay.core.clingx;

import android.text.TextUtils;
import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.impl.h;
import com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback;
import com.android.wiimu.upnp.sucription.a;
import com.android.wiimu.upnp.sucription.c;
import com.google.gson.Gson;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.model.LPDeviceInfo;
import com.linkplay.core.model.LPDeviceStatus;
import com.linkplay.core.status.LPPendingMask;
import com.linkplay.core.status.LPPendingSlave;
import com.linkplay.core.status.LPPlayChannel;
import com.linkplay.core.status.LPPlayMode;
import com.linkplay.core.status.LPPlayStatus;
import com.linkplay.core.status.LPSpotifyPlayMode;
import com.linkplay.core.utils.ToolsUtil;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import com.linkplay.lpmdpkit.LPPlaySourceType;
import com.linkplay.lpmdpkit.bean.DeviceStreamServices;
import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import com.linkplay.lpmdpkit.observer.LPDeviceObserverManager;
import com.linkplay.lpmdpkit.observer.LPNotification;
import com.linkplay.lpmdpkit.observer.LPNotificationType;
import com.linkplay.lpmdpkit.utils.LPXmlUtil;
import com.linkplay.mediainfo.LPMediaInfo;
import com.linkplay.medialib.ContentTree;
import com.linkplay.request.LPRequestAction;
import com.linkplay.request.RequestItem;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.teleal.cling.model.ModelUtil;
import org.teleal.cling.model.gena.CancelReason;
import org.teleal.cling.model.gena.GENASubscription;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes2.dex */
public class LPDlnaServiceProvider {
    private LPDevice deviceItem;
    private Timer dlnatimer;
    Device mediaRender;
    private Timer seekbarTimer;
    private long showNetDelayTime;
    private boolean isStop = false;
    private final long NET_DELAY_TIME = 9000;
    private boolean firstLoad = true;
    TimerTask dlnaGetInfoExTimerTask = null;
    TimerTask viewTimerTask = null;
    int avtransportSubscriptTime = 0;
    int renderingControlSubscriptTime = 0;
    final int MinSubscriptTime = 4;

    public LPDlnaServiceProvider(LPDevice lPDevice) {
        this.showNetDelayTime = 0L;
        this.deviceItem = lPDevice;
        this.showNetDelayTime = System.currentTimeMillis();
    }

    private void initGetInfoExTimerTask() {
        TimerTask timerTask = this.dlnaGetInfoExTimerTask;
        if (timerTask != null) {
            timerTask.cancel();
            this.dlnaGetInfoExTimerTask = null;
        }
        this.dlnaGetInfoExTimerTask = new TimerTask() { // from class: com.linkplay.core.clingx.LPDlnaServiceProvider.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                LPDlnaServiceProvider lPDlnaServiceProvider = LPDlnaServiceProvider.this;
                if (lPDlnaServiceProvider.isStop || lPDlnaServiceProvider.deviceItem == null) {
                    return;
                }
                lPDlnaServiceProvider.makeDlnaGetInfoEx();
            }
        };
    }

    private void initServiceProvider() {
        makeDlnaSubscriptionAll();
        makeDlnaMediaInfo();
    }

    private void initViewTimerTask() {
        TimerTask timerTask = this.viewTimerTask;
        if (timerTask != null) {
            timerTask.cancel();
            this.viewTimerTask = null;
        }
        this.viewTimerTask = new TimerTask() { // from class: com.linkplay.core.clingx.LPDlnaServiceProvider.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                LPDlnaServiceProvider lPDlnaServiceProvider = LPDlnaServiceProvider.this;
                if (lPDlnaServiceProvider.isStop || lPDlnaServiceProvider.deviceItem == null || !LPDeviceManager.getInstance().isAppOnForeground()) {
                    return;
                }
                LPDeviceInfo deviceInfo = LPDlnaServiceProvider.this.deviceItem.getDeviceInfo();
                LPMediaInfo mediaInfo = LPDlnaServiceProvider.this.deviceItem.getMediaInfo();
                if (mediaInfo.getTickTime() >= mediaInfo.getTotalTime() || !deviceInfo.getPlayStatus().equals(LPPlayStatus.LP_PLAY_STATUS_PLAYING)) {
                    return;
                }
                mediaInfo.setTickTime(mediaInfo.getTickTime() + 1);
                LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.REAL_TIME_CHANGED).setUuid(LPDlnaServiceProvider.this.deviceItem.getUpnpUUID()).setPayload("").build());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void makeDlnaSubscriptionRenderingControl() {
        if (this.renderingControlSubscriptTime > 4) {
            this.renderingControlSubscriptTime = 0;
            return;
        }
        reloadMediaRender();
        if (this.mediaRender == null) {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "mediaRender is null makeDlnaSubscriptionRenderingControl");
            return;
        }
        try {
            c.a().subscriptEventRenderingControl(this.mediaRender, new IWiimuSubscriptionEventCallback() { // from class: com.linkplay.core.clingx.LPDlnaServiceProvider.7
                @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                public void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse) {
                    LinkplayLog.e(LinkplayLogTags.LPLogTag, "AVTransport:Subscription:ended:" + gENASubscription.e());
                }

                @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                public void established(GENASubscription gENASubscription) {
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "AVTransport:Subscription:established:" + gENASubscription.e());
                }

                @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                public void eventReceived(GENASubscription gENASubscription) {
                    LPDlnaServiceProvider.this.renderingControlSubscriptTime = 0;
                    Map<String, String> mapD = a.a().d(gENASubscription);
                    if (mapD == null) {
                        return;
                    }
                    LPDlnaServiceProvider.this.parseRenderingControl(mapD);
                }

                @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                public void eventsMissed(GENASubscription gENASubscription, int i2) {
                    LinkplayLog.e(LinkplayLogTags.LPLogTag, "RenderingControl:Subscription:missed:" + gENASubscription.e());
                }

                @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str) {
                    LinkplayLog.e(LinkplayLogTags.LPLogTag, "RenderingControl Subscription failed  :" + LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().getSSID());
                    LPDlnaServiceProvider lPDlnaServiceProvider = LPDlnaServiceProvider.this;
                    lPDlnaServiceProvider.renderingControlSubscriptTime = lPDlnaServiceProvider.renderingControlSubscriptTime + 1;
                    lPDlnaServiceProvider.makeDlnaSubscriptionRenderingControl();
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseAVTransport(Map<String, String> map) {
        String str;
        LPMediaInfo mediaInfo;
        LPDeviceInfo deviceInfo;
        try {
            if (!map.containsKey("CurrentTrackDuration") && !map.containsKey("CurrentTrackMetaData")) {
                if (!map.containsKey("TransportState")) {
                    if (map.containsKey("TransportState")) {
                        map.containsKey("A_ARG_TYPE_SeekTarget");
                        return;
                    }
                    return;
                }
                if (map.containsKey("A_ARG_TYPE_SeekTarget")) {
                    if (this.deviceItem != null) {
                        if (map.containsKey("TransportState")) {
                            String str2 = map.get("TransportState");
                            LPDeviceInfo deviceInfo2 = this.deviceItem.getDeviceInfo();
                            if (deviceInfo2 != null) {
                                deviceInfo2.setPlayStatus(LPPlayStatus.byOrdinal(str2));
                                LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_INFO_CHANGE).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                            }
                        }
                        if (map.containsKey("A_ARG_TYPE_SeekTarget")) {
                            long jA = ModelUtil.a(map.get("A_ARG_TYPE_SeekTarget"));
                            LPMediaInfo mediaInfo2 = this.deviceItem.getMediaInfo();
                            if (mediaInfo2 != null) {
                                mediaInfo2.setTickTime(jA);
                                LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.META_DATA_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (map.containsKey("CurrentTrackDuration")) {
                    if (this.deviceItem != null) {
                        if (map.containsKey("") && (deviceInfo = this.deviceItem.getDeviceInfo()) != null) {
                            deviceInfo.setPlayStatus(LPPlayStatus.byOrdinal(map.get("TransportState")));
                            LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_INFO_CHANGE).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                        }
                        if (map.containsKey("CurrentTrackDuration")) {
                            LPMediaInfo mediaInfo3 = this.deviceItem.getMediaInfo();
                            long jA2 = ModelUtil.a(map.get("CurrentTrackDuration"));
                            if (mediaInfo3 != null) {
                                mediaInfo3.setTotalTime(jA2);
                                LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.META_DATA_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (map.containsKey("TransportState")) {
                    str = map.get("TransportState");
                    this.deviceItem.getDeviceInfo().setPlayStatus(LPPlayStatus.byOrdinal(str));
                    LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_INFO_CHANGE).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                } else {
                    str = "";
                }
                LPDevice lPDevice = this.deviceItem;
                if (lPDevice == null || (mediaInfo = lPDevice.getMediaInfo()) == null) {
                    return;
                }
                LPPlayStatus lPPlayStatus = LPPlayStatus.LP_PLAY_STATUS_STOPPED;
                if (str.equals(lPPlayStatus) && mediaInfo.getTrackSource().contains(LPPlaySourceType.LP_PRIME)) {
                    mediaInfo.setTickTime(0L);
                    mediaInfo.setTotalTime(-1L);
                } else if (str.equals(lPPlayStatus)) {
                    mediaInfo.setTickTime(0L);
                    mediaInfo.setTotalTime(0L);
                }
                LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.META_DATA_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                return;
            }
            parseMediaInfo(map);
        } catch (Exception unused) {
        }
    }

    private void parseMediaInfo(Map<String, String> map) {
        try {
            if (this.deviceItem == null) {
                return;
            }
            if (map.containsKey("TransportState") || map.containsKey("PlaybackStorageMedium")) {
                String str = map.get("TransportState");
                String str2 = map.get("PlaybackStorageMedium");
                LPDeviceInfo deviceInfo = this.deviceItem.getDeviceInfo();
                if (deviceInfo != null) {
                    if (str2 != null) {
                        deviceInfo.setPlayMedium(str2);
                    }
                    if (str != null) {
                        deviceInfo.setPlayStatus(LPPlayStatus.byOrdinal(str));
                    }
                    LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_INFO_CHANGE).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                }
            }
            if (map.containsKey("TrackSource") || map.containsKey("CurrentTrackMetaData") || map.containsKey("CurrentTrackDuration")) {
                String str3 = map.get("TrackSource");
                String str4 = map.get("CurrentTrackMetaData");
                String str5 = map.get("CurrentTrackDuration");
                LPMediaInfo mediaInfo = this.deviceItem.getMediaInfo();
                if (mediaInfo != null) {
                    if (str3 != null) {
                        mediaInfo.setTrackSource(LPXmlUtil.Decode(str3));
                    }
                    if (str4 != null) {
                        mediaInfo.setTrackMetaData(LPXmlUtil.Decode(str4));
                    }
                    if (str5 != null) {
                        mediaInfo.setTotalTime(ModelUtil.a(str5));
                    }
                    LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.META_DATA_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                }
            }
            if (map.containsKey("CurrentTrack")) {
                LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.CURRENT_QUEUE_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload(map.get("CurrentTrack")).build());
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseRenderingControl(Map<String, String> map) {
        LPDeviceInfo deviceInfo;
        LPDevice lPDeviceDeviceForID;
        try {
            if (map.containsKey("NextInvalid")) {
                LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.ALEXA_PANDORA_SKIP_LIMIT_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload(map.get("NextInvalid")).build());
            }
            if (map.containsKey("Mute") && map.containsKey("Volume")) {
                int i2 = Integer.parseInt(map.get("Volume"));
                int i3 = Integer.parseInt(this.deviceItem.getDeviceStatus().getUpnpVersion());
                if (i3 < 1000) {
                    LPDevice lPDevice = this.deviceItem;
                    if (lPDevice != null) {
                        lPDevice.getDeviceStatus().setCurrentVolume(i2);
                    }
                } else if (i3 >= 1000) {
                    String string = ContentTree.ROOT_ID;
                    if (map.containsKey("TimeStamp")) {
                        string = map.get("TimeStamp").toString();
                    }
                    LPDevice lPDevice2 = this.deviceItem;
                    if (lPDevice2 != null) {
                        lPDevice2.getDeviceStatus().setCurrentVolume(i2, string);
                    }
                }
                LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.VOLUME_CHANED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                return;
            }
            if (map.containsKey("slave_rm")) {
                map.get("slave_rm");
                return;
            }
            if (map.containsKey("slave_add")) {
                map.get("slave_add");
                return;
            }
            if (map.containsKey("SlaveMask")) {
                String str = map.get("SlaveMask");
                LPDevice lPDeviceDeviceForID2 = LPDeviceManager.getInstance().deviceForID(this.deviceItem.getUpnpUUID());
                if (lPDeviceDeviceForID2 != null) {
                    lPDeviceDeviceForID2.getDeviceStatus().setPendMask(LPPendingMask.byOrdinal(str));
                    LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_PENDING_MASK_UNMASK).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                    return;
                }
                return;
            }
            if (map.containsKey("Channel")) {
                String str2 = map.get("Channel");
                LPDevice lPDevice3 = this.deviceItem;
                if (lPDevice3 != null) {
                    lPDevice3.getDeviceInfo().setPlayChannel(LPPlayChannel.byOrdinal(Integer.parseInt(str2)));
                    LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.CHANNEL_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                    return;
                }
                return;
            }
            if (map.containsKey("Slave")) {
                if (map.containsKey("slaveUUID")) {
                    String str3 = map.get("slaveUUID");
                    if (map.containsKey("volumechange")) {
                        String str4 = map.get("volumechange");
                        String str5 = map.get("volumechangeTimeStamp");
                        if (this.deviceItem == null || (lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(str3)) == null) {
                            return;
                        }
                        lPDeviceDeviceForID.getDeviceStatus().setCurrentVolume(Integer.parseInt(str4), str5);
                        LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.VOLUME_CHANED).setUuid(lPDeviceDeviceForID.getUpnpUUID()).setPayload("").build());
                        return;
                    }
                    if (map.containsKey("channelchange")) {
                        String str6 = map.get("channelchange");
                        String str7 = map.get("channelchangeTimeStamp");
                        LPDevice lPDeviceDeviceForID3 = LPDeviceManager.getInstance().deviceForID(str3);
                        if (lPDeviceDeviceForID3 == null || (deviceInfo = lPDeviceDeviceForID3.getDeviceInfo()) == null) {
                            return;
                        }
                        deviceInfo.setPlayChannel(LPPlayChannel.byOrdinal(Integer.parseInt(str6)), str7);
                        LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.CHANNEL_CHANGED).setUuid(lPDeviceDeviceForID3.getUpnpUUID()).setPayload("").build());
                        return;
                    }
                    return;
                }
                return;
            }
            if (map.containsKey("DeviceName")) {
                if (map.containsKey("DeviceName")) {
                    String str8 = map.get("DeviceName");
                    LPDevice lPDevice4 = this.deviceItem;
                    if (lPDevice4 != null) {
                        lPDevice4.getDeviceStatus().setFriendlyName(str8);
                    }
                    LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_NAME_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                }
                if (map.containsKey("GroupName")) {
                    String str9 = map.get("GroupName");
                    LPDevice lPDevice5 = this.deviceItem;
                    if (lPDevice5 != null) {
                        lPDevice5.getDeviceStatus().setGroupName(str9);
                    }
                    LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.GROUP_NAME_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                    return;
                }
                return;
            }
            if (!map.containsKey("BtPairState") && !map.containsKey("BtPairDevAddr")) {
                if (map.containsKey("PassThrough")) {
                    LPDevice lPDevice6 = this.deviceItem;
                    if (lPDevice6 == null || lPDevice6.getPassthroughViaHTTP() == null) {
                        return;
                    }
                    this.deviceItem.getPassthroughViaHTTP().passthroughViaHTTPNotify(LPXmlUtil.Decode(map.get("PassThrough")));
                    return;
                }
                if (!map.containsKey("PDALoginStatus")) {
                    LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_INFO_CHANGE).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                    return;
                }
                String str10 = map.get("PDALoginStatus");
                boolean zContains = str10.contains("LOGINSUCCESS");
                HashMap map2 = new HashMap();
                map2.put("PDALoginStatus", str10);
                map2.put("LOGINSUCCESS", Boolean.valueOf(zContains));
                LPDeviceObserverManager.getInstance().notifyDataObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.PASSTHROUGH_MESSAGE_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload(new Gson().toJson(map2)).build());
                return;
            }
            String str11 = map.get("BtPairState");
            if (ToolsUtil.isNumDigits(str11)) {
                String str12 = map.containsKey("BtPairDevAddr") ? map.get("BtPairDevAddr") : "";
                HashMap map3 = new HashMap();
                map3.put("btPairState", str11);
                map3.put("BtPairDevAddr", str12);
                LPDeviceObserverManager.getInstance().notifyPassthroughObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.PASSTHROUGH_MESSAGE_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload(new Gson().toJson(map3)).build());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:102:0x0254 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x025d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0268 A[Catch: Exception -> 0x0468, TRY_ENTER, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0273 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0303 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0315 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x033b A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0347 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x035a  */
    /* JADX WARN: Code duplicated, block: B:129:0x0387 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:130:0x0389 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x03a8 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x03b4 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:139:0x03f2 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x03fd A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x0409 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x011d A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0126  */
    /* JADX WARN: Code duplicated, block: B:56:0x012d A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x013a A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0143  */
    /* JADX WARN: Code duplicated, block: B:63:0x014a A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0155  */
    /* JADX WARN: Code duplicated, block: B:68:0x015e A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x016a A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x019e A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01e7 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:84:0x01fa A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0205  */
    /* JADX WARN: Code duplicated, block: B:89:0x020d A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0218  */
    /* JADX WARN: Code duplicated, block: B:94:0x0220 A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x022f  */
    /* JADX WARN: Code duplicated, block: B:98:0x023b A[Catch: Exception -> 0x0468, TryCatch #0 {Exception -> 0x0468, blocks: (B:3:0x0038, B:6:0x0042, B:8:0x004c, B:10:0x0052, B:12:0x005c, B:14:0x0062, B:16:0x006c, B:18:0x0072, B:20:0x007c, B:22:0x0082, B:24:0x008c, B:26:0x0092, B:28:0x009c, B:30:0x00a2, B:32:0x00ac, B:35:0x00b6, B:37:0x00c0, B:39:0x00c6, B:41:0x00d7, B:43:0x00db, B:45:0x00eb, B:47:0x0104, B:50:0x0117, B:52:0x011d, B:54:0x0127, B:56:0x012d, B:57:0x0134, B:59:0x013a, B:61:0x0144, B:63:0x014a, B:66:0x0157, B:68:0x015e, B:70:0x016a, B:77:0x01e1, B:79:0x01e7, B:82:0x01f4, B:84:0x01fa, B:87:0x0207, B:89:0x020d, B:92:0x021a, B:94:0x0220, B:96:0x0235, B:98:0x023b, B:100:0x024e, B:102:0x0254, B:104:0x025e, B:107:0x0268, B:109:0x027d, B:111:0x0290, B:113:0x02a0, B:115:0x02b0, B:116:0x02dd, B:118:0x0303, B:119:0x0306, B:121:0x0315, B:123:0x033b, B:125:0x0352, B:128:0x035e, B:144:0x041f, B:124:0x0347, B:130:0x0389, B:132:0x03a8, B:134:0x03bf, B:137:0x03cb, B:139:0x03f2, B:141:0x03fd, B:143:0x0414, B:142:0x0409, B:133:0x03b4, B:108:0x0273, B:72:0x019e, B:74:0x01a4, B:76:0x01b0), top: B:149:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x024a  */
    public void praseInfoEx(Map map) {
        String str;
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        Object obj;
        String string7;
        Object obj2;
        String string8;
        String string9;
        boolean zEquals;
        LPDevice lPDevice;
        LPMediaInfo mediaInfo;
        LPDeviceInfo deviceInfo;
        LPDeviceStatus deviceStatus;
        int i2;
        int i3;
        try {
            String string10 = map.containsKey("CurrentTransportState") ? map.get("CurrentTransportState").toString() : "";
            String string11 = map.containsKey("TrackDuration") ? map.get("TrackDuration").toString() : "";
            String string12 = map.containsKey("TrackMetaData") ? map.get("TrackMetaData").toString() : "";
            String string13 = map.containsKey("TrackURI") ? map.get("TrackURI").toString() : "";
            String string14 = map.containsKey("RelTime") ? map.get("RelTime").toString() : "";
            String string15 = map.containsKey("LoopMode") ? map.get("LoopMode").toString() : "";
            String string16 = map.containsKey("CurrentVolume") ? map.get("CurrentVolume").toString() : "";
            String str2 = string14;
            String string17 = map.containsKey("TimeStamp") ? map.get("TimeStamp").toString() : ContentTree.ROOT_ID;
            if (map.containsKey("SubNum")) {
                str = string11;
                if (Integer.parseInt(map.get("SubNum").toString()) < 2 && this.deviceItem != null) {
                    LPDlnaServiceProvider dlanHelper = LPDlnaServiceProviderPool.me().getDlanHelper(this.deviceItem.getUpnpUUID());
                    if (dlanHelper == null) {
                        dlanHelper = new LPDlnaServiceProvider(this.deviceItem);
                        LPDlnaServiceProviderPool.me().addDlnaHelper(this.deviceItem.getUpnpUUID(), dlanHelper);
                    }
                    dlanHelper.makeDlnaSubscriptionAll();
                    this.deviceItem.getDeviceStatus().setTimeStamp(ContentTree.ROOT_ID);
                }
                if (map.containsKey("CurrentChannel")) {
                    string = map.get("CurrentChannel").toString();
                } else {
                    string = "";
                }
                if (map.containsKey("SlaveList")) {
                    map.get("SlaveList").toString();
                }
                if (map.containsKey("SlaveFlag")) {
                    string2 = map.get("SlaveFlag").toString();
                } else {
                    string2 = ContentTree.ROOT_ID;
                }
                if (map.containsKey("PlayType")) {
                    string3 = map.get("PlayType").toString();
                } else {
                    string3 = "";
                }
                if (string2.equals("1")) {
                    if (this.deviceItem.getDeviceStatus().getGroup() == 0) {
                        LPRequestAction.getInstance().getStatusEx(new RequestItem.Builder().ip(this.deviceItem.getDeviceStatus().getIP()).security(this.deviceItem.getDeviceStatus().getSecurity()).build(), new LPRequestAction.IRequestListener() { // from class: com.linkplay.core.clingx.LPDlnaServiceProvider.3
                            @Override // com.linkplay.request.LPRequestAction.IRequestListener
                            public void onFailed(Throwable th) {
                            }

                            @Override // com.linkplay.request.LPRequestAction.IRequestListener
                            public void onSuccess(String str3) {
                                LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().setDeviceStatus(str3);
                                LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_SLAVE);
                                LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().setRouter(LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().getMaster_uuid());
                                LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().setGroup(1);
                                LPDeviceManager.getInstance().addLPDevice(LPDlnaServiceProvider.this.deviceItem);
                            }
                        });
                    }
                } else if (string2.equals(ContentTree.ROOT_ID) && this.deviceItem.getDeviceStatus().getGroup() == 1) {
                    this.deviceItem.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_MASTER);
                    this.deviceItem.getDeviceStatus().setGroup(0);
                    this.deviceItem.getDeviceStatus().setMaster_uuid("");
                    this.deviceItem.getDeviceStatus().setRouter("");
                    LPDeviceManager.getInstance().addLPDevice(this.deviceItem);
                }
                if (map.containsKey("TrackSource")) {
                    string4 = map.get("TrackSource").toString();
                } else {
                    string4 = "";
                }
                if (map.containsKey("PlayMedium")) {
                    string5 = map.get("PlayMedium").toString();
                } else {
                    string5 = "";
                }
                if (map.containsKey("InternetAccess")) {
                    string6 = map.get("InternetAccess").toString();
                } else {
                    string6 = "1";
                }
                if (map.containsKey("BatteryFlag")) {
                    string7 = map.get("BatteryFlag").toString();
                    obj = "BatteryPercent";
                } else {
                    obj = "BatteryPercent";
                    string7 = ContentTree.ROOT_ID;
                }
                if (map.containsKey(obj)) {
                    string8 = map.get(obj).toString();
                    obj2 = "VerUpdateFlag";
                } else {
                    obj2 = "VerUpdateFlag";
                    string8 = ContentTree.ROOT_ID;
                }
                if (map.containsKey(obj2)) {
                    string9 = map.get(obj2).toString();
                } else {
                    string9 = ContentTree.ROOT_ID;
                }
                zEquals = string9.equals("1");
                lPDevice = this.deviceItem;
                if (zEquals) {
                    lPDevice.getDeviceStatus().setVerUpdateFlag(1);
                } else {
                    lPDevice.getDeviceStatus().setVerUpdateFlag(0);
                }
                this.deviceItem.getDeviceStatus().setVersionUpdate(Integer.parseInt(string9));
                if (string9.equals("1") && (TextUtils.isEmpty(this.deviceItem.getDeviceStatus().getNewVer()) || this.deviceItem.getDeviceStatus().getNewVer().startsWith(ContentTree.ROOT_ID))) {
                    LPRequestAction.getInstance().getStatusEx(new RequestItem.Builder().ip(this.deviceItem.getDeviceStatus().getIP()).security(this.deviceItem.getDeviceStatus().getSecurity()).build(), null);
                }
                mediaInfo = this.deviceItem.getMediaInfo();
                deviceInfo = this.deviceItem.getDeviceInfo();
                deviceStatus = this.deviceItem.getDeviceStatus();
                i2 = Integer.parseInt(string6);
                if (System.currentTimeMillis() - this.showNetDelayTime > 9000) {
                    deviceStatus.setInternet(i2);
                }
                deviceInfo.setPlayType(string3);
                i3 = Integer.parseInt(deviceStatus.getUpnpVersion());
                if (i3 < 1000) {
                    mediaInfo.setTrackSource(string4);
                    deviceInfo.setPlayMedium(string5);
                    mediaInfo.setMediaType(LPPlayHeader.LPPlayMediaType.byOrdinal(string5));
                    mediaInfo.setPlayUri(string13);
                    deviceInfo.setPlayStatus(LPPlayStatus.byOrdinal(string10));
                    deviceStatus.setCurrentVolume(Integer.parseInt(string16));
                    if (ToolsUtil.isSpotifyTrackSource(this.deviceItem)) {
                        deviceInfo.setSpotifyPlayMode(LPSpotifyPlayMode.byOrdinal(Integer.parseInt(string15)));
                    } else {
                        deviceInfo.setPlayMode(LPPlayMode.byOrdinal(Integer.parseInt(string15)));
                    }
                    if (deviceInfo.getPlayStatus() == LPPlayStatus.LP_PLAY_STATUS_STOPPED) {
                        str = "";
                        str2 = str;
                    }
                    mediaInfo.setTickTime(ModelUtil.a(str2));
                    mediaInfo.setTotalTime(ModelUtil.a(str));
                    mediaInfo.setTrackMetaData(string12);
                    deviceInfo.setPlayChannel(LPPlayChannel.byOrdinal(Integer.parseInt(string)));
                    deviceStatus.setBatteryPercent(Integer.parseInt(string7), Integer.parseInt(string8));
                } else if (i3 >= 1000) {
                    mediaInfo.setPlayUri(string13);
                    mediaInfo.setTrackSource(string4);
                    mediaInfo.setMediaType(LPPlayHeader.LPPlayMediaType.byOrdinal(string5));
                    deviceInfo.setPlayMedium(string5);
                    deviceInfo.setPlayStatus(LPPlayStatus.byOrdinal(string10));
                    if (ToolsUtil.isSpotifyTrackSource(this.deviceItem)) {
                        deviceInfo.setSpotifyPlayMode(LPSpotifyPlayMode.byOrdinal(Integer.parseInt(string15)));
                    } else {
                        deviceInfo.setPlayMode(LPPlayMode.byOrdinal(Integer.parseInt(string15)));
                    }
                    if (deviceInfo.getPlayStatus() == LPPlayStatus.LP_PLAY_STATUS_STOPPED) {
                        str = "";
                        str2 = str;
                    }
                    deviceStatus.setBatteryPercent(Integer.parseInt(string7), Integer.parseInt(string8));
                    mediaInfo.setTickTime(ModelUtil.a(str2));
                    mediaInfo.setTotalTime(ModelUtil.a(str));
                    mediaInfo.setTrackMetaData(string12);
                    deviceStatus.setCurrentVolume(Integer.parseInt(string16), string17);
                    if (this.firstLoad) {
                        this.firstLoad = false;
                        if (ToolsUtil.isSpotifyTrackSource(this.deviceItem)) {
                            deviceInfo.setSpotifyPlayMode(LPSpotifyPlayMode.byOrdinal(Integer.parseInt(string15)));
                        } else {
                            deviceInfo.setPlayMode(LPPlayMode.byOrdinal(Integer.parseInt(string15)));
                        }
                        deviceInfo.setPlayChannel(LPPlayChannel.byOrdinal(Integer.parseInt(string)));
                    }
                }
                LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.META_DATA_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
                LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_INFO_CHANGE).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
            }
            str = string11;
            string10 = string10;
            if (map.containsKey("CurrentChannel")) {
                string = map.get("CurrentChannel").toString();
            } else {
                string = "";
            }
            if (map.containsKey("SlaveList")) {
                map.get("SlaveList").toString();
            }
            if (map.containsKey("SlaveFlag")) {
                string2 = map.get("SlaveFlag").toString();
            } else {
                string2 = ContentTree.ROOT_ID;
            }
            if (map.containsKey("PlayType")) {
                string3 = map.get("PlayType").toString();
            } else {
                string3 = "";
            }
            if (string2.equals("1")) {
                if (this.deviceItem.getDeviceStatus().getGroup() == 0) {
                    LPRequestAction.getInstance().getStatusEx(new RequestItem.Builder().ip(this.deviceItem.getDeviceStatus().getIP()).security(this.deviceItem.getDeviceStatus().getSecurity()).build(), new LPRequestAction.IRequestListener() { // from class: com.linkplay.core.clingx.LPDlnaServiceProvider.3
                        @Override // com.linkplay.request.LPRequestAction.IRequestListener
                        public void onFailed(Throwable th) {
                        }

                        @Override // com.linkplay.request.LPRequestAction.IRequestListener
                        public void onSuccess(String str3) {
                            LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().setDeviceStatus(str3);
                            LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_SLAVE);
                            LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().setRouter(LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().getMaster_uuid());
                            LPDlnaServiceProvider.this.deviceItem.getDeviceStatus().setGroup(1);
                            LPDeviceManager.getInstance().addLPDevice(LPDlnaServiceProvider.this.deviceItem);
                        }
                    });
                }
            } else if (string2.equals(ContentTree.ROOT_ID)) {
                this.deviceItem.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_MASTER);
                this.deviceItem.getDeviceStatus().setGroup(0);
                this.deviceItem.getDeviceStatus().setMaster_uuid("");
                this.deviceItem.getDeviceStatus().setRouter("");
                LPDeviceManager.getInstance().addLPDevice(this.deviceItem);
            }
            if (map.containsKey("TrackSource")) {
                string4 = map.get("TrackSource").toString();
            } else {
                string4 = "";
            }
            if (map.containsKey("PlayMedium")) {
                string5 = map.get("PlayMedium").toString();
            } else {
                string5 = "";
            }
            if (map.containsKey("InternetAccess")) {
                string6 = map.get("InternetAccess").toString();
            } else {
                string6 = "1";
            }
            if (map.containsKey("BatteryFlag")) {
                string7 = map.get("BatteryFlag").toString();
                obj = "BatteryPercent";
            } else {
                obj = "BatteryPercent";
                string7 = ContentTree.ROOT_ID;
            }
            if (map.containsKey(obj)) {
                string8 = map.get(obj).toString();
                obj2 = "VerUpdateFlag";
            } else {
                obj2 = "VerUpdateFlag";
                string8 = ContentTree.ROOT_ID;
            }
            if (map.containsKey(obj2)) {
                string9 = map.get(obj2).toString();
            } else {
                string9 = ContentTree.ROOT_ID;
            }
            zEquals = string9.equals("1");
            lPDevice = this.deviceItem;
            if (zEquals) {
                lPDevice.getDeviceStatus().setVerUpdateFlag(1);
            } else {
                lPDevice.getDeviceStatus().setVerUpdateFlag(0);
            }
            this.deviceItem.getDeviceStatus().setVersionUpdate(Integer.parseInt(string9));
            if (string9.equals("1")) {
                LPRequestAction.getInstance().getStatusEx(new RequestItem.Builder().ip(this.deviceItem.getDeviceStatus().getIP()).security(this.deviceItem.getDeviceStatus().getSecurity()).build(), null);
            }
            mediaInfo = this.deviceItem.getMediaInfo();
            deviceInfo = this.deviceItem.getDeviceInfo();
            deviceStatus = this.deviceItem.getDeviceStatus();
            i2 = Integer.parseInt(string6);
            if (System.currentTimeMillis() - this.showNetDelayTime > 9000) {
                deviceStatus.setInternet(i2);
            }
            deviceInfo.setPlayType(string3);
            i3 = Integer.parseInt(deviceStatus.getUpnpVersion());
            if (i3 < 1000) {
                mediaInfo.setTrackSource(string4);
                deviceInfo.setPlayMedium(string5);
                mediaInfo.setMediaType(LPPlayHeader.LPPlayMediaType.byOrdinal(string5));
                mediaInfo.setPlayUri(string13);
                deviceInfo.setPlayStatus(LPPlayStatus.byOrdinal(string10));
                deviceStatus.setCurrentVolume(Integer.parseInt(string16));
                if (ToolsUtil.isSpotifyTrackSource(this.deviceItem)) {
                    deviceInfo.setSpotifyPlayMode(LPSpotifyPlayMode.byOrdinal(Integer.parseInt(string15)));
                } else {
                    deviceInfo.setPlayMode(LPPlayMode.byOrdinal(Integer.parseInt(string15)));
                }
                if (deviceInfo.getPlayStatus() == LPPlayStatus.LP_PLAY_STATUS_STOPPED) {
                    str = "";
                    str2 = str;
                }
                mediaInfo.setTickTime(ModelUtil.a(str2));
                mediaInfo.setTotalTime(ModelUtil.a(str));
                mediaInfo.setTrackMetaData(string12);
                deviceInfo.setPlayChannel(LPPlayChannel.byOrdinal(Integer.parseInt(string)));
                deviceStatus.setBatteryPercent(Integer.parseInt(string7), Integer.parseInt(string8));
            } else if (i3 >= 1000) {
                mediaInfo.setPlayUri(string13);
                mediaInfo.setTrackSource(string4);
                mediaInfo.setMediaType(LPPlayHeader.LPPlayMediaType.byOrdinal(string5));
                deviceInfo.setPlayMedium(string5);
                deviceInfo.setPlayStatus(LPPlayStatus.byOrdinal(string10));
                if (ToolsUtil.isSpotifyTrackSource(this.deviceItem)) {
                    deviceInfo.setSpotifyPlayMode(LPSpotifyPlayMode.byOrdinal(Integer.parseInt(string15)));
                } else {
                    deviceInfo.setPlayMode(LPPlayMode.byOrdinal(Integer.parseInt(string15)));
                }
                if (deviceInfo.getPlayStatus() == LPPlayStatus.LP_PLAY_STATUS_STOPPED) {
                    str = "";
                    str2 = str;
                }
                deviceStatus.setBatteryPercent(Integer.parseInt(string7), Integer.parseInt(string8));
                mediaInfo.setTickTime(ModelUtil.a(str2));
                mediaInfo.setTotalTime(ModelUtil.a(str));
                mediaInfo.setTrackMetaData(string12);
                deviceStatus.setCurrentVolume(Integer.parseInt(string16), string17);
                if (this.firstLoad) {
                    this.firstLoad = false;
                    if (ToolsUtil.isSpotifyTrackSource(this.deviceItem)) {
                        deviceInfo.setSpotifyPlayMode(LPSpotifyPlayMode.byOrdinal(Integer.parseInt(string15)));
                    } else {
                        deviceInfo.setPlayMode(LPPlayMode.byOrdinal(Integer.parseInt(string15)));
                    }
                    deviceInfo.setPlayChannel(LPPlayChannel.byOrdinal(Integer.parseInt(string)));
                }
            }
            LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.META_DATA_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
            LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_INFO_CHANGE).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prasePlayQueue(Map<String, String> map) {
        LPDevice lPDevice;
        LPDevice lPDevice2 = this.deviceItem;
        if (lPDevice2 == null) {
            return;
        }
        lPDevice2.getUpnpUUID();
        HashMap map2 = new HashMap();
        if (map.containsKey("CurretPlayListName")) {
            map2.put("CurretPlayListName", map.get("CurretPlayListName"));
        }
        if (map.containsKey("CurrentIndex")) {
            map2.put("CurrentIndex", map.get("CurrentIndex"));
        }
        if (map2.size() > 0) {
            LPDeviceObserverManager.getInstance().notifyDataObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.CURRENT_QUEUE_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload(new Gson().toJson(map2)).build());
        }
        String str = "";
        if (map.containsKey("LoopMpde") && (lPDevice = this.deviceItem) != null) {
            boolean zIsSpotifyTrackSource = ToolsUtil.isSpotifyTrackSource(lPDevice);
            LPDevice lPDevice3 = this.deviceItem;
            if (zIsSpotifyTrackSource) {
                lPDevice3.getDeviceInfo().setSpotifyPlayMode(LPSpotifyPlayMode.byOrdinal(Integer.parseInt(map.get("LoopMpde"))));
            } else {
                lPDevice3.getDeviceInfo().setPlayMode(LPPlayMode.byOrdinal(Integer.parseInt(map.get("LoopMpde"))));
            }
            LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.PLAYMODE_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload("").build());
        }
        map2.clear();
        if (map.containsKey("online")) {
            str = map.get("online");
            map2.put("online", str);
        }
        if (map.containsKey("userinfo")) {
            String strDecode = map.get("userinfo");
            if (str.equals(DeviceStreamServices.StreamServices.DEEZER) || str.equals("primemusic")) {
                strDecode = LPXmlUtil.Decode(strDecode);
            }
            map2.put("userinfo", strDecode);
        }
        LPDeviceObserverManager.getInstance().notifyAccountStatusObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.USER_ACCOUNT_STATUS_CHANGED).setUuid(this.deviceItem.getUpnpUUID()).setPayload(new Gson().toJson(map2)).build());
    }

    private Device reloadMediaRender() {
        Device mediaRenderByuuid = LPDlnaPlayerData.me().getMediaRenderByuuid(this.deviceItem.getUpnpUUID());
        this.mediaRender = mediaRenderByuuid;
        return mediaRenderByuuid;
    }

    public void execute() {
        stop();
        initServiceProvider();
        this.isStop = false;
        if (this.dlnatimer == null) {
            this.dlnatimer = new Timer();
        }
        initGetInfoExTimerTask();
        this.dlnatimer.scheduleAtFixedRate(this.dlnaGetInfoExTimerTask, 0L, LiveTranslationEntity.DefaultSentenceTimeOut);
        if (this.seekbarTimer == null) {
            this.seekbarTimer = new Timer();
        }
        initViewTimerTask();
        this.seekbarTimer.scheduleAtFixedRate(this.viewTimerTask, 0L, 1000L);
    }

    public LPDevice getDeviceItem() {
        return this.deviceItem;
    }

    public void makeDlnaGetInfoEx() {
        try {
            h.a().getInfoEx(reloadMediaRender(), new IWiimuActionCallback() { // from class: com.linkplay.core.clingx.LPDlnaServiceProvider.4
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    LPDlnaServiceProvider lPDlnaServiceProvider = LPDlnaServiceProvider.this;
                    if (lPDlnaServiceProvider.deviceItem == null) {
                        return;
                    }
                    lPDlnaServiceProvider.praseInfoEx(map);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void makeDlnaMediaInfo() {
        try {
            h.a().getMediaInfo(reloadMediaRender(), new IWiimuActionCallback() { // from class: com.linkplay.core.clingx.LPDlnaServiceProvider.5
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    LPDevice lPDevice = LPDlnaServiceProvider.this.deviceItem;
                    if (lPDevice == null) {
                        return;
                    }
                    LPMediaInfo mediaInfo = lPDevice.getMediaInfo();
                    LPDeviceInfo deviceInfo = LPDlnaServiceProvider.this.deviceItem.getDeviceInfo();
                    if (map.containsKey("TrackSource")) {
                        mediaInfo.setTrackSource(map.get("TrackSource").toString());
                    }
                    if (map.containsKey("CurrentURI")) {
                        mediaInfo.setPlayUri(map.get("CurrentURI").toString());
                    }
                    if (map.containsKey("PlayMedium")) {
                        deviceInfo.setPlayMedium(map.get("PlayMedium").toString());
                        LPDeviceObserverManager.getInstance().notifyDeviceInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.DEVICE_INFO_CHANGE).setUuid(LPDlnaServiceProvider.this.deviceItem.getUpnpUUID()).setPayload("").build());
                    }
                    if (map.containsKey("CurrentURIMetaData")) {
                        mediaInfo.setTrackMetaData(map.get("CurrentURIMetaData").toString());
                    }
                    LPDeviceObserverManager.getInstance().notifyMediaInfoObserver(new LPNotification.NotifiyBuilder().setType(LPNotificationType.META_DATA_CHANGED).setUuid(LPDlnaServiceProvider.this.deviceItem.getUpnpUUID()).setPayload("").build());
                }
            });
        } catch (Exception unused) {
        }
    }

    public void makeDlnaSubscriptionAVTransport() {
        if (this.avtransportSubscriptTime > 4) {
            this.avtransportSubscriptTime = 0;
            return;
        }
        reloadMediaRender();
        if (this.mediaRender == null) {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "mediaRender == null makeDlnaSubscriptionAVTransport");
            return;
        }
        try {
            c.a().subscriptEventAVTransport(this.mediaRender, new IWiimuSubscriptionEventCallback() { // from class: com.linkplay.core.clingx.LPDlnaServiceProvider.6
                @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                public void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse) {
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "AVTransport:Subscription:ended:" + gENASubscription.e());
                }

                @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                public void established(GENASubscription gENASubscription) {
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "AVTransport:Subscription:established:" + gENASubscription.e());
                }

                @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                public void eventReceived(GENASubscription gENASubscription) {
                    LPDlnaServiceProvider.this.avtransportSubscriptTime = 0;
                    Map<String, String> mapA = a.a().a(gENASubscription);
                    if (mapA == null) {
                        return;
                    }
                    LPDlnaServiceProvider.this.parseAVTransport(mapA);
                }

                @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                public void eventsMissed(GENASubscription gENASubscription, int i2) {
                    LinkplayLog.e(LinkplayLogTags.LPLogTag, "AVTransport:Subscription:missed:" + gENASubscription.e());
                }

                @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str) {
                    if (exc != null) {
                        LinkplayLog.e(LinkplayLogTags.LPLogTag, "subscriptionAVTransport:Subscription:failed " + exc.getLocalizedMessage());
                    }
                    LPDlnaServiceProvider lPDlnaServiceProvider = LPDlnaServiceProvider.this;
                    lPDlnaServiceProvider.avtransportSubscriptTime++;
                    lPDlnaServiceProvider.makeDlnaSubscriptionAVTransport();
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void makeDlnaSubscriptionAll() {
        makeDlnaSubscriptionAVTransport();
        makeDlnaSubscriptionRenderingControl();
        makeDlnaSubscriptionPlayQueue();
    }

    public void makeDlnaSubscriptionPlayQueue() {
        try {
            reloadMediaRender();
            if (this.mediaRender == null) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "mediaRender is null makeDlnaSubscriptionPlayQueue");
            } else {
                c.a().subscriptEventPlayQueue(this.mediaRender, new IWiimuSubscriptionEventCallback() { // from class: com.linkplay.core.clingx.LPDlnaServiceProvider.8
                    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                    public void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse) {
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "AVTransport:Subscription:ended:" + gENASubscription.e());
                    }

                    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                    public void established(GENASubscription gENASubscription) {
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "AVTransport:Subscription:established:" + gENASubscription.e());
                    }

                    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                    public void eventReceived(GENASubscription gENASubscription) {
                        Map<String, String> mapC = a.a().c(gENASubscription);
                        if (mapC == null) {
                            return;
                        }
                        try {
                            LPDlnaServiceProvider.this.prasePlayQueue(mapC);
                        } catch (Exception unused) {
                        }
                    }

                    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                    public void eventsMissed(GENASubscription gENASubscription, int i2) {
                    }

                    @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
                    public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str) {
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    public void stop() {
        this.isStop = true;
        Timer timer = this.dlnatimer;
        if (timer != null) {
            timer.cancel();
            this.dlnatimer = null;
        }
        Timer timer2 = this.seekbarTimer;
        if (timer2 != null) {
            timer2.cancel();
            this.seekbarTimer = null;
        }
    }
}
