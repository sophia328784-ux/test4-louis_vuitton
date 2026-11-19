package com.vuitton.android.domain.usecase.appointment;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.appointment.ModifyAppointmentUseCase", f = "ModifyAppointmentUseCase.kt", l = {9}, m = "run-gIAlu-s", v = 2)
final class ModifyAppointmentUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ModifyAppointmentUseCase f49294c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModifyAppointmentUseCase$run$1(ModifyAppointmentUseCase modifyAppointmentUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49294c = modifyAppointmentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49293b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49294c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
