package com.vuitton.android.domain.usecase.analytics.tools.appsflyer;

import com.vuitton.android.domain.repository.AppsFlyerRepository;
import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.privacy.GetAnalyticsAndTrackersConsentUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.UserHasConsentForAppsFlyerUseCase;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.ConsentValue;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B9\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/repository/AppsFlyerRepository;", "appsFlyerRepository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;", "userHasConsentForAppsFlyerUseCase", "Lcom/vuitton/android/domain/usecase/privacy/GetAnalyticsAndTrackersConsentUseCase;", "getAnalyticsAndTrackersConsentUseCase", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AppsFlyerRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetAnalyticsAndTrackersConsentUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StartAppsFlyerUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f49221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppsFlyerRepository f49222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49223c;
    public final RequireUserInAppDispatchUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserHasConsentForAppsFlyerUseCase f49224e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetAnalyticsAndTrackersConsentUseCase f49225f;

    @Inject
    public StartAppsFlyerUseCase(Logger logger, AppsFlyerRepository appsFlyerRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, UserHasConsentForAppsFlyerUseCase userHasConsentForAppsFlyerUseCase, GetAnalyticsAndTrackersConsentUseCase getAnalyticsAndTrackersConsentUseCase) {
        logger.getClass();
        appsFlyerRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        userHasConsentForAppsFlyerUseCase.getClass();
        getAnalyticsAndTrackersConsentUseCase.getClass();
        this.f49221a = logger;
        this.f49222b = appsFlyerRepository;
        this.f49223c = isFeatureAvailableUseCase;
        this.d = requireUserInAppDispatchUseCase;
        this.f49224e = userHasConsentForAppsFlyerUseCase;
        this.f49225f = getAnalyticsAndTrackersConsentUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        StartAppsFlyerUseCase$run$1 startAppsFlyerUseCase$run$1;
        Pair pair;
        Throwable thA;
        ConsentValue consentValue;
        ConsentValue consentValue2;
        if (continuationImpl instanceof StartAppsFlyerUseCase$run$1) {
            startAppsFlyerUseCase$run$1 = (StartAppsFlyerUseCase$run$1) continuationImpl;
            int i2 = startAppsFlyerUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                startAppsFlyerUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                startAppsFlyerUseCase$run$1 = new StartAppsFlyerUseCase$run$1(this, continuationImpl);
            }
        } else {
            startAppsFlyerUseCase$run$1 = new StartAppsFlyerUseCase$run$1(this, continuationImpl);
        }
        Object objC = startAppsFlyerUseCase$run$1.f49226b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = startAppsFlyerUseCase$run$1.d;
        Logger logger = this.f49221a;
        boolean zB = false;
        if (i3 == 0) {
            ResultKt.b(objC);
            if (this.f49224e.a()) {
                Feature[] featureArr = {Feature.APPSFLYER};
                startAppsFlyerUseCase$run$1.d = 1;
                objC = this.f49223c.c(featureArr, false, startAppsFlyerUseCase$run$1);
                if (objC == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            logger.d("StartAppsFlyerUseCase", "User has no consent for AppsFlyer or feature is not available, skipping AppsFlyer start", null);
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(objC);
        if (((Boolean) objC).booleanValue()) {
            GetAnalyticsAndTrackersConsentUseCase getAnalyticsAndTrackersConsentUseCase = this.f49225f;
            InAppDispatch inAppDispatchB = getAnalyticsAndTrackersConsentUseCase.f50251a.f49912a.b();
            ConsentRepository consentRepository = getAnalyticsAndTrackersConsentUseCase.f50252b;
            if (consentRepository.g()) {
                List listF = consentRepository.f();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listF) {
                    if (obj instanceof Consent.AnalyticsConsent) {
                        arrayList.add(obj);
                    }
                }
                Consent consent = (Consent) CollectionsKt.firstOrNull(arrayList);
                Boolean boolValueOf = Boolean.valueOf((consent == null || (consentValue2 = consent.f67882a) == null) ? false : consentValue2.b());
                List listF2 = consentRepository.f();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : listF2) {
                    if (obj2 instanceof Consent.SocialConsent) {
                        arrayList2.add(obj2);
                    }
                }
                Consent consent2 = (Consent) CollectionsKt.firstOrNull(arrayList2);
                if (consent2 != null && (consentValue = consent2.f67882a) != null) {
                    zB = consentValue.b();
                }
                pair = new Pair(boolValueOf, Boolean.valueOf(zB));
            } else if (InAppDispatchExtKt.e(inAppDispatchB)) {
                Boolean bool = Boolean.FALSE;
                pair = new Pair(bool, bool);
            } else {
                Boolean bool2 = Boolean.TRUE;
                pair = new Pair(bool2, bool2);
            }
            boolean zBooleanValue = ((Boolean) pair.f71705b).booleanValue();
            boolean zBooleanValue2 = ((Boolean) pair.f71706c).booleanValue();
            AppsFlyerRepository appsFlyerRepository = this.f49222b;
            appsFlyerRepository.f(zBooleanValue, zBooleanValue2);
            if (!InAppDispatchExtKt.c(this.d.f49912a.b()) && (thA = Result.a(appsFlyerRepository.c())) != null) {
                logger.d("StartAppsFlyerUseCase", "Couldn't subscribe to AppsFlyer uninstall event " + thA.getMessage(), null);
            }
            return Unit.f71739a;
        }
        logger.d("StartAppsFlyerUseCase", "User has no consent for AppsFlyer or feature is not available, skipping AppsFlyer start", null);
        return Unit.f71739a;
    }
}
