package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.LandingPageApi;
import com.vuitton.android.data.dto.immersivearticle.ImmersiveArticlePageDto;
import com.vuitton.android.data.dto.immersivearticle.mapper.ImmersiveArticlePageMapperKt;
import com.vuitton.android.domain.repository.LandingPageRepository;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/LandingPageRepositoryImpl;", "Lcom/vuitton/android/domain/repository/LandingPageRepository;", "Lcom/vuitton/android/data/api/bff/publication/LandingPageApi;", "landingPageApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/LandingPageApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LandingPageRepositoryImpl implements LandingPageRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LandingPageApi f47742a;

    @Inject
    public LandingPageRepositoryImpl(LandingPageApi landingPageApi) {
        landingPageApi.getClass();
        this.f47742a = landingPageApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.LandingPageRepository
    public final Object a(String str, ContinuationImpl continuationImpl) {
        LandingPageRepositoryImpl$getLandingPageDetailsById$1 landingPageRepositoryImpl$getLandingPageDetailsById$1;
        Object failure;
        if (continuationImpl instanceof LandingPageRepositoryImpl$getLandingPageDetailsById$1) {
            landingPageRepositoryImpl$getLandingPageDetailsById$1 = (LandingPageRepositoryImpl$getLandingPageDetailsById$1) continuationImpl;
            int i2 = landingPageRepositoryImpl$getLandingPageDetailsById$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                landingPageRepositoryImpl$getLandingPageDetailsById$1.d = i2 - Integer.MIN_VALUE;
            } else {
                landingPageRepositoryImpl$getLandingPageDetailsById$1 = new LandingPageRepositoryImpl$getLandingPageDetailsById$1(this, continuationImpl);
            }
        } else {
            landingPageRepositoryImpl$getLandingPageDetailsById$1 = new LandingPageRepositoryImpl$getLandingPageDetailsById$1(this, continuationImpl);
        }
        Object seoLandingPage = landingPageRepositoryImpl$getLandingPageDetailsById$1.f47743b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = landingPageRepositoryImpl$getLandingPageDetailsById$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(seoLandingPage);
                Result.Companion companion = Result.INSTANCE;
                LandingPageApi landingPageApi = this.f47742a;
                landingPageRepositoryImpl$getLandingPageDetailsById$1.d = 1;
                seoLandingPage = landingPageApi.getSeoLandingPage(str, landingPageRepositoryImpl$getLandingPageDetailsById$1);
                if (seoLandingPage == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(seoLandingPage);
            }
            failure = new Result(ImmersiveArticlePageMapperKt.a((ImmersiveArticlePageDto) seoLandingPage));
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
