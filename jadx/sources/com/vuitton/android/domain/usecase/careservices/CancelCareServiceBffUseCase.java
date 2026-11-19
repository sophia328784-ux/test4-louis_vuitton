package com.vuitton.android.domain.usecase.careservices;

import com.vuitton.android.domain.repository.CareServicesBffRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;", "", "Lcom/vuitton/android/domain/repository/CareServicesBffRepository;", "repository", "<init>", "(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CancelCareServiceBffUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CareServicesBffRepository f49518a;

    @Inject
    public CancelCareServiceBffUseCase(CareServicesBffRepository careServicesBffRepository) {
        careServicesBffRepository.getClass();
        this.f49518a = careServicesBffRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, String str2, ContinuationImpl continuationImpl) {
        CancelCareServiceBffUseCase$run$1 cancelCareServiceBffUseCase$run$1;
        if (continuationImpl instanceof CancelCareServiceBffUseCase$run$1) {
            cancelCareServiceBffUseCase$run$1 = (CancelCareServiceBffUseCase$run$1) continuationImpl;
            int i2 = cancelCareServiceBffUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cancelCareServiceBffUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                cancelCareServiceBffUseCase$run$1 = new CancelCareServiceBffUseCase$run$1(this, continuationImpl);
            }
        } else {
            cancelCareServiceBffUseCase$run$1 = new CancelCareServiceBffUseCase$run$1(this, continuationImpl);
        }
        Object obj = cancelCareServiceBffUseCase$run$1.f49519b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = cancelCareServiceBffUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            cancelCareServiceBffUseCase$run$1.d = 1;
            Object objD = this.f49518a.d(str, str2, cancelCareServiceBffUseCase$run$1);
            return objD == coroutineSingletons ? coroutineSingletons : objD;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
