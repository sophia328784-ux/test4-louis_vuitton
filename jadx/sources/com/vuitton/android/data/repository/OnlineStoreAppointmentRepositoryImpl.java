package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.AppointmentApi;
import com.vuitton.android.data.dto.osa.mapper.AppointmentsMapperKt;
import com.vuitton.android.data.dto.osa.twist.AppointmentsDto;
import com.vuitton.android.data.dto.osa.twist.CancelAppointmentDtoRequest;
import com.vuitton.android.data.dto.osa.twist.CancelAppointmentDtoResponse;
import com.vuitton.android.domain.repository.OnlineStoreAppointmentRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.osa.CancelAppointmentResponseItem;
import com.vuitton.foundation.model.domain.model.osa.OnlineStoreAppointments;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl;", "Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/api/bff/user/AppointmentApi;", "appointmentApi", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AppointmentApi;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OnlineStoreAppointmentRepositoryImpl implements OnlineStoreAppointmentRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppointmentApi f47805b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/OnlineStoreAppointmentRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public OnlineStoreAppointmentRepositoryImpl(Logger logger, AppointmentApi appointmentApi) {
        logger.getClass();
        appointmentApi.getClass();
        this.f47804a = logger;
        this.f47805b = appointmentApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.OnlineStoreAppointmentRepository
    public final Object a(String str, ContinuationImpl continuationImpl) throws Throwable {
        OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1 onlineStoreAppointmentRepositoryImpl$cancelAppointment$1;
        Object failure;
        if (continuationImpl instanceof OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1) {
            onlineStoreAppointmentRepositoryImpl$cancelAppointment$1 = (OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1) continuationImpl;
            int i2 = onlineStoreAppointmentRepositoryImpl$cancelAppointment$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                onlineStoreAppointmentRepositoryImpl$cancelAppointment$1.d = i2 - Integer.MIN_VALUE;
            } else {
                onlineStoreAppointmentRepositoryImpl$cancelAppointment$1 = new OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1(this, continuationImpl);
            }
        } else {
            onlineStoreAppointmentRepositoryImpl$cancelAppointment$1 = new OnlineStoreAppointmentRepositoryImpl$cancelAppointment$1(this, continuationImpl);
        }
        Object objCancelAppointment = onlineStoreAppointmentRepositoryImpl$cancelAppointment$1.f47806b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = onlineStoreAppointmentRepositoryImpl$cancelAppointment$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objCancelAppointment);
                Result.Companion companion = Result.INSTANCE;
                AppointmentApi appointmentApi = this.f47805b;
                CancelAppointmentDtoRequest cancelAppointmentDtoRequest = new CancelAppointmentDtoRequest(str);
                onlineStoreAppointmentRepositoryImpl$cancelAppointment$1.d = 1;
                objCancelAppointment = appointmentApi.cancelAppointment(cancelAppointmentDtoRequest, onlineStoreAppointmentRepositoryImpl$cancelAppointment$1);
                if (objCancelAppointment == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objCancelAppointment);
            }
            CancelAppointmentDtoResponse cancelAppointmentDtoResponse = (CancelAppointmentDtoResponse) objCancelAppointment;
            cancelAppointmentDtoResponse.getClass();
            Boolean bool = cancelAppointmentDtoResponse.f46157a;
            boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
            String str2 = cancelAppointmentDtoResponse.f46158b;
            if (str2 == null) {
                str2 = "";
            }
            failure = new Result(new CancelAppointmentResponseItem(zBooleanValue, "", "", "", str2));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 != null) {
            this.f47804a.c("OSARepositoryImpl", thA2.getMessage(), thA2);
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.OnlineStoreAppointmentRepository
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1 onlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1;
        Object failure;
        if (continuationImpl instanceof OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1) {
            onlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1 = (OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1) continuationImpl;
            int i2 = onlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                onlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                onlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1 = new OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1(this, continuationImpl);
            }
        } else {
            onlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1 = new OnlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1(this, continuationImpl);
        }
        Object appointments = onlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1.f47808b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = onlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(appointments);
                Result.Companion companion = Result.INSTANCE;
                AppointmentApi appointmentApi = this.f47805b;
                onlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1.d = 1;
                appointments = appointmentApi.getAppointments(onlineStoreAppointmentRepositoryImpl$getOnlineStoreAppointmentList$1);
                if (appointments == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(appointments);
            }
            AppointmentsDto appointmentsDto = (AppointmentsDto) appointments;
            failure = new Result(new OnlineStoreAppointments(AppointmentsMapperKt.c(appointmentsDto.f46152a), AppointmentsMapperKt.c(appointmentsDto.f46153b)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 != null) {
            this.f47804a.c("OSARepositoryImpl", thA2.getMessage(), thA2);
            EmptyList emptyList = EmptyList.f71768b;
            new OnlineStoreAppointments(emptyList, emptyList);
        }
        return obj;
    }
}
