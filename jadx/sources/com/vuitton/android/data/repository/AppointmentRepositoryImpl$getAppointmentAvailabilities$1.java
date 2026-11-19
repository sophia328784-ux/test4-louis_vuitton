package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppointmentRepositoryImpl", f = "AppointmentRepositoryImpl.kt", l = {Sink.ORIENTATION_90, 98}, m = "getAppointmentAvailabilities", v = 2)
final class AppointmentRepositoryImpl$getAppointmentAvailabilities$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47278c;
    public final /* synthetic */ AppointmentRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47279e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppointmentRepositoryImpl$getAppointmentAvailabilities$1(AppointmentRepositoryImpl appointmentRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = appointmentRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47278c = obj;
        this.f47279e |= Integer.MIN_VALUE;
        return this.d.g(null, null, null, false, this);
    }
}
