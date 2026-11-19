package com.vuitton.android.domain.usecase.dynamicyield;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.ResetDynamicYieldIdUseCase", f = "ResetDynamicYieldIdUseCase.kt", l = {12, 13}, m = "run-IoAF18A", v = 2)
final class ResetDynamicYieldIdUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ResetDynamicYieldIdUseCase f49987c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResetDynamicYieldIdUseCase$run$1(ResetDynamicYieldIdUseCase resetDynamicYieldIdUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49987c = resetDynamicYieldIdUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49986b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49987c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
