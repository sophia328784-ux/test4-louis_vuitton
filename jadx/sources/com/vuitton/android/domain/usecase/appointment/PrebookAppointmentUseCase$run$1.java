package com.vuitton.android.domain.usecase.appointment;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.appointment.PrebookAppointmentUseCase", f = "PrebookAppointmentUseCase.kt", l = {15}, m = "run-yxL6bBk", v = 2)
final class PrebookAppointmentUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrebookAppointmentUseCase f49297c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrebookAppointmentUseCase$run$1(PrebookAppointmentUseCase prebookAppointmentUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49297c = prebookAppointmentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49296b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49297c.a(null, null, false, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
