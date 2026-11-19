package com.dynatrace.android.agent.data;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import com.dynatrace.android.agent.util.Utility;
import java.util.concurrent.atomic.AtomicBoolean;
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
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\fB\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0007\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/dynatrace/android/agent/data/SessionParameterStore;", "", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "Lkotlinx/coroutines/CoroutineScope;", "scope", "<init>", "(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)V", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "(Landroid/content/Context;)V", "Companion", "agent.core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SessionParameterStore {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Preferences.Key f27484h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Preferences.Key f27485i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f27486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineScope f27487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Integer f27488c;
    public volatile Long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Job f27489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f27490f;
    public Job g;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0005¨\u0006\b"}, d2 = {"Lcom/dynatrace/android/agent/data/SessionParameterStore$Companion;", "", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "KEY_SESSION_ID", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "KEY_VISITOR_ID", "agent.core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f27484h = new Preferences.Key("session_id");
        f27485i = new Preferences.Key("visitor_id");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionParameterStore(Context context) {
        this((DataStore) SessionParameterStoreKt.f27505b.b(context, SessionParameterStoreKt.f27504a[0]), CoroutineScopeKt.a(SupervisorKt.b().plus(Dispatchers.f74659a)));
        context.getClass();
    }

    public final void a() {
        c();
        BuildersKt.d(new SessionParameterStore$ensurePreloadComplete$1(this, null));
    }

    public final void b() {
        Job job = this.g;
        if (job == null || !job.isActive()) {
            return;
        }
        Utility.b("need to wait for updates to be written to data store");
        BuildersKt.d(new SessionParameterStore$flush$1$1(job, null));
    }

    public final void c() {
        if (this.f27490f.compareAndSet(false, true)) {
            this.f27489e = BuildersKt.c(this.f27487b, null, null, new SessionParameterStore$preload$1(this, null), 3);
        }
    }

    public final synchronized void d(int i2, long j2) {
        Throwable th;
        try {
            if (i2 >= Integer.MAX_VALUE || i2 < 0) {
                try {
                    Utility.b("session id is out of range and will be reset to 0");
                    i2 = 0;
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            }
            int i3 = i2;
            try {
                this.f27488c = Integer.valueOf(i3);
                this.d = Long.valueOf(j2);
                Job job = this.g;
                if (job != null) {
                    try {
                        job.cancel(null);
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                }
                this.g = BuildersKt.c(this.f27487b, null, null, new SessionParameterStore$update$1(this, i3, j2, null), 3);
            } catch (Throwable th4) {
                th = th4;
                th = th;
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public SessionParameterStore(DataStore<Preferences> dataStore, CoroutineScope coroutineScope) {
        dataStore.getClass();
        coroutineScope.getClass();
        this.f27486a = dataStore;
        this.f27487b = coroutineScope;
        this.f27490f = new AtomicBoolean(false);
    }
}
