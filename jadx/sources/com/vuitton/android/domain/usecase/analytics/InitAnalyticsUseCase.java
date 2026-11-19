package com.vuitton.android.domain.usecase.analytics;

import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import dagger.Lazy;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B/\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Ldagger/Lazy;", "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;", "analyticsWrapperRepositoryProvider", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Ldagger/Lazy;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InitAnalyticsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f49176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f49177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f49178c;
    public final IsFeatureAvailableUseCase d;

    @Inject
    public InitAnalyticsUseCase(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, Lazy<AnalyticsWrapperRepository> lazy, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        requireUserInAppDispatchUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        lazy.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f49176a = requireUserInAppDispatchUseCase;
        this.f49177b = requireCachedAppConfigUseCase;
        this.f49178c = lazy;
        this.d = isFeatureAvailableUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        InitAnalyticsUseCase$run$1 initAnalyticsUseCase$run$1;
        InAppDispatch inAppDispatchB;
        AppConfig appConfigA;
        AnalyticsWrapperRepository analyticsWrapperRepository;
        AppConfig appConfig;
        boolean z;
        AnalyticsWrapperRepository analyticsWrapperRepository2;
        if (continuationImpl instanceof InitAnalyticsUseCase$run$1) {
            initAnalyticsUseCase$run$1 = (InitAnalyticsUseCase$run$1) continuationImpl;
            int i2 = initAnalyticsUseCase$run$1.f49183h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                initAnalyticsUseCase$run$1.f49183h = i2 - Integer.MIN_VALUE;
            } else {
                initAnalyticsUseCase$run$1 = new InitAnalyticsUseCase$run$1(this, continuationImpl);
            }
        } else {
            initAnalyticsUseCase$run$1 = new InitAnalyticsUseCase$run$1(this, continuationImpl);
        }
        Object obj = initAnalyticsUseCase$run$1.f49182f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = initAnalyticsUseCase$run$1.f49183h;
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = this.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            AnalyticsWrapperRepository analyticsWrapperRepository3 = (AnalyticsWrapperRepository) this.f49178c.get();
            inAppDispatchB = this.f49176a.f49912a.b();
            appConfigA = this.f49177b.a();
            Feature[] featureArr = {Feature.SENSORS_DATA_ENABLED_STATUS};
            initAnalyticsUseCase$run$1.f49179b = analyticsWrapperRepository3;
            initAnalyticsUseCase$run$1.f49180c = inAppDispatchB;
            initAnalyticsUseCase$run$1.d = appConfigA;
            initAnalyticsUseCase$run$1.f49183h = 1;
            Object objC = isFeatureAvailableUseCase.c(featureArr, false, initAnalyticsUseCase$run$1);
            if (objC != coroutineSingletons) {
                analyticsWrapperRepository = analyticsWrapperRepository3;
                obj = objC;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            appConfigA = initAnalyticsUseCase$run$1.d;
            inAppDispatchB = initAnalyticsUseCase$run$1.f49180c;
            analyticsWrapperRepository = initAnalyticsUseCase$run$1.f49179b;
            ResultKt.b(obj);
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = initAnalyticsUseCase$run$1.f49181e;
            appConfig = initAnalyticsUseCase$run$1.d;
            inAppDispatchB = initAnalyticsUseCase$run$1.f49180c;
            analyticsWrapperRepository2 = initAnalyticsUseCase$run$1.f49179b;
            ResultKt.b(obj);
        }
        analyticsWrapperRepository2.e(inAppDispatchB, appConfig, z, ((Boolean) obj).booleanValue());
        return Unit.f71739a;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        Feature[] featureArr2 = {Feature.GOOGLE_ANALYTICS};
        initAnalyticsUseCase$run$1.f49179b = analyticsWrapperRepository;
        initAnalyticsUseCase$run$1.f49180c = inAppDispatchB;
        initAnalyticsUseCase$run$1.d = appConfigA;
        initAnalyticsUseCase$run$1.f49181e = zBooleanValue;
        initAnalyticsUseCase$run$1.f49183h = 2;
        Object objC2 = isFeatureAvailableUseCase.c(featureArr2, false, initAnalyticsUseCase$run$1);
        if (objC2 != coroutineSingletons) {
            appConfig = appConfigA;
            z = zBooleanValue;
            obj = objC2;
            analyticsWrapperRepository2 = analyticsWrapperRepository;
            analyticsWrapperRepository2.e(inAppDispatchB, appConfig, z, ((Boolean) obj).booleanValue());
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}
