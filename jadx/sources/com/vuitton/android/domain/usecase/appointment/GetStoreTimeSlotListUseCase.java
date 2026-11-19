package com.vuitton.android.domain.usecase.appointment;

import com.vuitton.android.domain.repository.AppointmentRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/repository/AppointmentRepository;", "appointmentRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/AppointmentRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetStoreTimeSlotListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f49288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppointmentRepository f49289b;

    @Inject
    public GetStoreTimeSlotListUseCase(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, AppointmentRepository appointmentRepository) {
        requireCachedAppConfigUseCase.getClass();
        appointmentRepository.getClass();
        this.f49288a = requireCachedAppConfigUseCase;
        this.f49289b = appointmentRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(AvailabilitiesCaller availabilitiesCaller, List list, String str, ContinuationImpl continuationImpl) {
        GetStoreTimeSlotListUseCase$run$1 getStoreTimeSlotListUseCase$run$1;
        if (continuationImpl instanceof GetStoreTimeSlotListUseCase$run$1) {
            getStoreTimeSlotListUseCase$run$1 = (GetStoreTimeSlotListUseCase$run$1) continuationImpl;
            int i2 = getStoreTimeSlotListUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getStoreTimeSlotListUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getStoreTimeSlotListUseCase$run$1 = new GetStoreTimeSlotListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getStoreTimeSlotListUseCase$run$1 = new GetStoreTimeSlotListUseCase$run$1(this, continuationImpl);
        }
        Object obj = getStoreTimeSlotListUseCase$run$1.f49290b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getStoreTimeSlotListUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.f49288a.a();
        getStoreTimeSlotListUseCase$run$1.d = 1;
        Object objA = this.f49289b.a(availabilitiesCaller, list, str, getStoreTimeSlotListUseCase$run$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
