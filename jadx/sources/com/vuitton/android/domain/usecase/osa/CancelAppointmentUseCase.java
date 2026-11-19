package com.vuitton.android.domain.usecase.osa;

import com.vuitton.android.domain.repository.OnlineStoreAppointmentRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;", "repository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CancelAppointmentUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f50153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OnlineStoreAppointmentRepository f50154b;

    @Inject
    public CancelAppointmentUseCase(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, OnlineStoreAppointmentRepository onlineStoreAppointmentRepository) {
        requireCachedAppConfigUseCase.getClass();
        onlineStoreAppointmentRepository.getClass();
        this.f50153a = requireCachedAppConfigUseCase;
        this.f50154b = onlineStoreAppointmentRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        CancelAppointmentUseCase$run$1 cancelAppointmentUseCase$run$1;
        if (continuationImpl instanceof CancelAppointmentUseCase$run$1) {
            cancelAppointmentUseCase$run$1 = (CancelAppointmentUseCase$run$1) continuationImpl;
            int i2 = cancelAppointmentUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cancelAppointmentUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cancelAppointmentUseCase$run$1 = new CancelAppointmentUseCase$run$1(this, continuationImpl);
            }
        } else {
            cancelAppointmentUseCase$run$1 = new CancelAppointmentUseCase$run$1(this, continuationImpl);
        }
        Object obj = cancelAppointmentUseCase$run$1.f50155b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cancelAppointmentUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.f50153a.a();
        cancelAppointmentUseCase$run$1.d = 1;
        Object objA = this.f50154b.a(str, cancelAppointmentUseCase$run$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
