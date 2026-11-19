package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.appointment.PrebookContext;
import com.vuitton.foundation.model.domain.model.appointment.UpdateAppointmentRequest;
import com.vuitton.foundation.model.domain.model.distantrepairs.Appointment;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/AppointmentRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AppointmentRepository {
    Object a(AvailabilitiesCaller availabilitiesCaller, List list, String str, ContinuationImpl continuationImpl);

    Object b(String str, AppointmentType appointmentType, boolean z, PrebookContext prebookContext, ContinuationImpl continuationImpl);

    Object c(AvailabilitiesCaller availabilitiesCaller, List list, boolean z, ContinuationImpl continuationImpl);

    Object d(ContinuationImpl continuationImpl);

    Object e(Appointment appointment, boolean z, ContinuationImpl continuationImpl);

    Object f(UpdateAppointmentRequest updateAppointmentRequest, ContinuationImpl continuationImpl);
}
