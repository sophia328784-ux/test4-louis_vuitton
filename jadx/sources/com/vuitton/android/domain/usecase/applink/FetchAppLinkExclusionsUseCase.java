package com.vuitton.android.domain.usecase.applink;

import com.vuitton.android.domain.repository.AppLinkRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;", "", "Lcom/vuitton/android/domain/repository/AppLinkRepository;", "appLinkRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AppLinkRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FetchAppLinkExclusionsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppLinkRepository f49261a;

    @Inject
    public FetchAppLinkExclusionsUseCase(AppLinkRepository appLinkRepository) {
        appLinkRepository.getClass();
        this.f49261a = appLinkRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        FetchAppLinkExclusionsUseCase$run$1 fetchAppLinkExclusionsUseCase$run$1;
        if (continuationImpl instanceof FetchAppLinkExclusionsUseCase$run$1) {
            fetchAppLinkExclusionsUseCase$run$1 = (FetchAppLinkExclusionsUseCase$run$1) continuationImpl;
            int i2 = fetchAppLinkExclusionsUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fetchAppLinkExclusionsUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                fetchAppLinkExclusionsUseCase$run$1 = new FetchAppLinkExclusionsUseCase$run$1(this, continuationImpl);
            }
        } else {
            fetchAppLinkExclusionsUseCase$run$1 = new FetchAppLinkExclusionsUseCase$run$1(this, continuationImpl);
        }
        Object obj = fetchAppLinkExclusionsUseCase$run$1.f49262b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = fetchAppLinkExclusionsUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            fetchAppLinkExclusionsUseCase$run$1.d = 1;
            Object objE = this.f49261a.e(fetchAppLinkExclusionsUseCase$run$1);
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
