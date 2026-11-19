package com.vuitton.android.domain.usecase.aicompanion;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.aicompanion.UpdateAITooltipVisibilityUseCase", f = "UpdateAITooltipVisibilityUseCase.kt", l = {7}, m = "run-gIAlu-s", v = 2)
final class UpdateAITooltipVisibilityUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UpdateAITooltipVisibilityUseCase f49172c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateAITooltipVisibilityUseCase$run$1(UpdateAITooltipVisibilityUseCase updateAITooltipVisibilityUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49172c = updateAITooltipVisibilityUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49171b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49172c.a(false, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
