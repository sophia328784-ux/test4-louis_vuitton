package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.ImmersiveArticleApi;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticlePageDto;
import com.vuitton.android.data.dto.immersivearticle.mapper.ImmersiveArticlePageMapperKt;
import com.vuitton.android.domain.repository.ImmersiveArticleRepository;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/ImmersiveArticleRepositoryImpl;", "Lcom/vuitton/android/domain/repository/ImmersiveArticleRepository;", "Lcom/vuitton/android/data/api/bff/publication/ImmersiveArticleApi;", "immersiveArticleApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/ImmersiveArticleApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleRepositoryImpl implements ImmersiveArticleRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmersiveArticleApi f47724a;

    @Inject
    public ImmersiveArticleRepositoryImpl(ImmersiveArticleApi immersiveArticleApi) {
        immersiveArticleApi.getClass();
        this.f47724a = immersiveArticleApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ImmersiveArticleRepository
    public final Object a(String str, ContinuationImpl continuationImpl) {
        ImmersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1 immersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1;
        Object failure;
        if (continuationImpl instanceof ImmersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1) {
            immersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1 = (ImmersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1) continuationImpl;
            int i2 = immersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                immersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1.d = i2 - Integer.MIN_VALUE;
            } else {
                immersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1 = new ImmersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1(this, continuationImpl);
            }
        } else {
            immersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1 = new ImmersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1(this, continuationImpl);
        }
        Object immersiveArticleDetailByKey = immersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1.f47725b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = immersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(immersiveArticleDetailByKey);
                Result.Companion companion = Result.INSTANCE;
                ImmersiveArticleApi immersiveArticleApi = this.f47724a;
                immersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1.d = 1;
                immersiveArticleDetailByKey = immersiveArticleApi.getImmersiveArticleDetailByKey(str, immersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1);
                if (immersiveArticleDetailByKey == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(immersiveArticleDetailByKey);
            }
            failure = new Result(ImmersiveArticlePageMapperKt.a((ImmersiveArticlePageDto) immersiveArticleDetailByKey));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
