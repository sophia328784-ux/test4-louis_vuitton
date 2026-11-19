package com.vuitton.android.domain.usecase.forms;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.forms.GetSecondaryAddressFormUseCase", f = "GetSecondaryAddressFormUseCase.kt", l = {22, 26}, m = "run-0E7RQCE", v = 2)
final class GetSecondaryAddressFormUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetSecondaryAddressFormUseCase f50081c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSecondaryAddressFormUseCase$run$1(GetSecondaryAddressFormUseCase getSecondaryAddressFormUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50081c = getSecondaryAddressFormUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50080b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50081c.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
