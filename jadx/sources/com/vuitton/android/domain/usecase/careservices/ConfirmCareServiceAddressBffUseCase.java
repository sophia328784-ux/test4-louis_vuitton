package com.vuitton.android.domain.usecase.careservices;

import com.vuitton.android.domain.repository.CareServicesBffRepository;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAddress;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/careservices/ConfirmCareServiceAddressBffUseCase;", "", "Lcom/vuitton/android/domain/repository/CareServicesBffRepository;", "repository", "<init>", "(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConfirmCareServiceAddressBffUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CareServicesBffRepository f49521a;

    @Inject
    public ConfirmCareServiceAddressBffUseCase(CareServicesBffRepository careServicesBffRepository) {
        careServicesBffRepository.getClass();
        this.f49521a = careServicesBffRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, CareServiceAddress careServiceAddress, CareServiceAddress careServiceAddress2, ContinuationImpl continuationImpl) {
        ConfirmCareServiceAddressBffUseCase$run$1 confirmCareServiceAddressBffUseCase$run$1;
        if (continuationImpl instanceof ConfirmCareServiceAddressBffUseCase$run$1) {
            confirmCareServiceAddressBffUseCase$run$1 = (ConfirmCareServiceAddressBffUseCase$run$1) continuationImpl;
            int i2 = confirmCareServiceAddressBffUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                confirmCareServiceAddressBffUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                confirmCareServiceAddressBffUseCase$run$1 = new ConfirmCareServiceAddressBffUseCase$run$1(this, continuationImpl);
            }
        } else {
            confirmCareServiceAddressBffUseCase$run$1 = new ConfirmCareServiceAddressBffUseCase$run$1(this, continuationImpl);
        }
        Object obj = confirmCareServiceAddressBffUseCase$run$1.f49522b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = confirmCareServiceAddressBffUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            confirmCareServiceAddressBffUseCase$run$1.d = 1;
            Object objE = this.f49521a.e(str, careServiceAddress, careServiceAddress2, confirmCareServiceAddressBffUseCase$run$1);
            return objE == coroutineSingletons ? coroutineSingletons : objE;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
