package com.vuitton.android.domain.usecase.account.address;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.address.GetAddressListUseCase", f = "GetAddressListUseCase.kt", l = {8}, m = "run-IoAF18A", v = 2)
final class GetAddressListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetAddressListUseCase f49084c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetAddressListUseCase$run$1(GetAddressListUseCase getAddressListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49084c = getAddressListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49083b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49084c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
