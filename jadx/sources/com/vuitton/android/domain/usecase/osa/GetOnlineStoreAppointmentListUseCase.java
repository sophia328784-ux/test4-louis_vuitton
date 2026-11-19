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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;", "repository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetOnlineStoreAppointmentListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f50160a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OnlineStoreAppointmentRepository f50161b;

    @Inject
    public GetOnlineStoreAppointmentListUseCase(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, OnlineStoreAppointmentRepository onlineStoreAppointmentRepository) {
        requireCachedAppConfigUseCase.getClass();
        onlineStoreAppointmentRepository.getClass();
        this.f50160a = requireCachedAppConfigUseCase;
        this.f50161b = onlineStoreAppointmentRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetOnlineStoreAppointmentListUseCase$run$1 getOnlineStoreAppointmentListUseCase$run$1;
        if (continuationImpl instanceof GetOnlineStoreAppointmentListUseCase$run$1) {
            getOnlineStoreAppointmentListUseCase$run$1 = (GetOnlineStoreAppointmentListUseCase$run$1) continuationImpl;
            int i2 = getOnlineStoreAppointmentListUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getOnlineStoreAppointmentListUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getOnlineStoreAppointmentListUseCase$run$1 = new GetOnlineStoreAppointmentListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getOnlineStoreAppointmentListUseCase$run$1 = new GetOnlineStoreAppointmentListUseCase$run$1(this, continuationImpl);
        }
        Object obj = getOnlineStoreAppointmentListUseCase$run$1.f50162b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getOnlineStoreAppointmentListUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.f50160a.a();
        getOnlineStoreAppointmentListUseCase$run$1.d = 1;
        Object objB = this.f50161b.b(getOnlineStoreAppointmentListUseCase$run$1);
        return objB == coroutineSingletons ? coroutineSingletons : objB;
    }
}
