package com.android.wiimu.upnp;

import android.text.TextUtils;
import com.android.wiimu.model.WiimuPendingMask;
import com.android.wiimu.model.WiimuPendingSlave;
import com.android.wiimu.upnp.impl.h;
import com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback;
import com.linkplay.core.utils.LPWiFiResultUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import com.linkplay.medialib.ContentTree;
import com.linkplay.request.LPRequestAction;
import com.linkplay.request.RequestItem;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.teleal.cling.model.ModelUtil;
import org.teleal.cling.model.gena.CancelReason;
import org.teleal.cling.model.gena.GENASubscription;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b.c f22494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Device f22495c;
    public Timer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f22496e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f22493a = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f22497f = 9000;
    private boolean g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f22498h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f22499i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final int f22500j = 4;

    public class a extends TimerTask {
        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            b.c cVar;
            b bVar = b.this;
            if (bVar.f22493a || (cVar = bVar.f22494b) == null) {
                return;
            }
            boolean zEquals = cVar.f20677c.equals(WiimuPendingSlave.Master);
            b bVar2 = b.this;
            if (zEquals) {
                bVar2.d();
            } else if (bVar2.f22494b.f20677c.equals(WiimuPendingSlave.Slave) && !LPWiFiResultUtils.isWiFiConnectAP() && b.this.f22494b.d.equals(WiimuPendingMask.Mask)) {
                b.this.d();
            }
        }
    }

    /* JADX INFO: renamed from: com.android.wiimu.upnp.b$b, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes2.dex */
    public class C0037b implements IWiimuActionCallback {
        public C0037b() {
        }

        @Override // com.android.wiimu.upnp.IWiimuActionCallback
        public void failure(Exception exc) {
        }

        @Override // com.android.wiimu.upnp.IWiimuActionCallback
        public void success(Map map) {
            if (b.this.f22494b == null) {
                return;
            }
            try {
                if (map.containsKey("CurrentTransportState")) {
                    map.get("CurrentTransportState").toString();
                }
                String string = map.containsKey("TrackDuration") ? map.get("TrackDuration").toString() : "";
                if (map.containsKey("TrackMetaData")) {
                    map.get("TrackMetaData").toString();
                }
                if (map.containsKey("TrackURI")) {
                    map.get("TrackURI").toString();
                }
                String string2 = map.containsKey("RelTime") ? map.get("RelTime").toString() : "";
                String string3 = map.containsKey("LoopMode") ? map.get("LoopMode").toString() : "";
                String string4 = map.containsKey("CurrentVolume") ? map.get("CurrentVolume").toString() : "";
                String string5 = map.containsKey("TimeStamp") ? map.get("TimeStamp").toString() : ContentTree.ROOT_ID;
                if (map.containsKey("SubNum") && Integer.parseInt(map.get("SubNum").toString()) < 2 && b.this.f22494b != null) {
                    b bVarA = com.android.wiimu.upnp.c.c().a(b.this.f22494b.f20676b);
                    if (bVarA == null) {
                        bVarA = new b(b.this.f22494b);
                        com.android.wiimu.upnp.c.c().a(b.this.f22494b.f20676b, bVarA);
                    }
                    bVarA.g();
                    b.this.f22494b.f20679f.f20680b = ContentTree.ROOT_ID;
                }
                String string6 = map.containsKey("CurrentChannel") ? map.get("CurrentChannel").toString() : "";
                if (map.containsKey("SlaveList")) {
                    map.get("SlaveList").toString();
                }
                if (map.containsKey("TrackSource")) {
                    map.get("TrackSource").toString();
                }
                if (map.containsKey("PlayMedium")) {
                    map.get("PlayMedium").toString();
                }
                String string7 = map.containsKey("InternetAccess") ? map.get("InternetAccess").toString() : "1";
                String string8 = map.containsKey("BatteryFlag") ? map.get("BatteryFlag").toString() : ContentTree.ROOT_ID;
                String string9 = map.containsKey("BatteryPercent") ? map.get("BatteryPercent").toString() : ContentTree.ROOT_ID;
                String string10 = map.containsKey("VerUpdateFlag") ? map.get("VerUpdateFlag").toString() : ContentTree.ROOT_ID;
                boolean zEquals = string10.equals("1");
                b bVar = b.this;
                if (zEquals) {
                    bVar.f22494b.f20679f.getClass();
                } else {
                    bVar.f22494b.f20679f.getClass();
                }
                b.this.f22494b.f20678e.getClass();
                if (string10.equals("1") && (TextUtils.isEmpty(b.this.f22494b.f20678e.d) || b.this.f22494b.f20678e.d.startsWith(ContentTree.ROOT_ID))) {
                    LPRequestAction.getInstance().getStatusEx(new RequestItem.Builder().ip(b.this.f22494b.f20678e.f20682b).security(b.this.f22494b.f20678e.f20684e).build(), null);
                }
                b.d dVar = b.this.f22494b.f20679f;
                Integer.parseInt(string7);
                long jCurrentTimeMillis = System.currentTimeMillis();
                b bVar2 = b.this;
                if (jCurrentTimeMillis - bVar2.f22496e > 9000) {
                    bVar2.f22494b.f20678e.getClass();
                }
                int i2 = Integer.parseInt(b.this.f22494b.f20678e.f20685f);
                if (i2 < 1000) {
                    dVar.getClass();
                    int i3 = Integer.parseInt(string4);
                    if (dVar.f20681c != i3) {
                        dVar.f20681c = i3;
                    }
                    Integer.parseInt(string3);
                    ModelUtil.a(string2);
                    ModelUtil.a(string);
                    Integer.parseInt(string6);
                    Integer.parseInt(string8);
                    Integer.parseInt(string9);
                } else if (i2 >= 1000) {
                    dVar.getClass();
                    Integer.parseInt(string3);
                    Integer.parseInt(string8);
                    Integer.parseInt(string9);
                    ModelUtil.a(string2);
                    ModelUtil.a(string);
                    dVar.a(Integer.parseInt(string4), string5);
                    b bVar3 = b.this;
                    if (bVar3.g) {
                        bVar3.g = false;
                        Integer.parseInt(string3);
                        Integer.parseInt(string6);
                    }
                }
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "loop GetInfoEx listener");
            } catch (Exception e2) {
                e2.printStackTrace();
                failure(e2);
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class c implements IWiimuActionCallback {
        public c() {
        }

        @Override // com.android.wiimu.upnp.IWiimuActionCallback
        public void failure(Exception exc) {
        }

        @Override // com.android.wiimu.upnp.IWiimuActionCallback
        public void success(Map map) {
            if (b.this.f22494b == null) {
                return;
            }
            try {
                if (map.containsKey("CurrentTransportState")) {
                    map.get("CurrentTransportState").toString();
                }
                String string = map.containsKey("TrackDuration") ? map.get("TrackDuration").toString() : "";
                if (map.containsKey("TrackMetaData")) {
                    map.get("TrackMetaData").toString();
                }
                if (map.containsKey("TrackURI")) {
                    map.get("TrackURI").toString();
                }
                String string2 = map.containsKey("RelTime") ? map.get("RelTime").toString() : "";
                String string3 = map.containsKey("LoopMode") ? map.get("LoopMode").toString() : "";
                String string4 = map.containsKey("CurrentVolume") ? map.get("CurrentVolume").toString() : "";
                boolean zContainsKey = map.containsKey("TimeStamp");
                String string5 = ContentTree.ROOT_ID;
                String string6 = zContainsKey ? map.get("TimeStamp").toString() : ContentTree.ROOT_ID;
                if (map.containsKey("SubNum") && Integer.parseInt(map.get("SubNum").toString()) < 2 && b.this.f22494b != null) {
                    b bVarA = com.android.wiimu.upnp.c.c().a(b.this.f22494b.f20676b);
                    if (bVarA == null) {
                        bVarA = new b(b.this.f22494b);
                        com.android.wiimu.upnp.c.c().a(b.this.f22494b.f20676b, bVarA);
                    }
                    bVarA.g();
                    b.this.f22494b.f20679f.f20680b = ContentTree.ROOT_ID;
                }
                String string7 = map.containsKey("CurrentChannel") ? map.get("CurrentChannel").toString() : "";
                if (map.containsKey("SlaveList")) {
                    map.get("SlaveList").toString();
                }
                if (map.containsKey("TrackSource")) {
                    map.get("TrackSource").toString();
                }
                if (map.containsKey("PlayMedium")) {
                    map.get("PlayMedium").toString();
                }
                String string8 = map.containsKey("InternetAccess") ? map.get("InternetAccess").toString() : "1";
                String string9 = map.containsKey("BatteryFlag") ? map.get("BatteryFlag").toString() : ContentTree.ROOT_ID;
                String string10 = map.containsKey("BatteryPercent") ? map.get("BatteryPercent").toString() : ContentTree.ROOT_ID;
                if (map.containsKey("VerUpdateFlag")) {
                    string5 = map.get("VerUpdateFlag").toString();
                }
                boolean zEquals = string5.equals("1");
                b bVar = b.this;
                if (zEquals) {
                    bVar.f22494b.f20679f.getClass();
                } else {
                    bVar.f22494b.f20679f.getClass();
                }
                b.d dVar = b.this.f22494b.f20679f;
                Integer.parseInt(string8);
                long jCurrentTimeMillis = System.currentTimeMillis();
                b bVar2 = b.this;
                if (jCurrentTimeMillis - bVar2.f22496e > 9000) {
                    bVar2.f22494b.f20678e.getClass();
                }
                dVar.getClass();
                dVar.a(Integer.parseInt(string4), string6);
                Integer.parseInt(string3);
                ModelUtil.a(string2);
                ModelUtil.a(string);
                Integer.parseInt(string7);
                Integer.parseInt(string9);
                Integer.parseInt(string10);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements IWiimuActionCallback {
        public d() {
        }

        @Override // com.android.wiimu.upnp.IWiimuActionCallback
        public void failure(Exception exc) {
        }

        @Override // com.android.wiimu.upnp.IWiimuActionCallback
        public void success(Map map) {
            b.c cVar = b.this.f22494b;
            if (cVar == null) {
                return;
            }
            b.d dVar = cVar.f20679f;
            if (map.containsKey("TrackSource")) {
                map.get("TrackSource").toString();
                dVar.getClass();
            }
            if (map.containsKey("CurrentURI")) {
                map.get("CurrentURI").toString();
                dVar.getClass();
            }
            if (map.containsKey("PlayMedium")) {
                map.get("PlayMedium").toString();
                dVar.getClass();
            }
            if (map.containsKey("CurrentURIMetaData")) {
                map.get("CurrentURIMetaData").toString();
                dVar.getClass();
            }
        }
    }

    public class e implements IWiimuSubscriptionEventCallback {
        public e() {
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse) {
            LinkplayLog.i("SDK_TAG", "AVTransport:Subscription:ended:" + gENASubscription.e());
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void established(GENASubscription gENASubscription) {
            LinkplayLog.i("SDK_TAG", "AVTransport:Subscription:established:" + gENASubscription.e());
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void eventReceived(GENASubscription gENASubscription) {
            b.this.f22498h = 0;
            com.android.wiimu.upnp.sucription.a.a().a(gENASubscription);
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void eventsMissed(GENASubscription gENASubscription, int i2) {
            gENASubscription.e();
            int i3 = a.a.f348a;
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str) {
            if (exc != null) {
                LinkplayLog.e("SDK_TAG", "subscriptionAVTransport:Subscription:failed " + exc.getLocalizedMessage());
            }
            b bVar = b.this;
            bVar.f22498h++;
            bVar.f();
        }
    }

    public class f implements IWiimuSubscriptionEventCallback {
        public f() {
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse) {
            LinkplayLog.e("SDK_TAG", "AVTransport:Subscription:ended:" + gENASubscription.e());
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void established(GENASubscription gENASubscription) {
            LinkplayLog.i("SDK_TAG", "AVTransport:Subscription:established:" + gENASubscription.e());
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void eventReceived(GENASubscription gENASubscription) {
            b.this.f22499i = 0;
            com.android.wiimu.upnp.sucription.a.a().d(gENASubscription);
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void eventsMissed(GENASubscription gENASubscription, int i2) {
            LinkplayLog.e("SDK_TAG", "RenderingControl:Subscription:missed:" + gENASubscription.e());
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str) {
            LinkplayLog.e("SDK_TAG", "RenderingControl Subscription failed  :" + b.this.f22494b.f20678e.f20683c);
            b bVar = b.this;
            bVar.f22499i = bVar.f22499i + 1;
            bVar.i();
        }
    }

    public class g implements IWiimuSubscriptionEventCallback {
        public g(b bVar) {
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse) {
            LinkplayLog.i("SDK_TAG", "AVTransport:Subscription:ended:" + gENASubscription.e());
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void established(GENASubscription gENASubscription) {
            LinkplayLog.i("SDK_TAG", "AVTransport:Subscription:established:" + gENASubscription.e());
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void eventReceived(GENASubscription gENASubscription) {
            com.android.wiimu.upnp.sucription.a.a().c(gENASubscription);
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void eventsMissed(GENASubscription gENASubscription, int i2) {
        }

        @Override // com.android.wiimu.upnp.sucription.IWiimuSubscriptionEventCallback
        public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str) {
        }
    }

    public b(b.c cVar) {
        this.f22496e = 0L;
        this.f22494b = cVar;
        this.f22496e = System.currentTimeMillis();
    }

    private void c() {
        g();
        j();
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.f22499i > 4) {
            this.f22499i = 0;
            return;
        }
        k();
        if (this.f22495c == null) {
            LinkplayLog.i("UPNP-SEARCH", "mediaRender is null makeDlnaSubscriptionRenderingControl");
            return;
        }
        try {
            com.android.wiimu.upnp.sucription.c.a().subscriptEventRenderingControl(this.f22495c, new f());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private Device k() {
        Device deviceA = com.android.wiimu.upnp.a.f().a(this.f22494b.f20676b);
        this.f22495c = deviceA;
        return deviceA;
    }

    public void a() {
        c();
        if (this.d == null) {
            this.d = new Timer();
        }
        this.d.scheduleAtFixedRate(new a(), 0L, LiveTranslationEntity.DefaultSentenceTimeOut);
    }

    public void d() {
        try {
            h.a().getInfoEx(k(), new C0037b());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void e() {
        try {
            h.a().getMediaInfo(k(), new d());
        } catch (Exception unused) {
        }
    }

    public void f() {
        if (this.f22498h > 4) {
            this.f22498h = 0;
            return;
        }
        k();
        if (this.f22495c == null) {
            LinkplayLog.i("UPNP-SEARCH", "mediaRender == null makeDlnaSubscriptionAVTransport");
            return;
        }
        try {
            com.android.wiimu.upnp.sucription.c.a().subscriptEventAVTransport(this.f22495c, new e());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void g() {
        f();
        i();
        h();
    }

    public void h() {
        try {
            k();
            if (this.f22495c == null) {
                LinkplayLog.i("UPNP-SEARCH", "mediaRender is null makeDlnaSubscriptionPlayQueue");
            } else {
                com.android.wiimu.upnp.sucription.c.a().subscriptEventPlayQueue(this.f22495c, new g(this));
            }
        } catch (Exception unused) {
        }
    }

    public void j() {
        try {
            h.a().getInfoEx(k(), new c());
        } catch (Exception unused) {
        }
    }

    public void l() {
        this.f22493a = true;
        Timer timer = this.d;
        if (timer != null) {
            timer.cancel();
            this.d = null;
        }
    }

    public b.c b() {
        return this.f22494b;
    }
}
