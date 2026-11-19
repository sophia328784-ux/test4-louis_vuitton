package com.vuitton.android.data.repository;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.FirebaseMessaging;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.analytics.HitTypeAnalyticMapperKt;
import com.vuitton.android.data.analytics.builder.AnalyticsHitBuilder;
import com.vuitton.android.data.analytics.builder.AnalyticsUserPropertyBuilder;
import com.vuitton.android.domain.repository.AnalyticsRepository;
import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.UserProperty;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.p3;
import java.util.Arrays;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000fB=\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\b\u0012\u000e\b\u0001\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AnalyticsRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/domain/repository/ConsentRepository;", "consentRepository", "Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;", "userPropertyBuilder", "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;", "Landroid/os/Bundle;", "hitBuilder", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FirebaseAnalyticsRepositoryImpl implements AnalyticsRepository {
    public static final /* synthetic */ int g = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f47718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConsentRepository f47719c;
    public final AnalyticsUserPropertyBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsHitBuilder f47720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f47721f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/repository/FirebaseAnalyticsRepositoryImpl$Companion;", "", "", "FIREBASE_BUNDLE_MAX_LENGTH", "I", "FIREBASE_PROPERTY_KEY_MAX_LENGTH", "FIREBASE_PROPERTY_VALUE_MAX_LENGTH", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public FirebaseAnalyticsRepositoryImpl(Logger logger, @ApplicationContext Context context, ConsentRepository consentRepository, AnalyticsUserPropertyBuilder analyticsUserPropertyBuilder, AnalyticsHitBuilder<Bundle> analyticsHitBuilder) {
        logger.getClass();
        context.getClass();
        consentRepository.getClass();
        analyticsUserPropertyBuilder.getClass();
        analyticsHitBuilder.getClass();
        this.f47717a = logger;
        this.f47718b = context;
        this.f47719c = consentRepository;
        this.d = analyticsUserPropertyBuilder;
        this.f47720e = analyticsHitBuilder;
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void a(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        Context context = this.f47718b;
        FirebaseApp.h(context);
        FirebaseMessaging.c().g();
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(context);
        firebaseAnalytics.getClass();
        Task taskA = firebaseAnalytics.a();
        Task taskB = firebaseAnalytics.b();
        Tasks.g(Arrays.asList(taskA, taskB)).addOnCompleteListener(new p3(this, taskA, taskB));
        ConsentRepository consentRepository = this.f47719c;
        boolean zN = consentRepository.n();
        zzez zzezVar = firebaseAnalytics.f34361a;
        zzezVar.v(Boolean.valueOf(zN));
        zzezVar.p(null, "allow_personalized_ads", String.valueOf(consentRepository.d()), false);
        this.f47721f = true;
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void b(InAppDispatch inAppDispatch, Hit hit) {
        inAppDispatch.getClass();
        hit.getClass();
        boolean z = this.f47721f;
        Logger logger = this.f47717a;
        if (!z) {
            logger.getClass();
            return;
        }
        Bundle bundle = (Bundle) this.f47720e.a(inAppDispatch, hit);
        if (bundle != null) {
            FirebaseAnalytics.getInstance(this.f47718b).f34361a.l(null, HitTypeAnalyticMapperKt.a(hit.getF66493a()), bundle, false, true, null, null);
            bundle.toString();
            logger.getClass();
        }
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void c() {
        if (this.f47721f) {
            FirebaseAnalytics.getInstance(this.f47718b).f34361a.v(Boolean.FALSE);
        }
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void d(UserProperty.WebViewUserProperty webViewUserProperty) {
        Pair pairA = this.d.a(webViewUserProperty);
        if (pairA != null) {
            FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(this.f47718b);
            String strV = StringsKt.V(24, (String) pairA.f71705b);
            String str = (String) pairA.f71706c;
            firebaseAnalytics.f34361a.p(null, strV, str != null ? StringsKt.V(36, str) : null, false);
        }
    }
}
