package com.vuitton.android.data.repository;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.analytics.builder.AnalyticsHitBuilder;
import com.vuitton.android.data.analytics.builder.AnalyticsUserPropertyBuilder;
import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.repository.AnalyticsRepository;
import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.UserProperty;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.md;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bc\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\b\u0012\u001c\b\u0001\u0010\u000e\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b0\n\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AnalyticsRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/domain/repository/ConsentRepository;", "consentRepository", "Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;", "userPropertyBuilder", "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;", "", "", "", "hitBuilder", "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;", "profileLocalDataSource", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SensorsDataAnalyticsRepositoryImpl implements AnalyticsRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f48008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f48009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConsentRepository f48010c;
    public final AnalyticsUserPropertyBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsHitBuilder f48011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProfileLocalDataSource f48012f;
    public final EnvironmentProvider g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BuildConfigProvider f48013h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ContextScope f48014i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f48015j;

    @Inject
    public SensorsDataAnalyticsRepositoryImpl(Logger logger, @ApplicationContext Context context, ConsentRepository consentRepository, AnalyticsUserPropertyBuilder analyticsUserPropertyBuilder, AnalyticsHitBuilder<Map<String, Object>> analyticsHitBuilder, ProfileLocalDataSource profileLocalDataSource, EnvironmentProvider environmentProvider, BuildConfigProvider buildConfigProvider) {
        logger.getClass();
        context.getClass();
        consentRepository.getClass();
        analyticsUserPropertyBuilder.getClass();
        analyticsHitBuilder.getClass();
        profileLocalDataSource.getClass();
        environmentProvider.getClass();
        buildConfigProvider.getClass();
        this.f48008a = logger;
        this.f48009b = context;
        this.f48010c = consentRepository;
        this.d = analyticsUserPropertyBuilder;
        this.f48011e = analyticsHitBuilder;
        this.f48012f = profileLocalDataSource;
        this.g = environmentProvider;
        this.f48013h = buildConfigProvider;
        this.f48014i = CoroutineScopeKt.a(JobKt.a());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object e(SensorsDataAnalyticsRepositoryImpl sensorsDataAnalyticsRepositoryImpl, ContinuationImpl continuationImpl) {
        SensorsDataAnalyticsRepositoryImpl$updateAtgId$1 sensorsDataAnalyticsRepositoryImpl$updateAtgId$1;
        Object objB;
        if (continuationImpl instanceof SensorsDataAnalyticsRepositoryImpl$updateAtgId$1) {
            sensorsDataAnalyticsRepositoryImpl$updateAtgId$1 = (SensorsDataAnalyticsRepositoryImpl$updateAtgId$1) continuationImpl;
            int i2 = sensorsDataAnalyticsRepositoryImpl$updateAtgId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                sensorsDataAnalyticsRepositoryImpl$updateAtgId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                sensorsDataAnalyticsRepositoryImpl$updateAtgId$1 = new SensorsDataAnalyticsRepositoryImpl$updateAtgId$1(sensorsDataAnalyticsRepositoryImpl, continuationImpl);
            }
        } else {
            sensorsDataAnalyticsRepositoryImpl$updateAtgId$1 = new SensorsDataAnalyticsRepositoryImpl$updateAtgId$1(sensorsDataAnalyticsRepositoryImpl, continuationImpl);
        }
        Object obj = sensorsDataAnalyticsRepositoryImpl$updateAtgId$1.f48023b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = sensorsDataAnalyticsRepositoryImpl$updateAtgId$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            ProfileLocalDataSource profileLocalDataSource = sensorsDataAnalyticsRepositoryImpl.f48012f;
            sensorsDataAnalyticsRepositoryImpl$updateAtgId$1.d = 1;
            objB = profileLocalDataSource.b(sensorsDataAnalyticsRepositoryImpl$updateAtgId$1);
            if (objB == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objB = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objB instanceof Result.Failure)) {
            try {
                Profile.Id id = ((Profile) objB).f68164a;
                if (!(id instanceof Profile.Id.AtgId)) {
                    throw new IllegalStateException("Atg Id not available");
                }
                objB = ((Profile.Id.AtgId) id).f68175a;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objB = new Result.Failure(th);
            }
        }
        if (objB instanceof Result.Failure) {
            objB = "anonymous";
        }
        String strF = StringKtExtKt.f((String) objB);
        Locale locale = Locale.ENGLISH;
        locale.getClass();
        String lowerCase = strF.toLowerCase(locale);
        lowerCase.getClass();
        SensorsDataAPI.sharedInstance().profileAppend("atg_id", lowerCase);
        return lowerCase;
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void a(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        ConsentRepository consentRepository = this.f48010c;
        if (consentRepository.n()) {
            SAConfigOptions sAConfigOptions = new SAConfigOptions(this.g.q());
            sAConfigOptions.enableJavaScriptBridge(false);
            sAConfigOptions.setAutoTrackEventType(SensorsDataAPI.AutoTrackEventType.APP_CLICK.eventValue | SensorsDataAPI.AutoTrackEventType.APP_START.eventValue | SensorsDataAPI.AutoTrackEventType.APP_END.eventValue | SensorsDataAPI.AutoTrackEventType.APP_VIEW_SCREEN.eventValue);
            this.f48013h.getClass();
            sAConfigOptions.enableLog(false);
            SensorsDataAPI.startWithConfigOptions(this.f48009b, sAConfigOptions);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("allow_personalized_ads", String.valueOf(consentRepository.d()));
            SensorsDataAPI.sharedInstance().profileSet(new JSONObject(MapsKt.o(linkedHashMap)));
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("platform_name", "LV_APP");
            SensorsDataAPI.sharedInstance().registerSuperProperties(new JSONObject(MapsKt.o(linkedHashMap2)));
            BuildersKt.c(this.f48014i, null, null, new SensorsDataAnalyticsRepositoryImpl$init$1(this, null), 3);
            SensorsDataAPI.enableSDK();
        } else {
            SensorsDataAPI.disableSDK();
        }
        this.f48015j = true;
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void b(InAppDispatch inAppDispatch, Hit hit) {
        inAppDispatch.getClass();
        hit.getClass();
        if (!this.f48015j) {
            this.f48008a.getClass();
        } else {
            BuildersKt.c(this.f48014i, null, null, new SensorsDataAnalyticsRepositoryImpl$send$1(this, inAppDispatch, hit, null), 3);
        }
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void c() {
        if (this.f48015j) {
            SensorsDataAPI.disableSDK();
        }
    }

    @Override // com.vuitton.android.domain.repository.AnalyticsRepository
    public final void d(UserProperty.WebViewUserProperty webViewUserProperty) {
        if (!this.f48015j) {
            this.f48008a.getClass();
            return;
        }
        Pair pairA = this.d.a(webViewUserProperty);
        if (pairA != null) {
            SensorsDataAPI.sharedInstance().profileSet((String) pairA.f71705b, pairA.f71706c);
        }
    }
}
