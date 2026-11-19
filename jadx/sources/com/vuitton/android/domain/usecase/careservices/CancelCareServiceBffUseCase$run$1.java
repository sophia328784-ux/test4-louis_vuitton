package com.vuitton.android.domain.usecase.careservices;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.careservices.CancelCareServiceBffUseCase", f = "CancelCareServiceBffUseCase.kt", l = {11}, m = "run-FjMe0-8", v = 2)
final class CancelCareServiceBffUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CancelCareServiceBffUseCase f49520c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CancelCareServiceBffUseCase$run$1(CancelCareServiceBffUseCase cancelCareServiceBffUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49520c = cancelCareServiceBffUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49519b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49520c.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
