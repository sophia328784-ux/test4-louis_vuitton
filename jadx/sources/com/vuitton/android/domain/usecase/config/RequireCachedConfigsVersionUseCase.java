package com.vuitton.android.domain.usecase.config;

import com.vuitton.android.domain.repository.ConfigsVersionRepository;
import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;", "", "Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;", "configsVersionRepository", "<init>", "(Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RequireCachedConfigsVersionUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigsVersionRepository f49711a;

    @Inject
    public RequireCachedConfigsVersionUseCase(ConfigsVersionRepository configsVersionRepository) {
        configsVersionRepository.getClass();
        this.f49711a = configsVersionRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        RequireCachedConfigsVersionUseCase$run$1 requireCachedConfigsVersionUseCase$run$1;
        Object objA;
        if (continuationImpl instanceof RequireCachedConfigsVersionUseCase$run$1) {
            requireCachedConfigsVersionUseCase$run$1 = (RequireCachedConfigsVersionUseCase$run$1) continuationImpl;
            int i2 = requireCachedConfigsVersionUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                requireCachedConfigsVersionUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                requireCachedConfigsVersionUseCase$run$1 = new RequireCachedConfigsVersionUseCase$run$1(this, continuationImpl);
            }
        } else {
            requireCachedConfigsVersionUseCase$run$1 = new RequireCachedConfigsVersionUseCase$run$1(this, continuationImpl);
        }
        Object obj = requireCachedConfigsVersionUseCase$run$1.f49712b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = requireCachedConfigsVersionUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            requireCachedConfigsVersionUseCase$run$1.d = 1;
            objA = this.f49711a.a(requireCachedConfigsVersionUseCase$run$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            objA = null;
        }
        ConfigsVersion configsVersion = (ConfigsVersion) objA;
        if (configsVersion != null) {
            return configsVersion;
        }
        md.k("No cache for configs version... Please review your development work!");
        return null;
    }
}
