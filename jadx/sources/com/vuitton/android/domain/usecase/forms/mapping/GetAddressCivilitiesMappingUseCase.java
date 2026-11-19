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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;", "", "Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;", "civilityRepository", "<init>", "(Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetAddressCivilitiesMappingUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CivilityRepository f50082a;

    @Inject
    public GetAddressCivilitiesMappingUseCase(CivilityRepository civilityRepository) {
        civilityRepository.getClass();
        this.f50082a = civilityRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, boolean z, ContinuationImpl continuationImpl) {
        GetAddressCivilitiesMappingUseCase$run$1 getAddressCivilitiesMappingUseCase$run$1;
        if (continuationImpl instanceof GetAddressCivilitiesMappingUseCase$run$1) {
            getAddressCivilitiesMappingUseCase$run$1 = (GetAddressCivilitiesMappingUseCase$run$1) continuationImpl;
            int i2 = getAddressCivilitiesMappingUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getAddressCivilitiesMappingUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getAddressCivilitiesMappingUseCase$run$1 = new GetAddressCivilitiesMappingUseCase$run$1(this, continuationImpl);
            }
        } else {
            getAddressCivilitiesMappingUseCase$run$1 = new GetAddressCivilitiesMappingUseCase$run$1(this, continuationImpl);
        }
        Object obj = getAddressCivilitiesMappingUseCase$run$1.f50083b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getAddressCivilitiesMappingUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getAddressCivilitiesMappingUseCase$run$1.d = 1;
            Object objA = this.f50082a.a(str, z, getAddressCivilitiesMappingUseCase$run$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
