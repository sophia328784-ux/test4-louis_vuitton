package com.vuitton.android.domain.usecase.privacy.consent;

import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.android.domain.usecase.dynamicyield.SetDynamicYieldConsentUseCase;
import com.vuitton.android.domain.usecase.products.RemoveLastViewedProductListUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;", "", "Lcom/vuitton/android/domain/repository/ConsentRepository;", "consentRepository", "Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;", "removeLastViewedProductListUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldConsentUseCase;", "setDynamicYieldConsentUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldConsentUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SetConsentsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConsentRepository f50276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RemoveLastViewedProductListUseCase f50277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SetDynamicYieldConsentUseCase f50278c;

    @Inject
    public SetConsentsUseCase(ConsentRepository consentRepository, RemoveLastViewedProductListUseCase removeLastViewedProductListUseCase, SetDynamicYieldConsentUseCase setDynamicYieldConsentUseCase) {
        consentRepository.getClass();
        removeLastViewedProductListUseCase.getClass();
        setDynamicYieldConsentUseCase.getClass();
        this.f50276a = consentRepository;
        this.f50277b = removeLastViewedProductListUseCase;
        this.f50278c = setDynamicYieldConsentUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
    
        if (r3.a(false, r0) == r1) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a9, code lost:
    
        if (r3.a(true, r0) == r1) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.util.ArrayList r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof com.vuitton.android.domain.usecase.privacy.consent.SetConsentsUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r11
            com.vuitton.android.domain.usecase.privacy.consent.SetConsentsUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.privacy.consent.SetConsentsUseCase$run$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.privacy.consent.SetConsentsUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.privacy.consent.SetConsentsUseCase$run$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.f50279b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            com.vuitton.android.domain.usecase.dynamicyield.SetDynamicYieldConsentUseCase r3 = r9.f50278c
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L3f
            if (r2 == r6) goto L3b
            if (r2 == r5) goto L37
            if (r2 != r4) goto L31
            kotlin.ResultKt.b(r11)
            goto Lac
        L31:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r7
        L37:
            kotlin.ResultKt.b(r11)
            goto L7f
        L3b:
            kotlin.ResultKt.b(r11)
            goto L75
        L3f:
            kotlin.ResultKt.b(r11)
            com.vuitton.android.domain.repository.ConsentRepository r11 = r9.f50276a
            r11.i(r10)
            java.util.Iterator r11 = r10.iterator()
        L4b:
            boolean r2 = r11.hasNext()
            if (r2 == 0) goto L5d
            java.lang.Object r2 = r11.next()
            r8 = r2
            com.vuitton.foundation.model.domain.model.privacy.Consent r8 = (com.vuitton.foundation.model.domain.model.privacy.Consent) r8
            boolean r8 = r8 instanceof com.vuitton.foundation.model.domain.model.privacy.Consent.CustomisationConsent
            if (r8 == 0) goto L4b
            goto L5e
        L5d:
            r2 = r7
        L5e:
            com.vuitton.foundation.model.domain.model.privacy.Consent r2 = (com.vuitton.foundation.model.domain.model.privacy.Consent) r2
            if (r2 == 0) goto L65
            com.vuitton.foundation.model.domain.model.privacy.ConsentValue r11 = r2.f67882a
            goto L66
        L65:
            r11 = r7
        L66:
            com.vuitton.foundation.model.domain.model.privacy.ConsentValue r2 = com.vuitton.foundation.model.domain.model.privacy.ConsentValue.REFUSED
            if (r11 != r2) goto L82
            r0.d = r6
            com.vuitton.android.domain.usecase.products.RemoveLastViewedProductListUseCase r9 = r9.f50277b
            java.lang.Object r9 = r9.a(r0)
            if (r9 != r1) goto L75
            goto Lab
        L75:
            r0.d = r5
            r9 = 0
            java.lang.Object r9 = r3.a(r9, r0)
            if (r9 != r1) goto L7f
            goto Lab
        L7f:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        L82:
            java.util.Iterator r9 = r10.iterator()
        L86:
            boolean r10 = r9.hasNext()
            if (r10 == 0) goto L98
            java.lang.Object r10 = r9.next()
            r11 = r10
            com.vuitton.foundation.model.domain.model.privacy.Consent r11 = (com.vuitton.foundation.model.domain.model.privacy.Consent) r11
            boolean r11 = r11 instanceof com.vuitton.foundation.model.domain.model.privacy.Consent.CustomisationConsent
            if (r11 == 0) goto L86
            goto L99
        L98:
            r10 = r7
        L99:
            com.vuitton.foundation.model.domain.model.privacy.Consent r10 = (com.vuitton.foundation.model.domain.model.privacy.Consent) r10
            if (r10 == 0) goto L9f
            com.vuitton.foundation.model.domain.model.privacy.ConsentValue r7 = r10.f67882a
        L9f:
            com.vuitton.foundation.model.domain.model.privacy.ConsentValue r9 = com.vuitton.foundation.model.domain.model.privacy.ConsentValue.GIVEN
            if (r7 != r9) goto Laf
            r0.d = r4
            java.lang.Object r9 = r3.a(r6, r0)
            if (r9 != r1) goto Lac
        Lab:
            return r1
        Lac:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        Laf:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.privacy.consent.SetConsentsUseCase.a(java.util.ArrayList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
