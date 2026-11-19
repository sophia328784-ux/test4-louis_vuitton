package com.vuitton.android.domain.usecase.appointment;

import com.vuitton.android.domain.repository.AppointmentRepository;
import com.vuitton.foundation.model.domain.model.appointment.PrebookContext;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;", "", "Lcom/vuitton/android/domain/repository/AppointmentRepository;", "appointmentRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AppointmentRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PrebookAppointmentUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppointmentRepository f49295a;

    @Inject
    public PrebookAppointmentUseCase(AppointmentRepository appointmentRepository) {
        appointmentRepository.getClass();
        this.f49295a = appointmentRepository;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object a(String str, AppointmentType appointmentType, boolean z, PrebookContext prebookContext, ContinuationImpl continuationImpl) {
        PrebookAppointmentUseCase$run$1 prebookAppointmentUseCase$run$1;
        if (continuationImpl instanceof PrebookAppointmentUseCase$run$1) {
            prebookAppointmentUseCase$run$1 = (PrebookAppointmentUseCase$run$1) continuationImpl;
            int i2 = prebookAppointmentUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                prebookAppointmentUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                prebookAppointmentUseCase$run$1 = new PrebookAppointmentUseCase$run$1(this, continuationImpl);
            }
        } else {
            prebookAppointmentUseCase$run$1 = new PrebookAppointmentUseCase$run$1(this, continuationImpl);
        }
        PrebookAppointmentUseCase$run$1 prebookAppointmentUseCase$run$2 = prebookAppointmentUseCase$run$1;
        Object obj = prebookAppointmentUseCase$run$2.f49296b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = prebookAppointmentUseCase$run$2.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            prebookAppointmentUseCase$run$2.d = 1;
            Object objB = this.f49295a.b(str, appointmentType, z, prebookContext, prebookAppointmentUseCase$run$2);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
