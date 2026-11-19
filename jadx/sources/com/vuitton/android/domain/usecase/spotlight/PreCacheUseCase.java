package com.vuitton.android.domain.usecase.spotlight;

import com.vuitton.android.domain.repository.SpotlightRepository;
import defpackage.md;
import java.util.UUID;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;", "", "Lcom/vuitton/android/domain/repository/SpotlightRepository;", "spotlightRepository", "<init>", "(Lcom/vuitton/android/domain/repository/SpotlightRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PreCacheUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SpotlightRepository f50386a;

    @Inject
    public PreCacheUseCase(SpotlightRepository spotlightRepository) {
        spotlightRepository.getClass();
        this.f50386a = spotlightRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        PreCacheUseCase$run$1 preCacheUseCase$run$1;
        if (continuationImpl instanceof PreCacheUseCase$run$1) {
            preCacheUseCase$run$1 = (PreCacheUseCase$run$1) continuationImpl;
            int i2 = preCacheUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                preCacheUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                preCacheUseCase$run$1 = new PreCacheUseCase$run$1(this, continuationImpl);
            }
        } else {
            preCacheUseCase$run$1 = new PreCacheUseCase$run$1(this, continuationImpl);
        }
        Object obj = preCacheUseCase$run$1.f50387b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = preCacheUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            preCacheUseCase$run$1.d = 1;
            UUID uuidB = this.f50386a.b(str);
            return uuidB == coroutineSingletons ? coroutineSingletons : uuidB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
