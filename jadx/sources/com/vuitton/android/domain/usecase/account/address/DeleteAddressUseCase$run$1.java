package com.vuitton.android.domain.usecase.account.address;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.address.DeleteAddressUseCase", f = "DeleteAddressUseCase.kt", l = {14}, m = "run-W_hxlTY", v = 2)
final class DeleteAddressUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeleteAddressUseCase f49072c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteAddressUseCase$run$1(DeleteAddressUseCase deleteAddressUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49072c = deleteAddressUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49071b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49072c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
