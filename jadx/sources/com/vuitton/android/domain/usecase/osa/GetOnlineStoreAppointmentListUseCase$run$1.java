package com.vuitton.android.domain.usecase.osa;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.osa.GetOnlineStoreAppointmentListUseCase", f = "GetOnlineStoreAppointmentListUseCase.kt", l = {12}, m = "run-IoAF18A", v = 2)
final class GetOnlineStoreAppointmentListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetOnlineStoreAppointmentListUseCase f50163c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetOnlineStoreAppointmentListUseCase$run$1(GetOnlineStoreAppointmentListUseCase getOnlineStoreAppointmentListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50163c = getOnlineStoreAppointmentListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50162b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50163c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
