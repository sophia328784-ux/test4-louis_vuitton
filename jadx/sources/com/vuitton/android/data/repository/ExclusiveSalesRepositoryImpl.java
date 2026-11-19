package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.ExclusiveSalesApi;
import com.vuitton.android.data.dto.exclusivesales.ExclusiveSalesAvailableDto;
import com.vuitton.android.data.dto.exclusivesales.mapper.ExclusiveSalesMapperKt;
import com.vuitton.android.domain.repository.ExclusiveSalesRepository;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/ExclusiveSalesRepositoryImpl;", "Lcom/vuitton/android/domain/repository/ExclusiveSalesRepository;", "Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;", "exclusiveSalesApi", "<init>", "(Lcom/vuitton/android/data/api/bff/user/ExclusiveSalesApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ExclusiveSalesRepositoryImpl implements ExclusiveSalesRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExclusiveSalesApi f47709a;

    @Inject
    public ExclusiveSalesRepositoryImpl(ExclusiveSalesApi exclusiveSalesApi) {
        exclusiveSalesApi.getClass();
        this.f47709a = exclusiveSalesApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ExclusiveSalesRepository
    public final Object a(String str, ContinuationImpl continuationImpl) {
        ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1 exclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1;
        Object failure;
        if (continuationImpl instanceof ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1) {
            exclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1 = (ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1) continuationImpl;
            int i2 = exclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                exclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1.d = i2 - Integer.MIN_VALUE;
            } else {
                exclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1 = new ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1(this, continuationImpl);
            }
        } else {
            exclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1 = new ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1(this, continuationImpl);
        }
        Object userExclusiveSalesInfo = exclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1.f47710b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = exclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(userExclusiveSalesInfo);
                Result.Companion companion = Result.INSTANCE;
                ExclusiveSalesApi exclusiveSalesApi = this.f47709a;
                if (str == null) {
                    str = null;
                }
                exclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1.d = 1;
                userExclusiveSalesInfo = exclusiveSalesApi.getUserExclusiveSalesInfo("*/*", str, exclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1);
                if (userExclusiveSalesInfo == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(userExclusiveSalesInfo);
            }
            ExclusiveSalesAvailableDto exclusiveSalesAvailableDto = (ExclusiveSalesAvailableDto) ((Response) userExclusiveSalesInfo).f79450b;
            failure = new Result(exclusiveSalesAvailableDto != null ? ExclusiveSalesMapperKt.a(exclusiveSalesAvailableDto) : null);
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
