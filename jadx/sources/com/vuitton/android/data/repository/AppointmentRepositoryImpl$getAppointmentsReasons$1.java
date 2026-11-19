package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppointmentRepositoryImpl", f = "AppointmentRepositoryImpl.kt", l = {176}, m = "getAppointmentsReasons-IoAF18A", v = 2)
final class AppointmentRepositoryImpl$getAppointmentsReasons$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppointmentRepositoryImpl f47281c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppointmentRepositoryImpl$getAppointmentsReasons$1(AppointmentRepositoryImpl appointmentRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47281c = appointmentRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47280b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f47281c.d(this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
