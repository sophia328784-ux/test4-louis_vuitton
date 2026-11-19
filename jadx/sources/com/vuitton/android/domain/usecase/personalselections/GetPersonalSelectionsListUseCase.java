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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;", "", "Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;", "personalSelectionsRepository", "<init>", "(Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetPersonalSelectionsListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PersonalSelectionsRepository f50219a;

    @Inject
    public GetPersonalSelectionsListUseCase(PersonalSelectionsRepository personalSelectionsRepository) {
        personalSelectionsRepository.getClass();
        this.f50219a = personalSelectionsRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetPersonalSelectionsListUseCase$run$1 getPersonalSelectionsListUseCase$run$1;
        if (continuationImpl instanceof GetPersonalSelectionsListUseCase$run$1) {
            getPersonalSelectionsListUseCase$run$1 = (GetPersonalSelectionsListUseCase$run$1) continuationImpl;
            int i2 = getPersonalSelectionsListUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getPersonalSelectionsListUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getPersonalSelectionsListUseCase$run$1 = new GetPersonalSelectionsListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getPersonalSelectionsListUseCase$run$1 = new GetPersonalSelectionsListUseCase$run$1(this, continuationImpl);
        }
        Object obj = getPersonalSelectionsListUseCase$run$1.f50220b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getPersonalSelectionsListUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getPersonalSelectionsListUseCase$run$1.d = 1;
            Object objD = this.f50219a.d(getPersonalSelectionsListUseCase$run$1);
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
