package com.vuitton.android.data.repository;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.common.f;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.analytics.CrashlyticsAnomalyException;
import com.vuitton.android.data.analytics.builder.AnalyticsHitBuilder;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.repository.AnalyticsRepository;
import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.UserProperty;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.fc;
import defpackage.vq;
import java.util.Collections;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000fB;\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\b\u0001\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AnalyticsRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/domain/repository/ConsentRepository;", "consentRepository", "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;", "Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;", "builder", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CrashlyticsAnalyticsRepositoryImpl implements AnalyticsRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f47637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConsentRepository f47638c;
    public final AnalyticsHitBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BuildConfigProvider f47639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f47640f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/CrashlyticsAnalyticsRepositoryImpl$Companion;", "", "", "DEVICE_LANGUAGE", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public CrashlyticsAnalyticsRepositoryImpl(Logger logger, @ApplicationContext Context context, ConsentRepository consentRepository, AnalyticsHitBuilder<CrashlyticsAnomalyException> analyticsHitBuilder, BuildConfigProvider buildConfigProvider) {
        logger.getClass();
        context.getClass();
        consentRepository.getClass();
        analyticsHitBuilder.getClass();
        buildConfigProvider.getClass();
        this.f47636a = logger;
        this.f47637b = context;
        this.f47638c = consentRepository;
        this.d = analyticsHitBuilder;
        this.f47639e = buildConfigProvider;
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void a(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        FirebaseApp.h(this.f47637b);
        FirebaseCrashlytics firebaseCrashlyticsA = FirebaseCrashlytics.a();
        firebaseCrashlyticsA.b(this.f47638c.h());
        String strH = inAppDispatch.d.h();
        CrashlyticsCore crashlyticsCore = firebaseCrashlyticsA.f34474a;
        crashlyticsCore.o.f34590a.a(new f(crashlyticsCore, "device_language", strH));
        this.f47640f = true;
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void b(InAppDispatch inAppDispatch, Hit hit) {
        inAppDispatch.getClass();
        hit.getClass();
        if (!this.f47640f) {
            this.f47636a.getClass();
            this.f47639e.getClass();
            return;
        }
        CrashlyticsAnomalyException crashlyticsAnomalyException = (CrashlyticsAnomalyException) this.d.a(inAppDispatch, hit);
        if (crashlyticsAnomalyException != null) {
            CrashlyticsCore crashlyticsCore = FirebaseCrashlytics.a().f34474a;
            String strI = fc.i("E/", crashlyticsAnomalyException.f43541b, ": ", crashlyticsAnomalyException.getMessage());
            crashlyticsCore.o.f34590a.b(new vq(crashlyticsCore, System.currentTimeMillis() - crashlyticsCore.d, strI));
            Map map = Collections.EMPTY_MAP;
            crashlyticsCore.o.f34590a.a(new f(crashlyticsCore, crashlyticsAnomalyException));
        }
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void c() {
        if (this.f47640f) {
            FirebaseCrashlytics.a().b(false);
        }
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void d(UserProperty.WebViewUserProperty webViewUserProperty) {
    }
}
