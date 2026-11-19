package com.vuitton.android.presentation.redirectlink;

import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ActivateDynamicYieldUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;", "", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ActivateDynamicYieldUseCase;", "activateDynamicYieldUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ActivateDynamicYieldUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DynamicYieldLinkActivator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f51955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ActivateDynamicYieldUseCase f51956b;

    @Inject
    public DynamicYieldLinkActivator(IsFeatureAvailableUseCase isFeatureAvailableUseCase, ActivateDynamicYieldUseCase activateDynamicYieldUseCase) {
        isFeatureAvailableUseCase.getClass();
        activateDynamicYieldUseCase.getClass();
        this.f51955a = isFeatureAvailableUseCase;
        this.f51956b = activateDynamicYieldUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005a, code lost:
    
        if (r5.f51956b.a(r0) == r1) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.vuitton.android.presentation.redirectlink.DynamicYieldLinkActivator$activate$1
            if (r0 == 0) goto L13
            r0 = r6
            com.vuitton.android.presentation.redirectlink.DynamicYieldLinkActivator$activate$1 r0 = (com.vuitton.android.presentation.redirectlink.DynamicYieldLinkActivator$activate$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.presentation.redirectlink.DynamicYieldLinkActivator$activate$1 r0 = new com.vuitton.android.presentation.redirectlink.DynamicYieldLinkActivator$activate$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f51957b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.b(r6)
            goto L5d
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L31:
            kotlin.ResultKt.b(r6)
            goto L4a
        L35:
            kotlin.ResultKt.b(r6)
            com.vuitton.foundation.model.domain.model.sync.Feature r6 = com.vuitton.foundation.model.domain.model.sync.Feature.DYNAMIC_YIELD
            com.vuitton.foundation.model.domain.model.sync.Feature[] r6 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r6}
            r0.d = r4
            r2 = 0
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r4 = r5.f51955a
            java.lang.Object r6 = r4.c(r6, r2, r0)
            if (r6 != r1) goto L4a
            goto L5c
        L4a:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L60
            r0.d = r3
            com.vuitton.android.domain.usecase.dynamicyield.ActivateDynamicYieldUseCase r5 = r5.f51956b
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L5d
        L5c:
            return r1
        L5d:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        L60:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.redirectlink.DynamicYieldLinkActivator.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
