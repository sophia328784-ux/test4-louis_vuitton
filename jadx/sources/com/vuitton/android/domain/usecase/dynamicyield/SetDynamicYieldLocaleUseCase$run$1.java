package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.SetDynamicYieldLocaleUseCase", f = "SetDynamicYieldLocaleUseCase.kt", l = {9}, m = "run", v = 2)
final class SetDynamicYieldLocaleUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SetDynamicYieldLocaleUseCase f49993c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetDynamicYieldLocaleUseCase$run$1(SetDynamicYieldLocaleUseCase setDynamicYieldLocaleUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49993c = setDynamicYieldLocaleUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49992b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49993c.a(null, this);
    }
}
