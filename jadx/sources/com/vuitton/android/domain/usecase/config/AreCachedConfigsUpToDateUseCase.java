package com.vuitton.android.domain.usecase.config;

import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;", "requireCachedConfigsVersionUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AreCachedConfigsUpToDateUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConfigsVersionUseCase f49649a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f49650b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49651c;

    @Inject
    public AreCachedConfigsUpToDateUseCase(RequireCachedConfigsVersionUseCase requireCachedConfigsVersionUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase) {
        requireCachedConfigsVersionUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        requireCachedConnectedObjectsConfigUseCase.getClass();
        this.f49649a = requireCachedConfigsVersionUseCase;
        this.f49650b = requireCachedAppConfigUseCase;
        this.f49651c = requireCachedConnectedObjectsConfigUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ConfigsVersion configsVersion, ContinuationImpl continuationImpl) throws Throwable {
        AreCachedConfigsUpToDateUseCase$run$1 areCachedConfigsUpToDateUseCase$run$1;
        Object failure;
        Object failure2;
        Object failure3;
        ConfigsVersion configsVersion2;
        Long l;
        if (continuationImpl instanceof AreCachedConfigsUpToDateUseCase$run$1) {
            areCachedConfigsUpToDateUseCase$run$1 = (AreCachedConfigsUpToDateUseCase$run$1) continuationImpl;
            int i2 = areCachedConfigsUpToDateUseCase$run$1.f49654e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                areCachedConfigsUpToDateUseCase$run$1.f49654e = i2 - Integer.MIN_VALUE;
            } else {
                areCachedConfigsUpToDateUseCase$run$1 = new AreCachedConfigsUpToDateUseCase$run$1(this, continuationImpl);
            }
        } else {
            areCachedConfigsUpToDateUseCase$run$1 = new AreCachedConfigsUpToDateUseCase$run$1(this, continuationImpl);
        }
        Object objA = areCachedConfigsUpToDateUseCase$run$1.f49653c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = areCachedConfigsUpToDateUseCase$run$1.f49654e;
        try {
            try {
                if (i3 == 0) {
                    ResultKt.b(objA);
                    Result.Companion companion = Result.INSTANCE;
                    RequireCachedConfigsVersionUseCase requireCachedConfigsVersionUseCase = this.f49649a;
                    areCachedConfigsUpToDateUseCase$run$1.f49652b = configsVersion;
                    areCachedConfigsUpToDateUseCase$run$1.f49654e = 1;
                    objA = requireCachedConfigsVersionUseCase.a(areCachedConfigsUpToDateUseCase$run$1);
                    if (objA == coroutineSingletons) {
                    }
                    return coroutineSingletons;
                }
                if (i3 == 1) {
                    configsVersion = areCachedConfigsUpToDateUseCase$run$1.f49652b;
                    ResultKt.b(objA);
                } else {
                    if (i3 != 2) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    configsVersion2 = areCachedConfigsUpToDateUseCase$run$1.f49652b;
                    ResultKt.b(objA);
                }
                l = ((ConnectedObjectsConfig) objA).d;
                long j2 = configsVersion2.f67288b;
                if (l != null || l.longValue() != j2) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                failure = new Result(Unit.f71739a);
                Throwable thA = Result.a(failure);
                if (thA != null) {
                    if (thA instanceof CancellationException) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                boolean z = ((Result) failure).f71708b instanceof Result.Failure ? false : true;
                return Boolean.valueOf(z);
                ConfigsVersion configsVersion3 = (ConfigsVersion) objA;
                if (configsVersion3.f67287a != configsVersion.f67287a) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                if (configsVersion3.f67288b != configsVersion.f67288b) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                failure2 = new Result(Unit.f71739a);
                Throwable thA2 = Result.a(failure2);
                if (thA2 != null) {
                    if (thA2 instanceof CancellationException) {
                        throw thA2;
                    }
                    failure2 = new Result(new Result.Failure(thA2));
                }
                if (!(((Result) failure2).f71708b instanceof Result.Failure)) {
                    try {
                        if (this.f49650b.a().e0 != configsVersion.f67287a) {
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                        failure3 = new Result(Unit.f71739a);
                        Throwable thA3 = Result.a(failure3);
                        if (thA3 != null) {
                            if (thA3 instanceof CancellationException) {
                                throw thA3;
                            }
                            failure3 = new Result(new Result.Failure(thA3));
                        }
                        if (!(((Result) failure3).f71708b instanceof Result.Failure)) {
                            RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase = this.f49651c;
                            areCachedConfigsUpToDateUseCase$run$1.f49652b = configsVersion;
                            areCachedConfigsUpToDateUseCase$run$1.f49654e = 2;
                            objA = requireCachedConnectedObjectsConfigUseCase.a(areCachedConfigsUpToDateUseCase$run$1);
                            if (objA != coroutineSingletons) {
                                configsVersion2 = configsVersion;
                                l = ((ConnectedObjectsConfig) objA).d;
                                long j3 = configsVersion2.f67288b;
                                if (l != null) {
                                }
                                throw new IllegalArgumentException("Failed requirement.");
                            }
                            return coroutineSingletons;
                        }
                        return Boolean.valueOf(z);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        failure3 = new Result.Failure(th);
                    }
                }
                return Boolean.valueOf(z);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                failure2 = new Result.Failure(th2);
            }
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            failure = new Result.Failure(th3);
        }
    }
}
