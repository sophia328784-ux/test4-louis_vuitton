package com.vuitton.android.domain.usecase.appointment;

import com.vuitton.android.domain.repository.AppointmentRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.foundation.model.domain.model.distantrepairs.Appointment;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/repository/AppointmentRepository;", "appointmentRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/AppointmentRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConfirmAppointmentUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f49277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppointmentRepository f49278b;

    @Inject
    public ConfirmAppointmentUseCase(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, AppointmentRepository appointmentRepository) {
        requireCachedAppConfigUseCase.getClass();
        appointmentRepository.getClass();
        this.f49277a = requireCachedAppConfigUseCase;
        this.f49278b = appointmentRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Appointment appointment, boolean z, ContinuationImpl continuationImpl) {
        ConfirmAppointmentUseCase$run$1 confirmAppointmentUseCase$run$1;
        if (continuationImpl instanceof ConfirmAppointmentUseCase$run$1) {
            confirmAppointmentUseCase$run$1 = (ConfirmAppointmentUseCase$run$1) continuationImpl;
            int i2 = confirmAppointmentUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                confirmAppointmentUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                confirmAppointmentUseCase$run$1 = new ConfirmAppointmentUseCase$run$1(this, continuationImpl);
            }
        } else {
            confirmAppointmentUseCase$run$1 = new ConfirmAppointmentUseCase$run$1(this, continuationImpl);
        }
        Object obj = confirmAppointmentUseCase$run$1.f49279b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = confirmAppointmentUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.f49277a.a();
        confirmAppointmentUseCase$run$1.d = 1;
        Object objE = this.f49278b.e(appointment, z, confirmAppointmentUseCase$run$1);
        return objE == coroutineSingletons ? coroutineSingletons : objE;
    }
}
