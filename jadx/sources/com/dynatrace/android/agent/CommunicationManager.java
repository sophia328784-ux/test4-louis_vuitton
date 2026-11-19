package com.dynatrace.android.agent;

import android.content.SharedPreferences;
import android.net.NetworkInfo;
import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.android.agent.comm.HttpResponse;
import com.dynatrace.android.agent.comm.InvalidResponseException;
import com.dynatrace.android.agent.comm.MonitoringDataPacket;
import com.dynatrace.android.agent.comm.RequestExecutor;
import com.dynatrace.android.agent.communication.CommunicationManagerBridge;
import com.dynatrace.android.agent.conf.ConfigurationPublisher;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.conf.ServerConfigurationManager;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.db.DataAccessObject;
import com.dynatrace.android.agent.db.DatabaseWriteQueue;
import com.dynatrace.android.agent.db.EventsDbHelper;
import com.dynatrace.android.agent.db.MonitoringDataEntity;
import com.dynatrace.android.agent.metrics.AndroidMetrics;
import com.dynatrace.android.agent.util.Utility;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.cj;
import defpackage.pq0;
import defpackage.s3;
import defpackage.wm;
import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.ws.RealWebSocket;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class CommunicationManager {
    public static final String w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public DataAccessObject f27262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RequestExecutor f27263b;
    public Thread l;
    public Timer m;
    public ConnectionAttemptMonitor n;
    public final CalloutTable r;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BasicSegment.UpdatableDataGenerator f27264c = new BasicSegment.UpdatableDataGenerator();
    public final TimeLineProvider d = TimeLineProvider.f27311c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f27266f = new Object();
    public final Object g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AgentState f27267h = new AgentState.Enabled(false);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f27268i = new AtomicBoolean(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f27269j = new AtomicBoolean(false);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicBoolean f27270k = new AtomicBoolean(false);
    public boolean o = false;
    public long p = 0;
    public long q = Long.MAX_VALUE;
    public ConfigurationPublisher s = null;
    public CommunicationManagerBridge t = null;
    public volatile boolean u = false;
    public volatile boolean v = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WriteLock f27265e = new WriteLock();

    /* JADX INFO: renamed from: com.dynatrace.android.agent.CommunicationManager$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f27271a;

        static {
            int[] iArr = new int[SendState.values().length];
            f27271a = iArr;
            try {
                iArr[SendState.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27271a[SendState.MORE_DATA_AVAILABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27271a[SendState.DATA_NOT_SENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f27271a[SendState.NO_DATA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public class DataSendTimerTask extends TimerTask {
        public DataSendTimerTask() {
        }

        /* JADX WARN: Code duplicated, block: B:114:0x01f8 A[Catch: all -> 0x01bf, DONT_GENERATE, TRY_LEAVE, TryCatch #3 {all -> 0x01bf, blocks: (B:95:0x01ad, B:97:0x01b5, B:100:0x01bd, B:104:0x01c1, B:106:0x01c9, B:108:0x01da, B:110:0x01e7, B:112:0x01f5, B:114:0x01f8), top: B:148:0x01ad }] */
        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            boolean z;
            ConnectionAttemptMonitor connectionAttemptMonitor = CommunicationManager.this.n;
            if (connectionAttemptMonitor == null) {
                if (Global.f27307a) {
                    String str = CommunicationManager.w;
                    Utility.n("invalid DataSendTimerTask appeared");
                }
                CommunicationManager.this.i();
                return;
            }
            synchronized (connectionAttemptMonitor) {
                z = false;
                if (!connectionAttemptMonitor.f27279f.get() && !connectionAttemptMonitor.f27278e && connectionAttemptMonitor.f27277c == null && (connectionAttemptMonitor.f27275a <= 0 || connectionAttemptMonitor.f27276b >= 3420000)) {
                    if (!CommunicationManager.this.f27270k.get()) {
                        long jA = CommunicationManager.this.d.a();
                        if (CommunicationManager.this.q == Long.MAX_VALUE) {
                            if (Global.f27307a) {
                                String str2 = CommunicationManager.w;
                                Utility.n("connection attempts exhausted - scheduling recovery in 2 hours");
                            }
                            CommunicationManager.this.q = jA + 7200000;
                        }
                        if (jA < CommunicationManager.this.q) {
                            return;
                        }
                        if (Global.f27307a) {
                            String str3 = CommunicationManager.w;
                            Utility.n("try to recover connection after 2 hours of sleep");
                        }
                        CommunicationManager communicationManager = CommunicationManager.this;
                        communicationManager.q = Long.MAX_VALUE;
                        ConnectionAttemptMonitor connectionAttemptMonitor2 = communicationManager.n;
                        synchronized (connectionAttemptMonitor2) {
                            try {
                                connectionAttemptMonitor2.f27278e = false;
                                connectionAttemptMonitor2.f27279f.set(false);
                                if (Global.f27307a) {
                                    Utility.n("Connection stop notification");
                                }
                                connectionAttemptMonitor2.a();
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        CommunicationManager communicationManager2 = CommunicationManager.this;
                        communicationManager2.n = null;
                        communicationManager2.n = new ConnectionAttemptMonitor();
                        CommunicationManager.this.f27268i.set(true);
                    }
                }
            }
            long jA2 = CommunicationManager.this.d.a();
            CommunicationManager communicationManager3 = CommunicationManager.this;
            long j2 = jA2 - communicationManager3.p;
            ConnectionAttemptMonitor connectionAttemptMonitor3 = communicationManager3.n;
            if (connectionAttemptMonitor3.d && !connectionAttemptMonitor3.f27278e && connectionAttemptMonitor3.f27276b > 0) {
                communicationManager3.f27268i.set(connectionAttemptMonitor3.f27279f.getAndSet(false));
                if (!CommunicationManager.this.f27268i.get()) {
                    if (Global.f27307a) {
                        String str4 = CommunicationManager.w;
                        Utility.n(String.format("ReconnWait: mUemActive=%b lastCheck=%ds ago", Boolean.valueOf(CommunicationManager.this.f27270k.get()), Long.valueOf(j2 / 1000)));
                        return;
                    }
                    return;
                }
            }
            if (j2 >= 7200000 && !CommunicationManager.this.u) {
                CommunicationManager.this.f27268i.set(true);
            }
            if (!CommunicationManager.this.f27268i.get()) {
                if (CommunicationManager.this.v) {
                    Utility.b("taskTimer: keep waiting for the GET request executed via BPv4");
                } else {
                    CommunicationManager communicationManager4 = CommunicationManager.this;
                    communicationManager4.f27268i.set(communicationManager4.n.f27279f.getAndSet(false) && Session.a().e());
                }
            }
            if (Global.f27307a) {
                String str5 = CommunicationManager.w;
                boolean z2 = CommunicationManager.this.f27268i.get();
                boolean z3 = CommunicationManager.this.f27270k.get();
                boolean z4 = CommunicationManager.this.v;
                StringBuilder sbM = cj.m("TaskTimer mForceUemUpdate=", " mUemActive=", " waitingForInitialBPv4Config=", z2, z3);
                sbM.append(z4);
                Utility.n(sbM.toString());
            }
            if (CommunicationManager.this.f27270k.get() || CommunicationManager.this.f27268i.get()) {
                if (!CommunicationManager.this.v) {
                    CalloutTable calloutTable = CommunicationManager.this.r;
                    synchronized (calloutTable.f27259c) {
                        try {
                            long j3 = calloutTable.f27258b;
                            if (j3 > 0) {
                                long j4 = j3 - 1;
                                calloutTable.f27258b = j4;
                                z = j4 == 0;
                            } else if (calloutTable.f27259c.size() > 0) {
                                CalloutTable.CTElement cTElement = (CalloutTable.CTElement) calloutTable.f27259c.get(0);
                                long j5 = cTElement.f27261b - 1;
                                cTElement.f27261b = j5;
                                if (j5 == 0) {
                                    do {
                                        calloutTable.f27259c.remove(0);
                                        if (calloutTable.f27259c.size() <= 0) {
                                            break;
                                        }
                                    } while (((CalloutTable.CTElement) calloutTable.f27259c.get(0)).f27261b == 0);
                                    z = true;
                                }
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    if (z) {
                        CommunicationManager.this.f27269j.set(true);
                    }
                    AtomicInteger atomicInteger = CustomSegment.s;
                    if (atomicInteger.get() == 1) {
                        CommunicationManager.this.f27269j.set(true);
                        atomicInteger.set(2);
                    }
                }
                if (Global.f27307a) {
                    String str6 = CommunicationManager.w;
                    Utility.n(String.format("TaskTimer mForceSendEvent=%s thread ID=%d", Boolean.valueOf(CommunicationManager.this.f27269j.get()), Long.valueOf(Utility.f(CommunicationManager.this.l))));
                }
                if (CommunicationManager.this.f27269j.get() || CommunicationManager.this.f27268i.get()) {
                    synchronized (CommunicationManager.this.l) {
                        CommunicationManager.this.l.notify();
                    }
                    CommunicationManager communicationManager5 = CommunicationManager.this;
                    communicationManager5.p = communicationManager5.d.a();
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SendState {
        private static final /* synthetic */ SendState[] $VALUES;
        public static final SendState DATA_NOT_SENT;
        public static final SendState FINISHED;
        public static final SendState MORE_DATA_AVAILABLE;
        public static final SendState NO_DATA;

        static {
            SendState sendState = new SendState("NO_DATA", 0);
            NO_DATA = sendState;
            SendState sendState2 = new SendState("DATA_NOT_SENT", 1);
            DATA_NOT_SENT = sendState2;
            SendState sendState3 = new SendState("MORE_DATA_AVAILABLE", 2);
            MORE_DATA_AVAILABLE = sendState3;
            SendState sendState4 = new SendState("FINISHED", 3);
            FINISHED = sendState4;
            $VALUES = new SendState[]{sendState, sendState2, sendState3, sendState4};
        }

        public static SendState valueOf(String str) {
            return (SendState) Enum.valueOf(SendState.class, str);
        }

        public static SendState[] values() {
            return (SendState[]) $VALUES.clone();
        }
    }

    public class WriteLock {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public File f27272a;

        public WriteLock() {
        }
    }

    static {
        boolean z = Global.f27307a;
        w = "dtxCommunicationManager";
    }

    public CommunicationManager(CalloutTable calloutTable) {
        this.r = calloutTable;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00ef A[PHI: r0 r3 r4
      0x00ef: PHI (r0v24 com.dynatrace.android.agent.CommunicationManager$SendState) = 
      (r0v21 com.dynatrace.android.agent.CommunicationManager$SendState)
      (r0v23 com.dynatrace.android.agent.CommunicationManager$SendState)
      (r0v25 com.dynatrace.android.agent.CommunicationManager$SendState)
     binds: [B:84:0x014a, B:69:0x0116, B:59:0x00ed] A[DONT_GENERATE, DONT_INLINE]
      0x00ef: PHI (r3v12 com.dynatrace.android.agent.CommunicationManager$WriteLock) = 
      (r3v9 com.dynatrace.android.agent.CommunicationManager$WriteLock)
      (r3v11 com.dynatrace.android.agent.CommunicationManager$WriteLock)
      (r3v14 com.dynatrace.android.agent.CommunicationManager$WriteLock)
     binds: [B:84:0x014a, B:69:0x0116, B:59:0x00ed] A[DONT_GENERATE, DONT_INLINE]
      0x00ef: PHI (r4v5 java.io.File) = (r4v2 java.io.File), (r4v4 java.io.File), (r4v6 java.io.File) binds: [B:84:0x014a, B:69:0x0116, B:59:0x00ed] A[DONT_GENERATE, DONT_INLINE]] */
    public static void a(CommunicationManager communicationManager, boolean z) {
        boolean z2;
        SendState sendState;
        WriteLock writeLock;
        File file;
        communicationManager.getClass();
        boolean z3 = Global.f27307a;
        AdkSettings adkSettings = AdkSettings.f27249k;
        ServerConfiguration serverConfiguration = adkSettings.g;
        if (!z) {
            communicationManager.f27262a.a(communicationManager.d.a(), serverConfiguration.f27412e > 0);
            return;
        }
        Session sessionA = Session.a();
        if (!sessionA.f() || !communicationManager.f27269j.compareAndSet(true, false)) {
            if (communicationManager.f27268i.get()) {
                communicationManager.b(serverConfiguration, sessionA);
                return;
            } else {
                if (sessionA.f() || !communicationManager.f27269j.get()) {
                    return;
                }
                communicationManager.b(serverConfiguration, sessionA);
                return;
            }
        }
        long j2 = sessionA.f27476b;
        WriteLock writeLock2 = communicationManager.f27265e;
        writeLock2.getClass();
        try {
            File file2 = new File(adkSettings.f27253e.getCacheDir() + File.separator + "Write.lock");
            boolean zExists = file2.exists();
            if (zExists && CommunicationManager.this.d.a() - file2.lastModified() > 60000) {
                file2.delete();
                boolean z4 = Global.f27307a;
                zExists = false;
            }
            if (!zExists) {
                try {
                    if (file2.createNewFile()) {
                        file2.deleteOnExit();
                        writeLock2.f27272a = file2;
                    } else {
                        zExists = true;
                    }
                } catch (IOException unused) {
                    boolean z5 = Global.f27307a;
                }
            }
            z2 = !zExists;
        } catch (Exception unused2) {
            boolean z6 = Global.f27307a;
            z2 = false;
        }
        if (z2) {
            try {
                long jA = communicationManager.d.a();
                boolean z7 = Global.f27307a;
                DatabaseWriteQueue.getInstance().flushQueue();
                communicationManager.f27262a.a(jA, serverConfiguration.f27412e > 0);
                int i2 = serverConfiguration.f27412e;
                if (i2 > 0) {
                    DataAccessObject dataAccessObject = communicationManager.f27262a;
                    synchronized (dataAccessObject) {
                        try {
                            dataAccessObject.f27507a.d(EventsDbHelper.f27513e, i2);
                        } catch (Exception unused3) {
                            boolean z8 = Global.f27307a;
                        }
                    }
                }
                MonitoringDataEntity monitoringDataEntityB = communicationManager.f27262a.b((((long) serverConfiguration.f27409a) * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) - 5, communicationManager.f27264c);
                if (monitoringDataEntityB == null) {
                    sendState = SendState.NO_DATA;
                    boolean z9 = Global.f27307a;
                    writeLock = communicationManager.f27265e;
                    file = writeLock.f27272a;
                    if (file != null) {
                        file.delete();
                        writeLock.f27272a = null;
                    }
                } else {
                    boolean z10 = !monitoringDataEntityB.g;
                    long j3 = monitoringDataEntityB.f27516a;
                    if (communicationManager.e(serverConfiguration, monitoringDataEntityB.f27520f, monitoringDataEntityB.d, j3 == j2, j3, monitoringDataEntityB.f27517b, z10)) {
                        DataAccessObject dataAccessObject2 = communicationManager.f27262a;
                        synchronized (dataAccessObject2) {
                            try {
                                dataAccessObject2.f27507a.e(monitoringDataEntityB.f27516a, monitoringDataEntityB.f27519e, monitoringDataEntityB.f27517b, monitoringDataEntityB.f27518c, monitoringDataEntityB.d);
                            } catch (Exception unused4) {
                                boolean z11 = Global.f27307a;
                            }
                        }
                        sendState = monitoringDataEntityB.g ? SendState.FINISHED : SendState.MORE_DATA_AVAILABLE;
                        boolean z12 = Global.f27307a;
                        writeLock = communicationManager.f27265e;
                        file = writeLock.f27272a;
                        if (file != null) {
                            file.delete();
                            writeLock.f27272a = null;
                        }
                    } else {
                        sendState = SendState.DATA_NOT_SENT;
                        boolean z13 = Global.f27307a;
                        writeLock = communicationManager.f27265e;
                        file = writeLock.f27272a;
                        if (file != null) {
                            file.delete();
                            writeLock.f27272a = null;
                        }
                    }
                }
            } catch (Throwable th) {
                boolean z14 = Global.f27307a;
                WriteLock writeLock3 = communicationManager.f27265e;
                File file3 = writeLock3.f27272a;
                if (file3 != null) {
                    file3.delete();
                    writeLock3.f27272a = null;
                }
                throw th;
            }
        } else {
            sendState = SendState.NO_DATA;
        }
        int i3 = AnonymousClass1.f27271a[sendState.ordinal()];
        if (i3 == 1) {
            Session sessionA2 = Session.a();
            boolean zF = sessionA2.f();
            AtomicBoolean atomicBoolean = communicationManager.f27268i;
            if (zF) {
                atomicBoolean.set(false);
                return;
            } else {
                if (atomicBoolean.get()) {
                    communicationManager.b(serverConfiguration, sessionA2);
                    return;
                }
                return;
            }
        }
        if (i3 != 2) {
            if (i3 == 3) {
                communicationManager.f27269j.set(true);
                return;
            } else {
                if (i3 == 4 && communicationManager.f27268i.get()) {
                    communicationManager.b(serverConfiguration, sessionA);
                    return;
                }
                return;
            }
        }
        communicationManager.f27269j.set(true);
        Session sessionA3 = Session.a();
        boolean zF2 = sessionA3.f();
        AtomicBoolean atomicBoolean2 = communicationManager.f27268i;
        if (zF2) {
            atomicBoolean2.set(false);
        } else if (atomicBoolean2.get()) {
            communicationManager.b(serverConfiguration, sessionA3);
        }
    }

    public final void b(ServerConfiguration serverConfiguration, Session session) {
        ConnectionAttemptMonitor connectionAttemptMonitor;
        boolean zF = true;
        this.f27262a.a(this.d.a(), serverConfiguration.f27412e > 0);
        try {
            boolean z = !session.f();
            RequestExecutor requestExecutor = this.f27263b;
            int i2 = AdkSettings.f27249k.f27252c;
            requestExecutor.getClass();
            c(session, requestExecutor.a(serverConfiguration, z, null, i2, session.f27476b, session.f27477c, false), true);
            if (this.m != null && (connectionAttemptMonitor = this.n) != null) {
                connectionAttemptMonitor.c(true);
            }
            zF = Session.a().f();
        } catch (Exception e2) {
            if (Global.f27307a) {
                if (e2 instanceof UnknownHostException) {
                    Utility.n("beacon request failed");
                    Utility.n(e2.toString());
                } else {
                    Utility.g();
                }
            }
            d(e2);
        }
        AtomicBoolean atomicBoolean = this.f27268i;
        if (zF) {
            atomicBoolean.set(false);
        }
        if (Global.f27307a) {
            Utility.n("UEM state update: UEM state: " + this.f27270k.get() + " mForceUemUpdate: " + atomicBoolean.get());
        }
    }

    public final void c(Session session, ServerConfiguration serverConfiguration, boolean z) {
        CommunicationManagerBridge communicationManagerBridge;
        synchronized (this.f27266f) {
            try {
                AdkSettings adkSettings = AdkSettings.f27249k;
                if (serverConfiguration.o < adkSettings.g.o) {
                    Utility.b("discard too old configuration");
                    return;
                }
                boolean z2 = false;
                f((serverConfiguration.g == 1) && (this.f27267h instanceof AgentState.Enabled));
                if (serverConfiguration.n == ServerConfiguration.Status.ERROR) {
                    boolean z3 = Global.f27307a;
                } else {
                    SharedPreferences.Editor editorEdit = adkSettings.d.f27380a.edit();
                    try {
                        editorEdit.putString("ServerConfig", ServerConfigurationManager.h(serverConfiguration));
                    } catch (JSONException unused) {
                        boolean z4 = Global.f27307a;
                        editorEdit.remove("ServerConfig");
                    }
                    editorEdit.apply();
                }
                Core.b(serverConfiguration);
                if (z && (communicationManagerBridge = this.t) != null) {
                    communicationManagerBridge.a(serverConfiguration);
                }
                if (session == null || session.f()) {
                    return;
                }
                synchronized (this.g) {
                    try {
                        if (!session.f()) {
                            session.d(serverConfiguration);
                            z2 = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z2) {
                    ConfigurationPublisher configurationPublisher = this.s;
                    if (configurationPublisher != null) {
                        configurationPublisher.a(new s3(session, 18));
                    }
                    if (session.e()) {
                        boolean z5 = Global.f27307a;
                        DatabaseWriteQueue.getInstance().flushQueue();
                        DataAccessObject dataAccessObject = this.f27262a;
                        synchronized (dataAccessObject) {
                            try {
                                dataAccessObject.f27507a.j(session);
                            } catch (Exception unused2) {
                                boolean z6 = Global.f27307a;
                            }
                        }
                    } else {
                        DataAccessObject dataAccessObject2 = this.f27262a;
                        long j2 = session.f27476b;
                        int i2 = session.f27477c;
                        synchronized (dataAccessObject2) {
                            try {
                                dataAccessObject2.f27507a.getWritableDatabase().delete("Events", "visitor_id= ? AND session_id= ?", new String[]{String.valueOf(j2), String.valueOf(i2)});
                            } catch (Exception unused3) {
                                boolean z7 = Global.f27307a;
                            }
                        }
                    }
                    AdkSettings.f27249k.getClass();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void d(Exception exc) {
        ConnectionAttemptMonitor connectionAttemptMonitor;
        List list;
        if (exc instanceof InvalidResponseException) {
            HttpResponse httpResponse = ((InvalidResponseException) exc).f27326b;
            if (httpResponse.f27323a == 429 && (list = (List) httpResponse.d.get("Retry-After")) != null && !list.isEmpty()) {
                try {
                    int i2 = Integer.parseInt((String) list.get(0));
                    f(false);
                    DatabaseWriteQueue.getInstance().flushQueue();
                    DataAccessObject dataAccessObject = Core.g;
                    dataAccessObject.getClass();
                    try {
                        dataAccessObject.f27507a.getWritableDatabase().delete("Events", null, null);
                    } catch (Exception unused) {
                        boolean z = Global.f27307a;
                    }
                    ConnectionAttemptMonitor connectionAttemptMonitor2 = this.n;
                    if (connectionAttemptMonitor2 != null) {
                        connectionAttemptMonitor2.d(i2);
                        return;
                    }
                } catch (NumberFormatException unused2) {
                    boolean z2 = Global.f27307a;
                }
            }
        }
        f(false);
        if (this.m == null || (connectionAttemptMonitor = this.n) == null) {
            return;
        }
        connectionAttemptMonitor.c(false);
    }

    public final boolean e(ServerConfiguration serverConfiguration, MonitoringDataPacket monitoringDataPacket, int i2, boolean z, long j2, int i3, boolean z2) {
        Exception exc;
        boolean zA;
        ConnectionAttemptMonitor connectionAttemptMonitor;
        try {
            AdkSettings adkSettings = AdkSettings.f27249k;
            AtomicBoolean atomicBoolean = adkSettings.f27251b;
            AtomicBoolean atomicBoolean2 = adkSettings.f27250a;
            if (atomicBoolean.get() || atomicBoolean2.get() || !z) {
                zA = false;
            } else {
                zA = BasicSegment.a(monitoringDataPacket);
                if (zA) {
                    try {
                        atomicBoolean2.set(true);
                    } catch (Exception e2) {
                        exc = e2;
                        if (zA) {
                            AdkSettings.f27249k.f27250a.set(false);
                        }
                        boolean z3 = Global.f27307a;
                        d(exc);
                        return false;
                    }
                }
            }
            RequestExecutor requestExecutor = this.f27263b;
            StringBuilder sb = new StringBuilder(monitoringDataPacket.f27327a);
            for (String str : monitoringDataPacket.f27328b) {
                sb.append("&");
                sb.append(str);
            }
            ServerConfiguration serverConfigurationA = requestExecutor.a(serverConfiguration, false, sb.toString(), i2, j2, i3, z2);
            if (zA) {
                AdkSettings adkSettings2 = AdkSettings.f27249k;
                adkSettings2.a(true);
                adkSettings2.f27250a.set(false);
            }
            c(null, serverConfigurationA, true);
            if (this.m != null && (connectionAttemptMonitor = this.n) != null) {
                connectionAttemptMonitor.c(true);
            }
            return true;
        } catch (Exception e3) {
            exc = e3;
            zA = false;
        }
    }

    public final void f(boolean z) {
        this.f27270k.set(z);
        ConfigurationPublisher configurationPublisher = this.s;
        if (configurationPublisher != null) {
            configurationPublisher.a(new wm(z, 0));
        }
    }

    public final void g() {
        f(false);
        Thread thread = this.l;
        if (Global.f27307a) {
            Utility.n("Shutdown allocated time: 5000 ms threadId=" + Utility.f(thread));
        }
        long jA = this.d.a();
        synchronized (thread) {
            try {
                if (this.v) {
                    Utility.b("cannot flush events while still waiting for BPv4 configuration");
                } else {
                    this.f27269j.set(true);
                }
                this.o = false;
                thread.notify();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (thread.isAlive()) {
            try {
                thread.join(LiveTranslationEntity.DefaultSentenceTimeOut);
            } catch (InterruptedException unused) {
                if (Global.f27307a) {
                    Utility.g();
                }
            }
            if (thread.isAlive() && Global.f27307a) {
                Utility.g();
            }
        }
        this.f27263b.f27329a.set(0);
        this.v = false;
        if (Global.f27307a) {
            long jA2 = this.d.a() - jA;
            long jF = Utility.f(thread);
            StringBuilder sbQ = pq0.q(jA2, "Shutdown took: ", " ms threadID=");
            sbQ.append(jF);
            Utility.n(sbQ.toString());
        }
    }

    public final synchronized void h(boolean z) {
        ConnectionAttemptMonitor connectionAttemptMonitor;
        try {
            if (this.m != null) {
                return;
            }
            if (z || (connectionAttemptMonitor = this.n) == null) {
                this.n = new ConnectionAttemptMonitor();
            } else {
                synchronized (connectionAttemptMonitor) {
                    connectionAttemptMonitor.e(connectionAttemptMonitor.g);
                }
            }
            Timer timer = new Timer(w);
            this.m = timer;
            timer.schedule(new DataSendTimerTask(), this.o ? 0L : 100L, 10000L);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void i() {
        try {
            Timer timer = this.m;
            if (timer != null) {
                timer.cancel();
                this.m.purge();
            }
            this.m = null;
            this.r.d();
            ConnectionAttemptMonitor connectionAttemptMonitor = this.n;
            if (connectionAttemptMonitor != null) {
                connectionAttemptMonitor.a();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public class EventSenderThread extends Thread {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private EventSenderThread() {
            super("dtxEventSenderThread");
            boolean z = Global.f27307a;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z;
            CommunicationManager.this.o = true;
            do {
                try {
                    synchronized (this) {
                        try {
                            if (!CommunicationManager.this.o) {
                                return;
                            }
                            wait();
                            CommunicationManager communicationManager = CommunicationManager.this;
                            z = communicationManager.o;
                            NetworkInfo networkInfoB = AndroidMetrics.a().b();
                            boolean z2 = networkInfoB != null && (networkInfoB.isAvailable() || networkInfoB.isConnected());
                            if (!z2) {
                                boolean z3 = Global.f27307a;
                            }
                            CommunicationManager.a(communicationManager, z2);
                        } catch (Throwable th) {
                            throw th;
                        }
                        return;
                    }
                } catch (InterruptedException unused) {
                    return;
                } catch (Exception unused2) {
                    boolean z4 = Global.f27307a;
                    return;
                }
            } while (z);
        }

        public /* synthetic */ EventSenderThread(CommunicationManager communicationManager, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public class PostCrashReportThread extends Thread {
        private final boolean isRootEvent;
        private final MonitoringDataPacket monitoringData;
        private final ServerConfiguration serverConfig;
        private final int serverId;
        private final int sessionId;
        private boolean successfully;
        private final long visitorId;

        private PostCrashReportThread(ServerConfiguration serverConfiguration, MonitoringDataPacket monitoringDataPacket, int i2, boolean z, long j2, int i3) {
            this.successfully = false;
            setName("POST CrashReport");
            this.serverConfig = serverConfiguration;
            this.monitoringData = monitoringDataPacket;
            this.serverId = i2;
            this.isRootEvent = z;
            this.visitorId = j2;
            this.sessionId = i3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasBeenSuccessfully() {
            return this.successfully;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            CommunicationManager communicationManager = CommunicationManager.this;
            ServerConfiguration serverConfiguration = this.serverConfig;
            MonitoringDataPacket monitoringDataPacket = this.monitoringData;
            int i2 = this.serverId;
            boolean z = this.isRootEvent;
            long j2 = this.visitorId;
            int i3 = this.sessionId;
            String str = CommunicationManager.w;
            this.successfully = communicationManager.e(serverConfiguration, monitoringDataPacket, i2, z, j2, i3, false);
        }

        public /* synthetic */ PostCrashReportThread(CommunicationManager communicationManager, ServerConfiguration serverConfiguration, MonitoringDataPacket monitoringDataPacket, int i2, boolean z, long j2, int i3, AnonymousClass1 anonymousClass1) {
            this(serverConfiguration, monitoringDataPacket, i2, z, j2, i3);
        }
    }
}
