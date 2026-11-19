package com.dynamicyield.sdk.wrapper.core;

import android.content.Context;
import android.content.SharedPreferences;
import com.dynamicyield.sdk.wrapper.core.enums.Channel;
import com.dynamicyield.sdk.wrapper.core.enums.DataCenter;
import com.dynamicyield.sdk.wrapper.core.enums.HttpMethod;
import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.config.ConfigManager;
import com.dynamicyield.sdk.wrapper.core.managers.config.ExperienceConfig;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProvider;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.endpointManagerImplementations.AssistantManager;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.endpointManagerImplementations.ChooseManager;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.endpointManagerImplementations.EngagementManager;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.endpointManagerImplementations.EventsManager;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.endpointManagerImplementations.PageViewManager;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.endpointManagerImplementations.SearchManager;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol;
import com.dynamicyield.sdk.wrapper.core.managers.logging.LoggingUtils;
import com.dynamicyield.sdk.wrapper.core.managers.logging.concreteEngines.SystemLoggerEngine;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LoggingManager;
import com.dynamicyield.sdk.wrapper.core.managers.network.HttpNetwork;
import com.dynamicyield.sdk.wrapper.core.managers.network.NetworkManager;
import com.dynamicyield.sdk.wrapper.core.managers.network.RawNetworkData;
import com.dynamicyield.sdk.wrapper.core.managers.sessionAndUser.SessionAndUserManager;
import com.dynamicyield.sdk.wrapper.core.managers.sessionAndUser.SessionAndUserManagerProvider;
import com.dynamicyield.sdk.wrapper.core.managers.sessionAndUser.StorageManager;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Cookie;
import com.dynamicyield.sdk.wrapper.core.models.common.DYChooseResult;
import com.dynamicyield.sdk.wrapper.core.models.common.DYVersion;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Page;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Session;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.User;
import com.dynamicyield.sdk.wrapper.core.models.exception.InitializeException;
import com.dynatrace.android.callback.Callback;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.UInt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/DYSdk;", "", "Companion", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DYSdk {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Companion f25843k = new Companion(null);
    public static boolean l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DYSdk$sessionAndUserListener$1 f25844a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConfigManager f25845b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NetworkManager f25846c;
    public SessionAndUserManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SystemLoggerEngine f25847e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DYLogger f25848f;
    public final MutexImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final EventsManager f25849h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final EngagementManager f25850i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ChooseManager f25851j;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0005R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;", "", "", "initialized", "Z", "Holder", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion$Holder;", "", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Holder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final DYSdk f25852a = new DYSdk(null);
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static DYSdk a() {
            return Holder.f25852a;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.dynamicyield.sdk.wrapper.core.DYSdk$sessionAndUserListener$1] */
    public DYSdk(DefaultConstructorMarker defaultConstructorMarker) {
        EndpointManagerProvider endpointManagerProvider = new EndpointManagerProvider() { // from class: com.dynamicyield.sdk.wrapper.core.DYSdk$endpointManagerProvider$1
            @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProvider
            public final ExperienceConfig a() {
                ConfigManager configManager = this.f25853a.f25845b;
                if (configManager != null) {
                    return configManager.f25860b;
                }
                Intrinsics.h("configManager");
                throw null;
            }

            @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProvider
            public final User b(String str, String str2) {
                return this.f25853a.b().b(str, str2);
            }

            /* JADX WARN: Code duplicated, block: B:37:0x00b7  */
            /* JADX WARN: Code duplicated, block: B:68:0x015d  */
            @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProvider
            public final boolean c(List list) {
                boolean z;
                boolean z2;
                Object next;
                Long lZ;
                Object next2;
                Long lZ2;
                SessionAndUserManager sessionAndUserManagerB = this.f25853a.b();
                StorageManager storageManager = sessionAndUserManagerB.d;
                SessionAndUserManagerProvider sessionAndUserManagerProvider = sessionAndUserManagerB.f25996a;
                DYLogger dYLogger = sessionAndUserManagerB.f25998c;
                dYLogger.a("updateCookies", null);
                Boolean bool = sessionAndUserManagerB.f25997b;
                Boolean bool2 = Boolean.TRUE;
                if (!Intrinsics.c(bool, bool2) && sessionAndUserManagerProvider.a() && !Intrinsics.c(sessionAndUserManagerProvider.b(), bool2)) {
                    dYLogger.a("updateCookies: User has not accepted the consent, cookies will not be updated.", null);
                    return true;
                }
                if (list != null) {
                    Iterator it = list.iterator();
                    do {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                    } while (!Intrinsics.c(((Cookie) next2).f26069a, "_dyjsession"));
                    Cookie cookie = (Cookie) next2;
                    if (cookie != null) {
                        String str = cookie.f26070b;
                        String str2 = cookie.f26071c;
                        storageManager.getClass();
                        str.getClass();
                        long jLongValue = (str2 == null || (lZ2 = StringsKt.Z(str2)) == null) ? 1800L : lZ2.longValue();
                        SharedPreferences sharedPreferences = storageManager.f26000b;
                        SharedPreferences.Editor editorEdit = sharedPreferences != null ? sharedPreferences.edit() : null;
                        if (editorEdit == null) {
                            z = false;
                        } else {
                            long jCurrentTimeMillis = (jLongValue * 1000) + System.currentTimeMillis();
                            editorEdit.putLong("session_expiration", jCurrentTimeMillis);
                            storageManager.f26003f = Long.valueOf(jCurrentTimeMillis);
                            if (!str.equals(storageManager.f26002e)) {
                                editorEdit.putString("session", str);
                            }
                            editorEdit.apply();
                            storageManager.f26002e = str;
                            storageManager.f25999a.a(fc.i("current session:", str, ", maxAge:", str2), null);
                            z = true;
                        }
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                if (Intrinsics.c(bool, Boolean.TRUE)) {
                    dYLogger.a("updateCookies: success? -> " + z + '\n', null);
                    return z;
                }
                if (list != null) {
                    Iterator it2 = list.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                    } while (!Intrinsics.c(((Cookie) next).f26069a, "_dyid_server"));
                    Cookie cookie2 = (Cookie) next;
                    if (cookie2 != null) {
                        String str3 = cookie2.f26070b;
                        String str4 = cookie2.f26071c;
                        storageManager.getClass();
                        str3.getClass();
                        long jLongValue2 = (str4 == null || (lZ = StringsKt.Z(str4)) == null) ? 31556926L : lZ.longValue();
                        SharedPreferences sharedPreferences2 = storageManager.f26000b;
                        SharedPreferences.Editor editorEdit2 = sharedPreferences2 != null ? sharedPreferences2.edit() : null;
                        if (editorEdit2 == null) {
                            z2 = false;
                        } else {
                            long jCurrentTimeMillis2 = (jLongValue2 * 1000) + System.currentTimeMillis();
                            editorEdit2.putLong("dyid_expiration", jCurrentTimeMillis2);
                            storageManager.d = Long.valueOf(jCurrentTimeMillis2);
                            if (!str3.equals(storageManager.f26001c)) {
                                editorEdit2.putString("dyid", str3);
                            }
                            editorEdit2.apply();
                            storageManager.f26001c = str3;
                            storageManager.f25999a.a(d21.p(new StringBuilder("current dyid:"), storageManager.f26001c, ", maxAge:", str4), null);
                            z2 = true;
                        }
                    } else {
                        z2 = false;
                    }
                } else {
                    z2 = false;
                }
                boolean z3 = z && z2;
                dYLogger.a("updateCookies: success? -> " + z3 + '\n', null);
                return z3;
            }

            @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProvider
            public final RawNetworkData d(EndpointModelProtocol endpointModelProtocol) throws Exception {
                Exception exc;
                String path;
                String string;
                NetworkManager networkManager = this.f25853a.f25846c;
                HttpURLConnection httpURLConnection = null;
                if (networkManager == null) {
                    Intrinsics.h("networkManager");
                    throw null;
                }
                DYLogger dYLogger = networkManager.d;
                dYLogger.a("sendRequest", null);
                HttpNetwork httpNetwork = new HttpNetwork();
                String url = endpointModelProtocol.getUrl();
                HttpMethod httpMethodH = endpointModelProtocol.h();
                String strE = endpointModelProtocol.e();
                dYLogger.a("getHeaders", null);
                Map mapI = MapsKt.i(new Pair("accept", InitUrlConnection.CONTENT_TYPE_VALUE), new Pair("content-type", InitUrlConnection.CONTENT_TYPE_VALUE), new Pair("DY-API-Key", networkManager.f25929a), new Pair("DY-SDK-Version", networkManager.f25930b));
                UInt uInt = new UInt(networkManager.f25931c);
                DYLogger dYLogger2 = httpNetwork.f25928a;
                httpMethodH.getClass();
                try {
                    URLConnection uRLConnectionOpenConnection = new URL((URL) null, url, (URLStreamHandler) null).openConnection();
                    Callback.C(uRLConnectionOpenConnection);
                    uRLConnectionOpenConnection.getClass();
                    HttpURLConnection httpURLConnection2 = (HttpURLConnection) uRLConnectionOpenConnection;
                    try {
                        httpURLConnection2.setRequestMethod(httpMethodH.name());
                        if (strE != null && (httpMethodH == HttpMethod.POST || httpMethodH == HttpMethod.PUT)) {
                            httpURLConnection2.setDoOutput(true);
                        }
                        for (Map.Entry entry : mapI.entrySet()) {
                            httpURLConnection2.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                        int i2 = uInt.f71724b * 1000;
                        httpURLConnection2.setConnectTimeout(i2);
                        httpURLConnection2.setReadTimeout(i2);
                        StringBuilder sb = new StringBuilder();
                        sb.append("request path: ");
                        Set set = LoggingUtils.f25921a;
                        try {
                            path = new URL(url).getPath();
                            if (path.length() == 0) {
                                path = "/";
                            }
                        } catch (Exception unused) {
                            path = "[invalid-url]";
                        }
                        sb.append(path);
                        sb.append(", method: ");
                        sb.append(httpMethodH);
                        sb.append(", headers: [");
                        sb.append(LoggingUtils.a(mapI));
                        sb.append(']');
                        dYLogger2.a(sb.toString(), LogLevel.DEBUG);
                        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(Callback.i(httpURLConnection2));
                        outputStreamWriter.write(strE);
                        outputStreamWriter.flush();
                        outputStreamWriter.close();
                        int iK = Callback.k(httpURLConnection2);
                        InputStream inputStreamD = (200 > iK || iK >= 300) ? Callback.d(httpURLConnection2) : Callback.g(httpURLConnection2);
                        if (inputStreamD != null) {
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD));
                            StringBuilder sb2 = new StringBuilder();
                            while (true) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                sb2.append(line);
                            }
                            bufferedReader.close();
                            string = sb2.toString();
                        } else {
                            dYLogger2.a(httpMethodH + " Request failed", LogLevel.WARN);
                            string = null;
                        }
                        int iK2 = Callback.k(httpURLConnection2);
                        String strL = Callback.l(httpURLConnection2);
                        strL.getClass();
                        RawNetworkData rawNetworkData = new RawNetworkData(iK2, strL, 200 <= iK && iK < 300, string, strE, (String) mapI.getOrDefault("DY-SDK-Version", null));
                        httpURLConnection2.disconnect();
                        if (!rawNetworkData.f25934c) {
                            ArrayList arrayList = LoggingManager.f25927a;
                            LoggingManager.a(LogLevel.DEBUG, endpointModelProtocol.k(), endpointModelProtocol.i());
                        }
                        return rawNetworkData;
                    } catch (Exception e2) {
                        exc = e2;
                        httpURLConnection = httpURLConnection2;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        dYLogger2.a(exc.toString(), LogLevel.ERROR);
                        throw exc;
                    }
                } catch (Exception e3) {
                    exc = e3;
                }
            }

            @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProvider
            public final boolean e() {
                DYSdk.f25843k.getClass();
                if (!DYSdk.l) {
                    this.f25853a.c("isSdkInitialize");
                }
                return DYSdk.l;
            }

            @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProvider
            public final Session getSession() {
                return this.f25853a.b().a();
            }
        };
        this.f25844a = new SessionAndUserManagerProvider() { // from class: com.dynamicyield.sdk.wrapper.core.DYSdk$sessionAndUserListener$1
            @Override // com.dynamicyield.sdk.wrapper.core.managers.sessionAndUser.SessionAndUserManagerProvider
            public final boolean a() {
                ConfigManager configManager = this.f25854a.f25845b;
                if (configManager != null) {
                    return configManager.f25860b.f25868j;
                }
                Intrinsics.h("configManager");
                throw null;
            }

            @Override // com.dynamicyield.sdk.wrapper.core.managers.sessionAndUser.SessionAndUserManagerProvider
            public final Boolean b() {
                ConfigManager configManager = this.f25854a.f25845b;
                if (configManager != null) {
                    return configManager.f25860b.f25869k;
                }
                Intrinsics.h("configManager");
                throw null;
            }
        };
        this.f25847e = new SystemLoggerEngine(LogLevel.WARN);
        this.f25848f = new DYLogger("DYSdk", null, 2, null);
        this.g = MutexKt.a();
        this.f25849h = new EventsManager(endpointManagerProvider);
        this.f25850i = new EngagementManager(endpointManagerProvider);
        new PageViewManager(endpointManagerProvider);
        this.f25851j = new ChooseManager(endpointManagerProvider);
        new SearchManager(endpointManagerProvider);
        new AssistantManager(endpointManagerProvider);
    }

    public static void d(DYSdk dYSdk, String str, DataCenter dataCenter, Context context, String str2, Boolean bool) {
        Channel channel = Channel.APP;
        dYSdk.getClass();
        str.getClass();
        dataCenter.getClass();
        context.getClass();
        channel.getClass();
        SystemLoggerEngine systemLoggerEngine = dYSdk.f25847e;
        DYVersion dYVersion = new DYVersion("1", "5", ContentTree.ROOT_ID);
        DYLogger dYLogger = dYSdk.f25848f;
        if (l) {
            dYLogger.a(new InitializeException(true).toString(), LogLevel.ERROR);
            return;
        }
        l = true;
        dYSdk.f25845b = new ConfigManager(dataCenter, null, null, null, channel, null, str2, null, null, true, bool, null);
        dYSdk.d = new SessionAndUserManager(dYSdk.f25844a, context, null);
        dYSdk.f25846c = new NetworkManager(str, dYVersion.toString(), 0, 4, null);
        if (systemLoggerEngine != null) {
            LoggingManager.f25927a.add(systemLoggerEngine);
        }
        Set set = LoggingUtils.f25921a;
        dYLogger.a("DYSdk".concat(" initialized"), null);
    }

    public final String a() {
        if (l) {
            return b().b(null, null).f26248a;
        }
        c("getDyId");
        return null;
    }

    public final SessionAndUserManager b() {
        SessionAndUserManager sessionAndUserManager = this.d;
        if (sessionAndUserManager != null) {
            return sessionAndUserManager;
        }
        Intrinsics.h("sessionAndUserManager");
        throw null;
    }

    public final void c(String str) {
        Set set = LoggingUtils.f25921a;
        this.f25848f.a(str.concat(" Failed. SDK is not initialized"), LogLevel.WARN);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00d5 A[Catch: all -> 0x0032, TRY_LEAVE, TryCatch #1 {all -> 0x0032, blocks: (B:14:0x002d, B:48:0x00cd, B:50:0x00d5), top: B:67:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object e(Boolean bool, ContinuationImpl continuationImpl) throws Throwable {
        DYSdk$setActiveConsentAccepted$1 dYSdk$setActiveConsentAccepted$1;
        MutexImpl mutexImpl;
        MutexImpl mutexImpl2;
        Throwable th;
        Mutex mutex;
        Mutex mutex2;
        Mutex mutex3;
        if (continuationImpl instanceof DYSdk$setActiveConsentAccepted$1) {
            dYSdk$setActiveConsentAccepted$1 = (DYSdk$setActiveConsentAccepted$1) continuationImpl;
            int i2 = dYSdk$setActiveConsentAccepted$1.f25858f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dYSdk$setActiveConsentAccepted$1.f25858f = i2 - Integer.MIN_VALUE;
            } else {
                dYSdk$setActiveConsentAccepted$1 = new DYSdk$setActiveConsentAccepted$1(this, continuationImpl);
            }
        } else {
            dYSdk$setActiveConsentAccepted$1 = new DYSdk$setActiveConsentAccepted$1(this, continuationImpl);
        }
        DYSdk$setActiveConsentAccepted$1 dYSdk$setActiveConsentAccepted$2 = dYSdk$setActiveConsentAccepted$1;
        Object obj = dYSdk$setActiveConsentAccepted$2.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dYSdk$setActiveConsentAccepted$2.f25858f;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                if (l) {
                    dYSdk$setActiveConsentAccepted$2.f25855b = bool;
                    mutexImpl = this.g;
                    dYSdk$setActiveConsentAccepted$2.f25856c = mutexImpl;
                    dYSdk$setActiveConsentAccepted$2.f25858f = 1;
                    if (mutexImpl.c(dYSdk$setActiveConsentAccepted$2) != coroutineSingletons) {
                    }
                    mutexImpl2 = mutexImpl;
                    mutex3 = mutexImpl2;
                    return coroutineSingletons;
                }
                c("setActiveConsentAccepted");
                return Unit.f71739a;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutex2 = (Mutex) dYSdk$setActiveConsentAccepted$2.f25855b;
                try {
                    ResultKt.b(obj);
                    mutex2 = mutex2;
                    if (((DYChooseResult) obj).f26183a != ResultStatus.SUCCESS) {
                        this.f25848f.a("Failed to generate a session ID and DY ID via the choose call. Subsequent requests will lack a DY ID and session ID until the next successful choose call.", LogLevel.ERROR);
                    }
                    mutex3 = mutex2;
                    mutex3 = mutexImpl2;
                    mutex3.d(null);
                    return Unit.f71739a;
                } catch (Throwable th2) {
                    th = th2;
                    mutex = mutex2;
                    mutex.d(null);
                    throw th;
                }
            }
            MutexImpl mutexImpl3 = dYSdk$setActiveConsentAccepted$2.f25856c;
            Boolean bool2 = (Boolean) dYSdk$setActiveConsentAccepted$2.f25855b;
            ResultKt.b(obj);
            mutexImpl2 = mutexImpl3;
            bool = bool2;
            mutexImpl2 = mutexImpl;
            ConfigManager configManager = this.f25845b;
            if (configManager == null) {
                Intrinsics.h("configManager");
                throw null;
            }
            if (Intrinsics.c(bool, configManager.f25860b.f25869k)) {
                mutex3 = mutexImpl2;
            } else {
                ConfigManager configManager2 = this.f25845b;
                if (configManager2 == null) {
                    Intrinsics.h("configManager");
                    throw null;
                }
                configManager2.f25859a.a("Changing activeConsentAccepted to: " + bool, null);
                configManager2.f25860b.f25869k = bool;
                ConfigManager configManager3 = this.f25845b;
                if (configManager3 == null) {
                    Intrinsics.h("configManager");
                    throw null;
                }
                ExperienceConfig experienceConfig = configManager3.f25860b;
                if (experienceConfig.f25868j) {
                    Boolean bool3 = experienceConfig.f25862b;
                    Boolean bool4 = Boolean.TRUE;
                    if (Intrinsics.c(bool3, bool4)) {
                        mutex3 = mutexImpl2;
                    } else {
                        b().e(bool);
                        if (Intrinsics.c(bool, bool4)) {
                            ChooseManager chooseManager = this.f25851j;
                            Page pageA = Page.Companion.a(Page.INSTANCE, "Init");
                            dYSdk$setActiveConsentAccepted$2.f25855b = mutexImpl2;
                            dYSdk$setActiveConsentAccepted$2.f25856c = null;
                            dYSdk$setActiveConsentAccepted$2.f25858f = 2;
                            Object objF = ChooseManager.f(chooseManager, null, pageA, null, dYSdk$setActiveConsentAccepted$2, 16381);
                            if (objF != coroutineSingletons) {
                                mutex3 = mutexImpl2;
                                MutexImpl mutexImpl4 = mutexImpl2;
                                obj = objF;
                                mutex2 = mutexImpl4;
                                if (((DYChooseResult) obj).f26183a != ResultStatus.SUCCESS) {
                                    this.f25848f.a("Failed to generate a session ID and DY ID via the choose call. Subsequent requests will lack a DY ID and session ID until the next successful choose call.", LogLevel.ERROR);
                                }
                                mutex3 = mutex2;
                            }
                            mutexImpl2 = mutexImpl;
                            mutex3 = mutexImpl2;
                            return coroutineSingletons;
                        }
                    }
                } else {
                    mutex3 = mutexImpl2;
                }
            }
            mutex3 = mutexImpl2;
            mutex3.d(null);
            return Unit.f71739a;
        } catch (Throwable th3) {
            th = th3;
            mutex = mutexImpl2;
            mutex.d(null);
            throw th;
        }
    }
}
