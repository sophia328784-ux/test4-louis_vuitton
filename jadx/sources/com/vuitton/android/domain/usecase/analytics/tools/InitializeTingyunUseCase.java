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
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/tools/InitializeTingyunUseCase;", "", "Lcom/vuitton/android/domain/usecase/privacy/GetFunctionalConsentUseCase;", "getFunctionalConsentUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;", "tingyunRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/privacy/GetFunctionalConsentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InitializeTingyunUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetFunctionalConsentUseCase f49213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PrivacyRelatedToolRepository f49215c;

    @Inject
    public InitializeTingyunUseCase(GetFunctionalConsentUseCase getFunctionalConsentUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, PrivacyRelatedToolRepository privacyRelatedToolRepository) {
        getFunctionalConsentUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        privacyRelatedToolRepository.getClass();
        this.f49213a = getFunctionalConsentUseCase;
        this.f49214b = isFeatureAvailableUseCase;
        this.f49215c = privacyRelatedToolRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        InitializeTingyunUseCase$run$1 initializeTingyunUseCase$run$1;
        if (continuationImpl instanceof InitializeTingyunUseCase$run$1) {
            initializeTingyunUseCase$run$1 = (InitializeTingyunUseCase$run$1) continuationImpl;
            int i2 = initializeTingyunUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                initializeTingyunUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                initializeTingyunUseCase$run$1 = new InitializeTingyunUseCase$run$1(this, continuationImpl);
            }
        } else {
            initializeTingyunUseCase$run$1 = new InitializeTingyunUseCase$run$1(this, continuationImpl);
        }
        Object objC = initializeTingyunUseCase$run$1.f49216b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = initializeTingyunUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(objC);
            if (this.f49213a.a()) {
                Feature[] featureArr = {Feature.TINGYUN_SDK};
                initializeTingyunUseCase$run$1.d = 1;
                objC = this.f49214b.c(featureArr, false, initializeTingyunUseCase$run$1);
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
            this.f49215c.a(PrivacyRelatedToolRequirements.Nothing.f49005a);
        }
        return Unit.f71739a;
    }
}
