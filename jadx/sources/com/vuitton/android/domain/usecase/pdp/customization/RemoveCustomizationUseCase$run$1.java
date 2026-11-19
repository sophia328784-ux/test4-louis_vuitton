package com.vuitton.android.domain.usecase.pdp.customization;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.pdp.customization.RemoveCustomizationUseCase", f = "RemoveCustomizationUseCase.kt", l = {8}, m = "run-TPjgr7Q", v = 2)
final class RemoveCustomizationUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemoveCustomizationUseCase f50192c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoveCustomizationUseCase$run$1(RemoveCustomizationUseCase removeCustomizationUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50192c = removeCustomizationUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50191b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50192c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
