package com.vuitton.android.domain.usecase.automatedtest;

import com.vuitton.android.domain.repository.AutomatedTestRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;", "", "Lcom/vuitton/android/domain/repository/AutomatedTestRepository;", "automatedTestRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AutomatedTestRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ApplySavedSecurityCookieUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AutomatedTestRepository f49434a;

    @Inject
    public ApplySavedSecurityCookieUseCase(AutomatedTestRepository automatedTestRepository) {
        automatedTestRepository.getClass();
        this.f49434a = automatedTestRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        ApplySavedSecurityCookieUseCase$run$1 applySavedSecurityCookieUseCase$run$1;
        Object objD;
        if (continuationImpl instanceof ApplySavedSecurityCookieUseCase$run$1) {
            applySavedSecurityCookieUseCase$run$1 = (ApplySavedSecurityCookieUseCase$run$1) continuationImpl;
            int i2 = applySavedSecurityCookieUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                applySavedSecurityCookieUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                applySavedSecurityCookieUseCase$run$1 = new ApplySavedSecurityCookieUseCase$run$1(this, continuationImpl);
            }
        } else {
            applySavedSecurityCookieUseCase$run$1 = new ApplySavedSecurityCookieUseCase$run$1(this, continuationImpl);
        }
        Object obj = applySavedSecurityCookieUseCase$run$1.f49435b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = applySavedSecurityCookieUseCase$run$1.d;
        AutomatedTestRepository automatedTestRepository = this.f49434a;
        if (i3 == 0) {
            ResultKt.b(obj);
            applySavedSecurityCookieUseCase$run$1.d = 1;
            objD = automatedTestRepository.d();
            if (objD != coroutineSingletons) {
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
        objD = ((Result) obj).f71708b;
        Throwable thA = Result.a(objD);
        if (thA != null) {
            return new Result.Failure(thA);
        }
        ResultKt.b(objD);
        applySavedSecurityCookieUseCase$run$1.d = 2;
        Result.Failure failureE = automatedTestRepository.e();
        return failureE == coroutineSingletons ? coroutineSingletons : failureE;
    }
}
