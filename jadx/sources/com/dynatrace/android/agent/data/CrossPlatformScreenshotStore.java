package com.dynatrace.android.agent.data;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\fB\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0007\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;", "", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "Lkotlinx/coroutines/CoroutineScope;", "scope", "<init>", "(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)V", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "(Landroid/content/Context;)V", "Companion", "agent.core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CrossPlatformScreenshotStore {
    public static final Preferences.Key g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Preferences.Key f27456h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f27457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineScope f27458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f27459c;
    public volatile String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Job f27460e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Job f27461f;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore$Companion;", "", "", "TAG_CROSS_PLATFORM_SCREENSHOTS", "Ljava/lang/String;", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "KEY_SCREENSHOT_COUNT", "Landroidx/datastore/preferences/core/Preferences$Key;", "KEY_VISIT_ID", "agent.core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        g = new Preferences.Key("cross_platform_screenshot_count");
        f27456h = new Preferences.Key("cross_platform_screenshot_visit_id");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CrossPlatformScreenshotStore(Context context) {
        this((DataStore) SessionParameterStoreKt.f27505b.b(context, SessionParameterStoreKt.f27504a[0]), CoroutineScopeKt.a(SupervisorKt.b().plus(Dispatchers.f74659a)));
        context.getClass();
    }

    public final void a() {
        BuildersKt.d(new CrossPlatformScreenshotStore$ensurePreloadComplete$1(this, null));
    }

    public final void b() {
        BuildersKt.d(new CrossPlatformScreenshotStore$flush$1(this, null));
    }

    public final void c() {
        this.f27460e = BuildersKt.c(this.f27458b, null, null, new CrossPlatformScreenshotStore$preload$1(this, null), 3);
    }

    public final synchronized void d(String str) {
        this.f27459c.set(0);
        this.d = str;
        int i2 = this.f27459c.get();
        String str2 = this.d;
        Job job = this.f27461f;
        if (job != null) {
            job.cancel(null);
        }
        this.f27461f = BuildersKt.c(this.f27458b, null, null, new CrossPlatformScreenshotStore$persistLatest$1(this, i2, str2, null), 3);
    }

    public CrossPlatformScreenshotStore(DataStore<Preferences> dataStore, CoroutineScope coroutineScope) {
        dataStore.getClass();
        coroutineScope.getClass();
        this.f27457a = dataStore;
        this.f27458b = coroutineScope;
        this.f27459c = new AtomicInteger(0);
        this.d = "";
    }
}
