package com.vuitton.android.domain.usecase.careservices;

import com.vuitton.android.domain.repository.CareServicesRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/repository/CareServicesRepository;", "careServicesRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/CareServicesRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UpdateCareServiceUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f49553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CareServicesRepository f49554b;

    @Inject
    public UpdateCareServiceUseCase(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, CareServicesRepository careServicesRepository) {
        requireCachedAppConfigUseCase.getClass();
        careServicesRepository.getClass();
        this.f49553a = requireCachedAppConfigUseCase;
        this.f49554b = careServicesRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, CareServiceUpdate careServiceUpdate, ContinuationImpl continuationImpl) {
        UpdateCareServiceUseCase$run$1 updateCareServiceUseCase$run$1;
        if (continuationImpl instanceof UpdateCareServiceUseCase$run$1) {
            updateCareServiceUseCase$run$1 = (UpdateCareServiceUseCase$run$1) continuationImpl;
            int i2 = updateCareServiceUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                updateCareServiceUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                updateCareServiceUseCase$run$1 = new UpdateCareServiceUseCase$run$1(this, continuationImpl);
            }
        } else {
            updateCareServiceUseCase$run$1 = new UpdateCareServiceUseCase$run$1(this, continuationImpl);
        }
        Object obj = updateCareServiceUseCase$run$1.f49555b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = updateCareServiceUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        AppConfig appConfigA = this.f49553a.a();
        updateCareServiceUseCase$run$1.d = 1;
        Object objC = this.f49554b.c(appConfigA, str, careServiceUpdate, updateCareServiceUseCase$run$1);
        return objC == coroutineSingletons ? coroutineSingletons : objC;
    }
}
