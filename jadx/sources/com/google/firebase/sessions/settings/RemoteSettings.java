package com.google.firebase.sessions.settings;

import android.os.Build;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.InstallationId;
import com.google.firebase.sessions.TimeProvider;
import defpackage.md;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000eB1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/google/firebase/sessions/settings/RemoteSettings;", "Lcom/google/firebase/sessions/settings/SettingsProvider;", "Lcom/google/firebase/sessions/TimeProvider;", "timeProvider", "Lcom/google/firebase/installations/FirebaseInstallationsApi;", "firebaseInstallationsApi", "Lcom/google/firebase/sessions/ApplicationInfo;", "appInfo", "Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;", "configsFetcher", "Lcom/google/firebase/sessions/settings/SettingsCache;", "settingsCache", "<init>", "(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/sessions/ApplicationInfo;Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;Lcom/google/firebase/sessions/settings/SettingsCache;)V", "Companion", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RemoteSettings implements SettingsProvider {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f35562h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Regex f35563i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeProvider f35564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FirebaseInstallationsApi f35565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ApplicationInfo f35566c;
    public final CrashlyticsSettingsFetcher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SettingsCache f35567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutexImpl f35568f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;", "", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        Duration.Companion companion = Duration.INSTANCE;
        f35562h = (int) Duration.k(DurationKt.g(24, DurationUnit.HOURS), DurationUnit.SECONDS);
        f35563i = new Regex("com/google/firebase/sessions//");
    }

    @Inject
    public RemoteSettings(TimeProvider timeProvider, FirebaseInstallationsApi firebaseInstallationsApi, ApplicationInfo applicationInfo, CrashlyticsSettingsFetcher crashlyticsSettingsFetcher, SettingsCache settingsCache) {
        timeProvider.getClass();
        firebaseInstallationsApi.getClass();
        applicationInfo.getClass();
        crashlyticsSettingsFetcher.getClass();
        settingsCache.getClass();
        this.f35564a = timeProvider;
        this.f35565b = firebaseInstallationsApi;
        this.f35566c = applicationInfo;
        this.d = crashlyticsSettingsFetcher;
        this.f35567e = settingsCache;
        this.f35568f = MutexKt.a();
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public final Boolean a() {
        return this.f35567e.d();
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public final Duration b() {
        Integer numE = this.f35567e.e();
        if (numE == null) {
            return null;
        }
        Duration.Companion companion = Duration.INSTANCE;
        return new Duration(DurationKt.g(numE.intValue(), DurationUnit.SECONDS));
    }

    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public final Double c() {
        return this.f35567e.a();
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00a0 A[Catch: all -> 0x0080, TRY_LEAVE, TryCatch #0 {all -> 0x0080, blocks: (B:45:0x0096, B:47:0x00a0, B:50:0x00a6, B:35:0x0074, B:37:0x007a, B:42:0x0086), top: B:58:0x0074 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00a6 A[Catch: all -> 0x0080, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0080, blocks: (B:45:0x0096, B:47:0x00a0, B:50:0x00a6, B:35:0x0074, B:37:0x007a, B:42:0x0086), top: B:58:0x0074 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0117  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x00a6, please report this as an issue */
    @Override // com.google.firebase.sessions.settings.SettingsProvider
    public final Object d(Continuation continuation) throws Throwable {
        RemoteSettings$updateSettings$1 remoteSettings$updateSettings$1;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        Object objA;
        Mutex mutex3;
        String str;
        Map mapI;
        CrashlyticsSettingsFetcher crashlyticsSettingsFetcher;
        RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1;
        RemoteSettings$updateSettings$2$2 remoteSettings$updateSettings$2$2;
        Mutex mutex4;
        if (continuation instanceof RemoteSettings$updateSettings$1) {
            remoteSettings$updateSettings$1 = (RemoteSettings$updateSettings$1) continuation;
            int i2 = remoteSettings$updateSettings$1.f35571e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                remoteSettings$updateSettings$1.f35571e = i2 - Integer.MIN_VALUE;
            } else {
                remoteSettings$updateSettings$1 = new RemoteSettings$updateSettings$1(this, (ContinuationImpl) continuation);
            }
        } else {
            remoteSettings$updateSettings$1 = new RemoteSettings$updateSettings$1(this, (ContinuationImpl) continuation);
        }
        Object obj = remoteSettings$updateSettings$1.f35570c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = remoteSettings$updateSettings$1.f35571e;
        SettingsCache settingsCache = this.f35567e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                MutexImpl mutexImpl = this.f35568f;
                if (!mutexImpl.f() && !settingsCache.c()) {
                    return Unit.f71739a;
                }
                remoteSettings$updateSettings$1.f35569b = mutexImpl;
                remoteSettings$updateSettings$1.f35571e = 1;
                Object objC = mutexImpl.c(remoteSettings$updateSettings$1);
                mutex = mutexImpl;
                if (objC != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i3 != 1) {
                if (i3 == 2) {
                    Mutex mutex5 = remoteSettings$updateSettings$1.f35569b;
                    try {
                        ResultKt.b(obj);
                        objA = obj;
                        mutex3 = mutex5;
                        mutex3 = mutex;
                        str = ((InstallationId) objA).f35442a;
                        if (Intrinsics.c(str, "")) {
                            Unit unit = Unit.f71739a;
                            mutex3.d(null);
                            return unit;
                        }
                        Pair pair = new Pair("X-Crashlytics-Installation-ID", str);
                        String str2 = Build.MANUFACTURER + Build.MODEL;
                        Regex regex = f35563i;
                        Pair pair2 = new Pair("X-Crashlytics-Device-Model", regex.replace(str2, ""));
                        String str3 = Build.VERSION.INCREMENTAL;
                        str3.getClass();
                        Pair pair3 = new Pair("X-Crashlytics-OS-Build-Version", regex.replace(str3, ""));
                        String str4 = Build.VERSION.RELEASE;
                        str4.getClass();
                        mapI = MapsKt.i(pair, pair2, pair3, new Pair("X-Crashlytics-OS-Display-Version", regex.replace(str4, "")), new Pair("X-Crashlytics-API-Client-Version", this.f35566c.f35377c));
                        crashlyticsSettingsFetcher = this.d;
                        remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(this, null);
                        remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(2, null);
                        remoteSettings$updateSettings$1.f35569b = mutex3;
                        remoteSettings$updateSettings$1.f35571e = 3;
                        if (crashlyticsSettingsFetcher.a(mapI, remoteSettings$updateSettings$2$1, remoteSettings$updateSettings$2$2, remoteSettings$updateSettings$1) != coroutineSingletons) {
                            mutex4 = mutex3;
                            mutex4.d(null);
                            return Unit.f71739a;
                        }
                        return coroutineSingletons;
                    } catch (Throwable th2) {
                        th = th2;
                        mutex2 = mutex5;
                    }
                } else {
                    if (i3 != 3) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    mutex2 = remoteSettings$updateSettings$1.f35569b;
                    try {
                        ResultKt.b(obj);
                        mutex4 = mutex2;
                        mutex4.d(null);
                        return Unit.f71739a;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                mutex2.d(null);
                throw th;
            }
            Mutex mutex6 = remoteSettings$updateSettings$1.f35569b;
            ResultKt.b(obj);
            mutex = mutex6;
            if (!settingsCache.c()) {
                Unit unit2 = Unit.f71739a;
                mutex.d(null);
                return unit2;
            }
            InstallationId.Companion companion = InstallationId.f35441c;
            FirebaseInstallationsApi firebaseInstallationsApi = this.f35565b;
            remoteSettings$updateSettings$1.f35569b = mutex;
            remoteSettings$updateSettings$1.f35571e = 2;
            objA = companion.a(firebaseInstallationsApi, remoteSettings$updateSettings$1);
            if (objA == coroutineSingletons) {
                mutex3 = mutex;
            } else {
                mutex3 = mutex;
                str = ((InstallationId) objA).f35442a;
                if (Intrinsics.c(str, "")) {
                    Unit unit3 = Unit.f71739a;
                    mutex3.d(null);
                    return unit3;
                }
                Pair pair4 = new Pair("X-Crashlytics-Installation-ID", str);
                String str5 = Build.MANUFACTURER + Build.MODEL;
                Regex regex2 = f35563i;
                Pair pair5 = new Pair("X-Crashlytics-Device-Model", regex2.replace(str5, ""));
                String str6 = Build.VERSION.INCREMENTAL;
                str6.getClass();
                Pair pair6 = new Pair("X-Crashlytics-OS-Build-Version", regex2.replace(str6, ""));
                String str7 = Build.VERSION.RELEASE;
                str7.getClass();
                mapI = MapsKt.i(pair4, pair5, pair6, new Pair("X-Crashlytics-OS-Display-Version", regex2.replace(str7, "")), new Pair("X-Crashlytics-API-Client-Version", this.f35566c.f35377c));
                crashlyticsSettingsFetcher = this.d;
                remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(this, null);
                remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(2, null);
                remoteSettings$updateSettings$1.f35569b = mutex3;
                remoteSettings$updateSettings$1.f35571e = 3;
                if (crashlyticsSettingsFetcher.a(mapI, remoteSettings$updateSettings$2$1, remoteSettings$updateSettings$2$2, remoteSettings$updateSettings$1) != coroutineSingletons) {
                    mutex4 = mutex3;
                    mutex4.d(null);
                    return Unit.f71739a;
                }
            }
            return coroutineSingletons;
        } catch (Throwable th4) {
            Mutex mutex7 = mutex;
            th = th4;
            mutex2 = mutex7;
        }
    }
}
