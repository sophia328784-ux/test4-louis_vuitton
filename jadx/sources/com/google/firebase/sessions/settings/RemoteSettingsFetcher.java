package com.google.firebase.sessions.settings;

import android.net.Uri;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.sessions.AndroidApplicationInfo;
import com.google.firebase.sessions.ApplicationInfo;
import com.linkplay.network.SecurityConstants;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import java.net.URL;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\bB\u001b\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher;", "Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;", "Lcom/google/firebase/sessions/ApplicationInfo;", "appInfo", "Lkotlin/coroutines/CoroutineContext;", "blockingDispatcher", "<init>", "(Lcom/google/firebase/sessions/ApplicationInfo;Lkotlin/coroutines/CoroutineContext;)V", "Companion", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RemoteSettingsFetcher implements CrashlyticsSettingsFetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ApplicationInfo f35575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineContext f35576b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher$Companion;", "", "", "FIREBASE_SESSIONS_BASE_URL_STRING", "Ljava/lang/String;", "FIREBASE_PLATFORM", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public RemoteSettingsFetcher(ApplicationInfo applicationInfo, @Blocking CoroutineContext coroutineContext) {
        applicationInfo.getClass();
        coroutineContext.getClass();
        this.f35575a = applicationInfo;
        this.f35576b = coroutineContext;
    }

    public static final URL b(RemoteSettingsFetcher remoteSettingsFetcher) {
        Uri.Builder builderAppendPath = new Uri.Builder().scheme(SecurityConstants.SECURITY_HTTPS).authority("firebase-settings.crashlytics.com").appendPath("spi").appendPath("v2").appendPath("platforms").appendPath(ReferenceApiV3ConstKt.OS_NAME).appendPath("gmp");
        ApplicationInfo applicationInfo = remoteSettingsFetcher.f35575a;
        Uri.Builder builderAppendPath2 = builderAppendPath.appendPath(applicationInfo.f35375a).appendPath("settings");
        AndroidApplicationInfo androidApplicationInfo = applicationInfo.f35379f;
        return new URL(builderAppendPath2.appendQueryParameter("build_version", androidApplicationInfo.f35372c).appendQueryParameter("display_version", androidApplicationInfo.f35371b).build().toString());
    }

    @Override // com.google.firebase.sessions.settings.CrashlyticsSettingsFetcher
    public final Object a(Map map, Function2 function2, Function2 function3, Continuation continuation) throws Throwable {
        Object objF = BuildersKt.f(this.f35576b, new RemoteSettingsFetcher$doConfigFetch$2(this, map, function2, function3, null), continuation);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }
}
