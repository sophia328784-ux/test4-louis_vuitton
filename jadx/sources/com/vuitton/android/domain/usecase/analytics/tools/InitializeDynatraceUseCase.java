package com.vuitton.android.domain.usecase.analytics.tools;

import com.vuitton.android.domain.repository.PrivacyRelatedToolRepository;
import com.vuitton.android.domain.repository.PrivacyRelatedToolRequirements;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.privacy.GetFunctionalConsentUseCase;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/tools/InitializeDynatraceUseCase;", "", "Lcom/vuitton/android/domain/usecase/privacy/GetFunctionalConsentUseCase;", "getFunctionalConsentUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;", "dynatraceRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/privacy/GetFunctionalConsentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InitializeDynatraceUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetFunctionalConsentUseCase f49198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PrivacyRelatedToolRepository f49200c;

    @Inject
    public InitializeDynatraceUseCase(GetFunctionalConsentUseCase getFunctionalConsentUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, PrivacyRelatedToolRepository privacyRelatedToolRepository) {
        getFunctionalConsentUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        privacyRelatedToolRepository.getClass();
        this.f49198a = getFunctionalConsentUseCase;
        this.f49199b = isFeatureAvailableUseCase;
        this.f49200c = privacyRelatedToolRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        InitializeDynatraceUseCase$run$1 initializeDynatraceUseCase$run$1;
        if (continuationImpl instanceof InitializeDynatraceUseCase$run$1) {
            initializeDynatraceUseCase$run$1 = (InitializeDynatraceUseCase$run$1) continuationImpl;
            int i2 = initializeDynatraceUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                initializeDynatraceUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                initializeDynatraceUseCase$run$1 = new InitializeDynatraceUseCase$run$1(this, continuationImpl);
            }
        } else {
            initializeDynatraceUseCase$run$1 = new InitializeDynatraceUseCase$run$1(this, continuationImpl);
        }
        Object objC = initializeDynatraceUseCase$run$1.f49201b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = initializeDynatraceUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(objC);
            if (this.f49198a.a()) {
                Feature[] featureArr = {Feature.DYNATRACE_SDK};
                initializeDynatraceUseCase$run$1.d = 1;
                objC = this.f49199b.c(featureArr, false, initializeDynatraceUseCase$run$1);
                if (objC == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(objC);
        if (((Boolean) objC).booleanValue()) {
            this.f49200c.a(PrivacyRelatedToolRequirements.Nothing.f49005a);
        }
        return Unit.f71739a;
    }
}
