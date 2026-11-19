package com.vuitton.android.data.reporter;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.common.f;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.reporter.CrashReporter;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.vq;
import java.util.Collections;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u001b\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/reporter/CrashlyticsCrashReporter;", "Lcom/vuitton/android/domain/reporter/CrashReporter;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Landroid/content/Context;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CrashlyticsCrashReporter implements CrashReporter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47101a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/reporter/CrashlyticsCrashReporter$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public CrashlyticsCrashReporter(@ApplicationContext Context context, Logger logger) {
        context.getClass();
        logger.getClass();
        this.f47101a = logger;
    }

    @Override // com.vuitton.android.domain.reporter.CrashReporter
    public final void a(String str) {
        if (!isReady()) {
            f("log");
            return;
        }
        CrashlyticsCore crashlyticsCore = FirebaseCrashlytics.a().f34474a;
        crashlyticsCore.o.f34590a.b(new vq(crashlyticsCore, System.currentTimeMillis() - crashlyticsCore.d, str));
    }

    @Override // com.vuitton.android.domain.reporter.CrashReporter
    public final void b(RuntimeException runtimeException) {
        if (!isReady()) {
            f("recordException");
            return;
        }
        CrashlyticsCore crashlyticsCore = FirebaseCrashlytics.a().f34474a;
        Map map = Collections.EMPTY_MAP;
        crashlyticsCore.o.f34590a.a(new f(crashlyticsCore, runtimeException));
    }

    @Override // com.vuitton.android.domain.reporter.CrashReporter
    public final void c(int i2) {
        if (!isReady()) {
            f("setCustomKey");
            return;
        }
        CrashlyticsCore crashlyticsCore = FirebaseCrashlytics.a().f34474a;
        crashlyticsCore.o.f34590a.a(new f(crashlyticsCore, "vt_owner_fallback_api", Integer.toString(i2)));
    }

    @Override // com.vuitton.android.domain.reporter.CrashReporter
    public final void d(String str, String str2) {
        if (!isReady()) {
            f("setCustomKey");
        } else {
            CrashlyticsCore crashlyticsCore = FirebaseCrashlytics.a().f34474a;
            crashlyticsCore.o.f34590a.a(new f(crashlyticsCore, str, str2));
        }
    }

    @Override // com.vuitton.android.domain.reporter.CrashReporter
    public final void e() {
        if (!isReady()) {
            f("setCustomKey");
            return;
        }
        CrashlyticsCore crashlyticsCore = FirebaseCrashlytics.a().f34474a;
        crashlyticsCore.o.f34590a.a(new f(crashlyticsCore, "vt_owner_fallback_applied", Boolean.toString(true)));
    }

    public final void f(String str) {
        this.f47101a.d("CrashlyticsCrashReporter", str.concat(" called before Firebase was initialized; dropping the crash-reporting call."), null);
    }

    @Override // com.vuitton.android.domain.reporter.CrashReporter
    public final boolean isReady() {
        return !FirebaseApp.c().isEmpty();
    }
}
