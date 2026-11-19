package com.vuitton.android.domain.usecase.booking;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.booking.GetBookingPassUseCase", f = "GetBookingPassUseCase.kt", l = {8}, m = "run-gIAlu-s", v = 2)
final class GetBookingPassUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetBookingPassUseCase f49484c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetBookingPassUseCase$run$1(GetBookingPassUseCase getBookingPassUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49484c = getBookingPassUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49483b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49484c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
