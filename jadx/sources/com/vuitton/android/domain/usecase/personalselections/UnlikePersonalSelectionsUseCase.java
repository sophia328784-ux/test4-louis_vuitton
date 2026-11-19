package com.vuitton.android.domain.usecase.personalselections;

import com.vuitton.android.domain.repository.PersonalSelectionsRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/personalselections/UnlikePersonalSelectionsUseCase;", "", "Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;", "personalSelectionsRepository", "<init>", "(Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UnlikePersonalSelectionsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PersonalSelectionsRepository f50225a;

    @Inject
    public UnlikePersonalSelectionsUseCase(PersonalSelectionsRepository personalSelectionsRepository) {
        personalSelectionsRepository.getClass();
        this.f50225a = personalSelectionsRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        UnlikePersonalSelectionsUseCase$run$1 unlikePersonalSelectionsUseCase$run$1;
        if (continuationImpl instanceof UnlikePersonalSelectionsUseCase$run$1) {
            unlikePersonalSelectionsUseCase$run$1 = (UnlikePersonalSelectionsUseCase$run$1) continuationImpl;
            int i2 = unlikePersonalSelectionsUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                unlikePersonalSelectionsUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                unlikePersonalSelectionsUseCase$run$1 = new UnlikePersonalSelectionsUseCase$run$1(this, continuationImpl);
            }
        } else {
            unlikePersonalSelectionsUseCase$run$1 = new UnlikePersonalSelectionsUseCase$run$1(this, continuationImpl);
        }
        Object obj = unlikePersonalSelectionsUseCase$run$1.f50226b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = unlikePersonalSelectionsUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            unlikePersonalSelectionsUseCase$run$1.d = 1;
            Object objC = this.f50225a.c(str, unlikePersonalSelectionsUseCase$run$1);
            return objC == coroutineSingletons ? coroutineSingletons : objC;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
