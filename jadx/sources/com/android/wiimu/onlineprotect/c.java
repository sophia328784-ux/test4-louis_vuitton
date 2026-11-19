package com.android.wiimu.onlineprotect;

import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPControlPointSearchTemplate;
import com.linkplay.core.clingx.LPSearchControlPoint;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Collection;
import java.util.Timer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.teleal.cling.android.AndroidUpnpService;
import org.teleal.cling.model.meta.DeviceIdentity;
import org.teleal.cling.model.meta.RemoteDevice;
import org.teleal.cling.model.meta.RemoteDeviceIdentity;
import org.teleal.cling.registry.RegistryImpl;

/* JADX INFO: loaded from: classes.dex */
public class c extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Timer f22473a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ExecutorService f22475c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExecutorService f22476e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f22474b = 1;
    private ScheduledExecutorService d = new ScheduledThreadPoolExecutor(2);

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LPDeviceManager.getInstance().isAppOnForeground();
            try {
                c.this.a();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (LPSearchControlPoint.getInstance().getWiimuUpnpTemplate() != null) {
            for (RemoteDevice remoteDevice : LPSearchControlPoint.getInstance().getWiimuUpnpTemplate().d().b().o()) {
                try {
                    DeviceIdentity deviceIdentity = remoteDevice.f78444a;
                    if (((RemoteDeviceIdentity) deviceIdentity).f78458a != null) {
                        this.d.execute(new b(this, ((RemoteDeviceIdentity) deviceIdentity).f78474c.getHost(), (RemoteDeviceIdentity) remoteDevice.f78444a));
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    private void b() {
        LinkplayLog.i(LinkplayLogTags.LPLogTag, "startPingTimer ++");
        this.d.scheduleAtFixedRate(new a(), 0L, LiveTranslationEntity.DefaultSentenceTimeOut, TimeUnit.MILLISECONDS);
    }

    public void c() {
        Timer timer = this.f22473a;
        if (timer != null) {
            timer.cancel();
            this.f22473a = null;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        b();
    }

    public class b extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f22478a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RemoteDeviceIdentity f22479b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f22480c;

        public b(c cVar, String str, RemoteDeviceIdentity remoteDeviceIdentity) {
            this.f22478a = str;
            this.f22479b = remoteDeviceIdentity;
        }

        private void a() {
            AndroidUpnpService upnpService;
            RegistryImpl registryImplB;
            Collection<RemoteDevice> collectionO;
            LPControlPointSearchTemplate lPSearchTemplate = LPSearchControlPoint.getInstance().getLPSearchTemplate();
            if (lPSearchTemplate == null || (upnpService = lPSearchTemplate.getUpnpService()) == null || (registryImplB = upnpService.b()) == null || (collectionO = registryImplB.o()) == null || collectionO.size() == 0) {
                return;
            }
            for (RemoteDevice remoteDevice : collectionO) {
                try {
                    if (((RemoteDeviceIdentity) remoteDevice.f78444a).f78458a.toString().equals(this.f22480c)) {
                        registryImplB.B((RemoteDeviceIdentity) remoteDevice.f78444a);
                        if (!isAlive() || isInterrupted()) {
                            return;
                        }
                        interrupt();
                        return;
                    }
                    continue;
                } catch (Exception unused) {
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (!LPDeviceManager.getInstance().isAppOnForeground()) {
                    a();
                } else if (a(this.f22478a)) {
                    a();
                }
            } catch (Exception unused) {
            }
        }

        public b(c cVar, String str, String str2) {
            this.f22478a = str;
            this.f22480c = str2;
        }

        private boolean a(String str) {
            try {
                return InetAddress.getByName(str).isReachable(HarvestConfiguration.SLOW_START_THRESHOLD);
            } catch (IOException e2) {
                e2.printStackTrace();
                return false;
            }
        }
    }
}
