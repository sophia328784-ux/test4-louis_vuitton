package com.vuitton.android.domain.usecase.careservices;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.careservices.ConfirmCareServiceAddressBffUseCase", f = "ConfirmCareServiceAddressBffUseCase.kt", l = {13}, m = "run-ZRY7MHs", v = 2)
final class ConfirmCareServiceAddressBffUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConfirmCareServiceAddressBffUseCase f49523c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmCareServiceAddressBffUseCase$run$1(ConfirmCareServiceAddressBffUseCase confirmCareServiceAddressBffUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49523c = confirmCareServiceAddressBffUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49522b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49523c.a(null, null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
