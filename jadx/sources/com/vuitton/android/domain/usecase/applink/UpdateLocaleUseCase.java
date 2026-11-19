package com.vuitton.android.domain.usecase.applink;

import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.domain.repository.InAppDispatchRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;", "", "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;", "inAppDispatchRepository", "Lcom/vuitton/android/domain/repository/AppConfigRepository;", "appConfigRepository", "<init>", "(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/repository/AppConfigRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UpdateLocaleUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatchRepository f49273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppConfigRepository f49274b;

    @Inject
    public UpdateLocaleUseCase(InAppDispatchRepository inAppDispatchRepository, AppConfigRepository appConfigRepository) {
        inAppDispatchRepository.getClass();
        appConfigRepository.getClass();
        this.f49273a = inAppDispatchRepository;
        this.f49274b = appConfigRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        UpdateLocaleUseCase$run$1 updateLocaleUseCase$run$1;
        Object objA;
        if (continuationImpl instanceof UpdateLocaleUseCase$run$1) {
            updateLocaleUseCase$run$1 = (UpdateLocaleUseCase$run$1) continuationImpl;
            int i2 = updateLocaleUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                updateLocaleUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                updateLocaleUseCase$run$1 = new UpdateLocaleUseCase$run$1(this, continuationImpl);
            }
        } else {
            updateLocaleUseCase$run$1 = new UpdateLocaleUseCase$run$1(this, continuationImpl);
        }
        Object obj = updateLocaleUseCase$run$1.f49275b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = updateLocaleUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            updateLocaleUseCase$run$1.d = 1;
            objA = this.f49273a.a(str, updateLocaleUseCase$run$1);
            if (objA != coroutineSingletons) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        objA = ((Result) obj).f71708b;
        Throwable thA = Result.a(objA);
        if (thA != null) {
            return new Result.Failure(thA);
        }
        ResultKt.b(objA);
        updateLocaleUseCase$run$1.d = 2;
        Object objB = this.f49274b.b(updateLocaleUseCase$run$1);
        return objB == coroutineSingletons ? coroutineSingletons : objB;
    }
}
