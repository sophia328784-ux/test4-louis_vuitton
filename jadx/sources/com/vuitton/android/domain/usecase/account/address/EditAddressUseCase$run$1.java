package com.vuitton.android.domain.usecase.account.address;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.address.EditAddressUseCase", f = "EditAddressUseCase.kt", l = {14}, m = "run-gIAlu-s", v = 2)
final class EditAddressUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EditAddressUseCase f49075c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditAddressUseCase$run$1(EditAddressUseCase editAddressUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49075c = editAddressUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49074b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49075c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
