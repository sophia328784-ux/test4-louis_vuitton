package com.vuitton.android.domain.usecase.forms.mapping;

import com.vuitton.core.infrastructure.data.forms.repository.CivilityRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;", "", "Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;", "civilityRepository", "<init>", "(Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetProfileCivilitiesMappingUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CivilityRepository f50085a;

    @Inject
    public GetProfileCivilitiesMappingUseCase(CivilityRepository civilityRepository) {
        civilityRepository.getClass();
        this.f50085a = civilityRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, boolean z, ContinuationImpl continuationImpl) {
        GetProfileCivilitiesMappingUseCase$run$1 getProfileCivilitiesMappingUseCase$run$1;
        if (continuationImpl instanceof GetProfileCivilitiesMappingUseCase$run$1) {
            getProfileCivilitiesMappingUseCase$run$1 = (GetProfileCivilitiesMappingUseCase$run$1) continuationImpl;
            int i2 = getProfileCivilitiesMappingUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getProfileCivilitiesMappingUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getProfileCivilitiesMappingUseCase$run$1 = new GetProfileCivilitiesMappingUseCase$run$1(this, continuationImpl);
            }
        } else {
            getProfileCivilitiesMappingUseCase$run$1 = new GetProfileCivilitiesMappingUseCase$run$1(this, continuationImpl);
        }
        Object obj = getProfileCivilitiesMappingUseCase$run$1.f50086b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getProfileCivilitiesMappingUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getProfileCivilitiesMappingUseCase$run$1.d = 1;
            Object objB = this.f50085a.b(str, z, getProfileCivilitiesMappingUseCase$run$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
