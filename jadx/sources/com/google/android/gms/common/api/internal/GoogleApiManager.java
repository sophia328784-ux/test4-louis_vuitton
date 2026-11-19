package com.google.android.gms.common.api.internal;

import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.collection.ArraySet;
import androidx.collection.IndexBasedArrayIterator;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.internal.base.zak;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.zzw;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleApiManager implements Handler.Callback {
    public static final Status q = new Status(4, "Sign-out occurred while this API call was in progress.");
    public static final Status r = new Status(4, "The user must be signed in to make this API call.");
    public static final Object s = new Object();
    public static GoogleApiManager t;
    public TelemetryData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.google.android.gms.common.internal.service.zat f29029e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Context f29030f;
    public final GoogleApiAvailability g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final com.google.android.gms.common.internal.zao f29031h;
    public final com.google.android.gms.internal.base.zao o;
    public volatile boolean p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f29027b = 10000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f29028c = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f29032i = new AtomicInteger(1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicInteger f29033j = new AtomicInteger(0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ConcurrentHashMap f29034k = new ConcurrentHashMap(5, 0.75f, 1);
    public zaab l = null;
    public final ArraySet m = new ArraySet();
    public final ArraySet n = new ArraySet();

    public GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.p = true;
        this.f29030f = context;
        com.google.android.gms.internal.base.zao zaoVar = new com.google.android.gms.internal.base.zao(looper, this);
        this.o = zaoVar;
        this.g = googleApiAvailability;
        this.f29031h = new com.google.android.gms.common.internal.zao(googleApiAvailability);
        PackageManager packageManager = context.getPackageManager();
        if (DeviceProperties.d == null) {
            DeviceProperties.d = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        if (DeviceProperties.d.booleanValue()) {
            this.p = false;
        }
        zaoVar.sendMessage(zaoVar.obtainMessage(6));
    }

    public static void a() {
        synchronized (s) {
            try {
                GoogleApiManager googleApiManager = t;
                if (googleApiManager != null) {
                    googleApiManager.f29033j.incrementAndGet();
                    com.google.android.gms.internal.base.zao zaoVar = googleApiManager.o;
                    zaoVar.sendMessageAtFrontOfQueue(zaoVar.obtainMessage(10));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Status d(ApiKey apiKey, ConnectionResult connectionResult) {
        String str = apiKey.f29013b.f28973b;
        String strValueOf = String.valueOf(connectionResult);
        return new Status(connectionResult, tr.l(new StringBuilder(String.valueOf(str).length() + 63 + strValueOf.length()), "API: ", str, " is not available on this device. Connection failed with: ", strValueOf));
    }

    public static GoogleApiManager e(Context context) {
        GoogleApiManager googleApiManager;
        HandlerThread handlerThread;
        synchronized (s) {
            if (t == null) {
                synchronized (GmsClientSupervisor.f29186a) {
                    try {
                        handlerThread = GmsClientSupervisor.f29188c;
                        if (handlerThread == null) {
                            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
                            GmsClientSupervisor.f29188c = handlerThread2;
                            handlerThread2.start();
                            handlerThread = GmsClientSupervisor.f29188c;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                t = new GoogleApiManager(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.f28961e);
            }
            googleApiManager = t;
        }
        return googleApiManager;
    }

    public final zabk b(GoogleApi googleApi) {
        ApiKey apiKey = googleApi.f28989f;
        ConcurrentHashMap concurrentHashMap = this.f29034k;
        zabk zabkVar = (zabk) concurrentHashMap.get(apiKey);
        if (zabkVar == null) {
            zabkVar = new zabk(this, googleApi);
            concurrentHashMap.put(apiKey, zabkVar);
        }
        if (zabkVar.f29075b.g()) {
            this.n.add(apiKey);
        }
        zabkVar.p();
        return zabkVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    public final void c(TaskCompletionSource taskCompletionSource, int i2, GoogleApi googleApi) {
        zaby zabyVar;
        GoogleApiManager googleApiManager;
        if (i2 != 0) {
            ApiKey apiKey = googleApi.f28989f;
            if (g()) {
                RootTelemetryConfiguration rootTelemetryConfiguration = RootTelemetryConfigManager.a().f29202a;
                boolean z = true;
                if (rootTelemetryConfiguration != null) {
                    if (rootTelemetryConfiguration.f29204c) {
                        boolean z2 = rootTelemetryConfiguration.d;
                        zabk zabkVar = (zabk) this.f29034k.get(apiKey);
                        if (zabkVar != null) {
                            Object obj = zabkVar.f29075b;
                            if (obj instanceof BaseGmsClient) {
                                BaseGmsClient baseGmsClient = (BaseGmsClient) obj;
                                if (baseGmsClient.x == null || baseGmsClient.b()) {
                                    z = z2;
                                } else {
                                    ConnectionTelemetryConfiguration connectionTelemetryConfigurationA = zaby.a(zabkVar, baseGmsClient, i2);
                                    if (connectionTelemetryConfigurationA != null) {
                                        zabkVar.s++;
                                        z = connectionTelemetryConfigurationA.d;
                                    }
                                }
                            }
                        } else {
                            z = z2;
                        }
                    }
                    zabyVar = null;
                    googleApiManager = this;
                }
                googleApiManager = this;
                zabyVar = new zaby(googleApiManager, i2, apiKey, z ? System.currentTimeMillis() : 0L, z ? SystemClock.elapsedRealtime() : 0L);
            } else {
                zabyVar = null;
                googleApiManager = this;
            }
            if (zabyVar != null) {
                zzw zzwVar = taskCompletionSource.f32085a;
                final com.google.android.gms.internal.base.zao zaoVar = googleApiManager.o;
                Objects.requireNonNull(zaoVar);
                zzwVar.b(new Executor() { // from class: com.google.android.gms.common.api.internal.zabp
                    @Override // java.util.concurrent.Executor
                    public final /* synthetic */ void execute(Runnable runnable) {
                        zaoVar.post(runnable);
                    }
                }, zabyVar);
            }
        }
    }

    public final void f(zaab zaabVar) {
        synchronized (s) {
            try {
                if (this.l != zaabVar) {
                    this.l = zaabVar;
                    this.m.clear();
                }
                this.m.addAll(zaabVar.g);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean g() {
        int i2;
        if (this.f29028c) {
            return false;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration = RootTelemetryConfigManager.a().f29202a;
        if (rootTelemetryConfiguration != null && !rootTelemetryConfiguration.f29204c) {
            return false;
        }
        SparseIntArray sparseIntArray = this.f29031h.f29232a;
        synchronized (sparseIntArray) {
            i2 = sparseIntArray.get(203400000, -1);
        }
        return i2 == -1 || i2 == 0;
    }

    public final boolean h(ConnectionResult connectionResult, int i2) {
        GoogleApiAvailability googleApiAvailability = this.g;
        googleApiAvailability.getClass();
        Context context = this.f29030f;
        if (!InstantApps.a(context)) {
            int i3 = connectionResult.f28953c;
            PendingIntent activity = connectionResult.d;
            if (!((i3 == 0 || activity == null) ? false : true)) {
                activity = null;
                Intent intentA = googleApiAvailability.a(context, i3, null);
                if (intentA != null) {
                    activity = PendingIntent.getActivity(context, 0, intentA, 201326592);
                }
            }
            if (activity != null) {
                int i4 = GoogleApiActivity.f28999c;
                Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
                intent.putExtra("pending_intent", activity);
                intent.putExtra("failing_client_id", i2);
                intent.putExtra("notify_manager", true);
                googleApiAvailability.f(context, i3, PendingIntent.getActivity(context, 0, intent, zak.f29620a | 134217728));
                googleApiAvailability.g(context, connectionResult, false);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:159:0x030a  */
    /* JADX WARN: Code duplicated, block: B:161:0x030e  */
    /* JADX WARN: Code duplicated, block: B:163:0x0342  */
    /* JADX WARN: Code duplicated, block: B:165:0x034c  */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z;
        Feature[] featureArrF;
        com.google.android.gms.internal.base.zao zaoVar = this.o;
        ConcurrentHashMap concurrentHashMap = this.f29034k;
        int i2 = message.what;
        zabk zabkVar = null;
        switch (i2) {
            case 1:
                this.f29027b = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                zaoVar.removeMessages(12);
                Iterator it = concurrentHashMap.keySet().iterator();
                while (it.hasNext()) {
                    zaoVar.sendMessageDelayed(zaoVar.obtainMessage(12, (ApiKey) it.next()), this.f29027b);
                }
                return true;
            case 2:
                zal zalVar = (zal) message.obj;
                for (ApiKey apiKey : zalVar.f29115a.keySet()) {
                    zabk zabkVar2 = (zabk) concurrentHashMap.get(apiKey);
                    if (zabkVar2 == null) {
                        zalVar.a(apiKey, new ConnectionResult(13), null);
                        return true;
                    }
                    GoogleApiManager googleApiManager = zabkVar2.t;
                    Api.Client client = zabkVar2.f29075b;
                    if (client.isConnected()) {
                        zalVar.a(apiKey, ConnectionResult.g, client.c());
                    } else {
                        Preconditions.d(googleApiManager.o);
                        ConnectionResult connectionResult = zabkVar2.r;
                        if (connectionResult != null) {
                            zalVar.a(apiKey, connectionResult, null);
                        } else {
                            Preconditions.d(googleApiManager.o);
                            zabkVar2.l.add(zalVar);
                            zabkVar2.p();
                        }
                    }
                }
                return true;
            case 3:
                for (zabk zabkVar3 : concurrentHashMap.values()) {
                    Preconditions.d(zabkVar3.t.o);
                    zabkVar3.r = null;
                    zabkVar3.p();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zacc zaccVar = (zacc) message.obj;
                GoogleApi googleApi = zaccVar.f29098c;
                zai zaiVar = zaccVar.f29096a;
                zabk zabkVarB = (zabk) concurrentHashMap.get(googleApi.f28989f);
                if (zabkVarB == null) {
                    zabkVarB = b(googleApi);
                }
                if (!zabkVarB.f29075b.g() || this.f29033j.get() == zaccVar.f29097b) {
                    zabkVarB.n(zaiVar);
                    return true;
                }
                zaiVar.a(q);
                zabkVarB.o();
                return true;
            case 5:
                int i3 = message.arg1;
                ConnectionResult connectionResult2 = (ConnectionResult) message.obj;
                for (zabk zabkVar4 : concurrentHashMap.values()) {
                    if (zabkVar4.n == i3) {
                        zabkVar = zabkVar4;
                        if (zabkVar != null) {
                            StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 65);
                            sb.append("Could not find API instance ");
                            sb.append(i3);
                            sb.append(" while trying to fail enqueued calls.");
                            Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                            return true;
                        }
                        if (connectionResult2.f28953c == 13) {
                            zabkVar.g(d(zabkVar.f29076j, connectionResult2));
                            return true;
                        }
                        GoogleApiAvailability googleApiAvailability = this.g;
                        int i4 = connectionResult2.f28953c;
                        googleApiAvailability.getClass();
                        int i5 = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
                        String strX1 = ConnectionResult.X1(i4);
                        String str = connectionResult2.f28954e;
                        zabkVar.g(new Status(17, tr.l(new StringBuilder(strX1.length() + 69 + String.valueOf(str).length()), "Error resolution was canceled by the user, original error message: ", strX1, ": ", str)));
                        return true;
                    }
                }
                if (zabkVar != null) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(i3).length() + 65);
                    sb2.append("Could not find API instance ");
                    sb2.append(i3);
                    sb2.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                    return true;
                }
                if (connectionResult2.f28953c == 13) {
                    zabkVar.g(d(zabkVar.f29076j, connectionResult2));
                    return true;
                }
                GoogleApiAvailability googleApiAvailability2 = this.g;
                int i6 = connectionResult2.f28953c;
                googleApiAvailability2.getClass();
                int i7 = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
                String strX2 = ConnectionResult.X1(i6);
                String str2 = connectionResult2.f28954e;
                zabkVar.g(new Status(17, tr.l(new StringBuilder(strX2.length() + 69 + String.valueOf(str2).length()), "Error resolution was canceled by the user, original error message: ", strX2, ": ", str2)));
                return true;
            case 6:
                Context context = this.f29030f;
                if (context.getApplicationContext() instanceof Application) {
                    BackgroundDetector.a((Application) context.getApplicationContext());
                    BackgroundDetector backgroundDetector = BackgroundDetector.f29015f;
                    zabf zabfVar = new zabf(this);
                    backgroundDetector.getClass();
                    synchronized (backgroundDetector) {
                        backgroundDetector.d.add(zabfVar);
                        break;
                    }
                    AtomicBoolean atomicBoolean = backgroundDetector.f29016b;
                    AtomicBoolean atomicBoolean2 = backgroundDetector.f29017c;
                    if (atomicBoolean2.get()) {
                        z = atomicBoolean.get();
                    } else {
                        Boolean boolValueOf = ProcessUtils.f29344b;
                        if (boolValueOf == null) {
                            boolValueOf = Boolean.valueOf(Process.isIsolated());
                            ProcessUtils.f29344b = boolValueOf;
                        }
                        if (boolValueOf.booleanValue()) {
                            z = true;
                        } else {
                            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                            ActivityManager.getMyMemoryState(runningAppProcessInfo);
                            if (!atomicBoolean2.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                                atomicBoolean.set(true);
                            }
                            z = atomicBoolean.get();
                        }
                    }
                    if (!z) {
                        this.f29027b = 300000L;
                        return true;
                    }
                }
                return true;
            case 7:
                b((GoogleApi) message.obj);
                return true;
            case 9:
                if (concurrentHashMap.containsKey(message.obj)) {
                    zabk zabkVar5 = (zabk) concurrentHashMap.get(message.obj);
                    Preconditions.d(zabkVar5.t.o);
                    if (zabkVar5.p) {
                        zabkVar5.p();
                        return true;
                    }
                }
                return true;
            case 10:
                ArraySet arraySet = this.n;
                Iterator it2 = arraySet.iterator();
                while (true) {
                    IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it2;
                    if (!indexBasedArrayIterator.hasNext()) {
                        arraySet.clear();
                        return true;
                    }
                    zabk zabkVar6 = (zabk) concurrentHashMap.remove((ApiKey) indexBasedArrayIterator.next());
                    if (zabkVar6 != null) {
                        zabkVar6.o();
                    }
                }
                break;
            case 11:
                if (concurrentHashMap.containsKey(message.obj)) {
                    zabk zabkVar7 = (zabk) concurrentHashMap.get(message.obj);
                    GoogleApiManager googleApiManager2 = zabkVar7.t;
                    Preconditions.d(googleApiManager2.o);
                    boolean z2 = zabkVar7.p;
                    if (z2) {
                        if (z2) {
                            GoogleApiManager googleApiManager3 = zabkVar7.t;
                            ApiKey apiKey2 = zabkVar7.f29076j;
                            googleApiManager3.o.removeMessages(11, apiKey2);
                            googleApiManager3.o.removeMessages(9, apiKey2);
                            zabkVar7.p = false;
                        }
                        zabkVar7.g(googleApiManager2.g.b(googleApiManager2.f29030f, GoogleApiAvailabilityLight.f28963a) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
                        zabkVar7.f29075b.a("Timing out connection while resuming.");
                        return true;
                    }
                }
                return true;
            case 12:
                if (concurrentHashMap.containsKey(message.obj)) {
                    ((zabk) concurrentHashMap.get(message.obj)).i(true);
                    return true;
                }
                return true;
            case 14:
                zaac zaacVar = (zaac) message.obj;
                ApiKey apiKey3 = zaacVar.f29070a;
                TaskCompletionSource taskCompletionSource = zaacVar.f29071b;
                if (concurrentHashMap.containsKey(apiKey3)) {
                    taskCompletionSource.b(Boolean.valueOf(((zabk) concurrentHashMap.get(apiKey3)).i(false)));
                    return true;
                }
                taskCompletionSource.b(Boolean.FALSE);
                return true;
            case 15:
                zabl zablVar = (zabl) message.obj;
                if (concurrentHashMap.containsKey(zablVar.f29078a)) {
                    zabk zabkVar8 = (zabk) concurrentHashMap.get(zablVar.f29078a);
                    if (zabkVar8.q.contains(zablVar) && !zabkVar8.p) {
                        if (zabkVar8.f29075b.isConnected()) {
                            zabkVar8.d();
                            return true;
                        }
                        zabkVar8.p();
                        return true;
                    }
                }
                return true;
            case 16:
                zabl zablVar2 = (zabl) message.obj;
                if (concurrentHashMap.containsKey(zablVar2.f29078a)) {
                    zabk zabkVar9 = (zabk) concurrentHashMap.get(zablVar2.f29078a);
                    if (zabkVar9.q.remove(zablVar2)) {
                        GoogleApiManager googleApiManager4 = zabkVar9.t;
                        googleApiManager4.o.removeMessages(15, zablVar2);
                        googleApiManager4.o.removeMessages(16, zablVar2);
                        Feature feature = zablVar2.f29079b;
                        LinkedList<zai> linkedList = zabkVar9.f29074a;
                        ArrayList arrayList = new ArrayList(linkedList.size());
                        for (zai zaiVar2 : linkedList) {
                            if ((zaiVar2 instanceof zac) && (featureArrF = ((zac) zaiVar2).f(zabkVar9)) != null) {
                                int length = featureArrF.length;
                                for (int i8 = 0; i8 < length; i8++) {
                                    if (com.google.android.gms.common.internal.Objects.a(featureArrF[i8], feature)) {
                                        if (i8 < 0) {
                                        }
                                        arrayList.add(zaiVar2);
                                    }
                                    break;
                                }
                            }
                        }
                        int size = arrayList.size();
                        for (int i9 = 0; i9 < size; i9++) {
                            zai zaiVar3 = (zai) arrayList.get(i9);
                            linkedList.remove(zaiVar3);
                            zaiVar3.b(new UnsupportedApiCallException(feature));
                        }
                    }
                }
                return true;
            case 17:
                TelemetryData telemetryData = this.d;
                if (telemetryData != null) {
                    if (telemetryData.f29209b > 0 || g()) {
                        if (this.f29029e == null) {
                            this.f29029e = new com.google.android.gms.common.internal.service.zat(this.f29030f, TelemetryLoggingOptions.f29211c);
                        }
                        this.f29029e.j(telemetryData);
                    }
                    this.d = null;
                    return true;
                }
                return true;
            case 18:
                zabz zabzVar = (zabz) message.obj;
                long j2 = zabzVar.f29095c;
                MethodInvocation methodInvocation = zabzVar.f29093a;
                int i10 = zabzVar.f29094b;
                if (j2 == 0) {
                    TelemetryData telemetryData2 = new TelemetryData(i10, Arrays.asList(methodInvocation));
                    if (this.f29029e == null) {
                        this.f29029e = new com.google.android.gms.common.internal.service.zat(this.f29030f, TelemetryLoggingOptions.f29211c);
                    }
                    this.f29029e.j(telemetryData2);
                    return true;
                }
                TelemetryData telemetryData3 = this.d;
                if (telemetryData3 != null) {
                    List list = telemetryData3.f29210c;
                    if (telemetryData3.f29209b != i10 || (list != null && list.size() >= zabzVar.d)) {
                        zaoVar.removeMessages(17);
                        TelemetryData telemetryData4 = this.d;
                        if (telemetryData4 != null) {
                            if (telemetryData4.f29209b > 0 || g()) {
                                if (this.f29029e == null) {
                                    this.f29029e = new com.google.android.gms.common.internal.service.zat(this.f29030f, TelemetryLoggingOptions.f29211c);
                                }
                                this.f29029e.j(telemetryData4);
                            }
                            this.d = null;
                        }
                    } else {
                        TelemetryData telemetryData5 = this.d;
                        if (telemetryData5.f29210c == null) {
                            telemetryData5.f29210c = new ArrayList();
                        }
                        telemetryData5.f29210c.add(methodInvocation);
                    }
                }
                if (this.d == null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(methodInvocation);
                    this.d = new TelemetryData(i10, arrayList2);
                    zaoVar.sendMessageDelayed(zaoVar.obtainMessage(17), j2);
                    return true;
                }
                return true;
            case 19:
                this.f29028c = false;
                return true;
            default:
                new StringBuilder(String.valueOf(i2).length() + 20);
                return false;
        }
    }

    public final void i(ConnectionResult connectionResult, int i2) {
        if (h(connectionResult, i2)) {
            return;
        }
        com.google.android.gms.internal.base.zao zaoVar = this.o;
        zaoVar.sendMessage(zaoVar.obtainMessage(5, i2, 0, connectionResult));
    }
}
