package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.SetDynamicYieldConsentUseCase", f = "SetDynamicYieldConsentUseCase.kt", l = {9}, m = "run", v = 2)
final class SetDynamicYieldConsentUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SetDynamicYieldConsentUseCase f49990c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetDynamicYieldConsentUseCase$run$1(SetDynamicYieldConsentUseCase setDynamicYieldConsentUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49990c = setDynamicYieldConsentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49989b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49990c.a(false, this);
    }
}
