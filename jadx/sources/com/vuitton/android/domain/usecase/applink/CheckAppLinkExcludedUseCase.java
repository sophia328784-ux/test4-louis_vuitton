package com.vuitton.android.domain.usecase.applink;

import com.vuitton.android.domain.repository.AppLinkRepository;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;", "", "Lcom/vuitton/android/domain/repository/AppLinkRepository;", "appLinkRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AppLinkRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CheckAppLinkExcludedUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppLinkRepository f49254a;

    @Inject
    public CheckAppLinkExcludedUseCase(AppLinkRepository appLinkRepository) {
        appLinkRepository.getClass();
        this.f49254a = appLinkRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        CheckAppLinkExcludedUseCase$run$1 checkAppLinkExcludedUseCase$run$1;
        Object objD;
        if (continuationImpl instanceof CheckAppLinkExcludedUseCase$run$1) {
            checkAppLinkExcludedUseCase$run$1 = (CheckAppLinkExcludedUseCase$run$1) continuationImpl;
            int i2 = checkAppLinkExcludedUseCase$run$1.f49257e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                checkAppLinkExcludedUseCase$run$1.f49257e = i2 - Integer.MIN_VALUE;
            } else {
                checkAppLinkExcludedUseCase$run$1 = new CheckAppLinkExcludedUseCase$run$1(this, continuationImpl);
            }
        } else {
            checkAppLinkExcludedUseCase$run$1 = new CheckAppLinkExcludedUseCase$run$1(this, continuationImpl);
        }
        Object obj = checkAppLinkExcludedUseCase$run$1.f49256c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = checkAppLinkExcludedUseCase$run$1.f49257e;
        if (i3 == 0) {
            ResultKt.b(obj);
            checkAppLinkExcludedUseCase$run$1.f49255b = str;
            checkAppLinkExcludedUseCase$run$1.f49257e = 1;
            objD = this.f49254a.d(checkAppLinkExcludedUseCase$run$1);
            if (objD == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str = checkAppLinkExcludedUseCase$run$1.f49255b;
            ResultKt.b(obj);
            objD = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        List list = (List) (objD instanceof Result.Failure ? null : objD);
        return Boolean.valueOf(list != null ? list.contains(StringsKt.T(str, '?')) : false);
    }
}
