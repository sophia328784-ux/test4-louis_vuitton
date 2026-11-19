package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.ActivateDynamicYieldUseCase", f = "ActivateDynamicYieldUseCase.kt", l = {8}, m = "run", v = 2)
final class ActivateDynamicYieldUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivateDynamicYieldUseCase f49920c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivateDynamicYieldUseCase$run$1(ActivateDynamicYieldUseCase activateDynamicYieldUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49920c = activateDynamicYieldUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49919b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49920c.a(this);
    }
}
