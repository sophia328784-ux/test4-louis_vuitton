package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.FeedApi;
import com.vuitton.android.data.dto.feed.FeedDto;
import com.vuitton.android.data.dto.feed.mapper.FeedMapperKt;
import com.vuitton.android.domain.repository.FeedRepository;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/FeedRepositoryImpl;", "Lcom/vuitton/android/domain/repository/FeedRepository;", "Lcom/vuitton/android/data/api/bff/publication/FeedApi;", "feedApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/FeedApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FeedRepositoryImpl implements FeedRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FeedApi f47712a;

    @Inject
    public FeedRepositoryImpl(FeedApi feedApi) {
        feedApi.getClass();
        this.f47712a = feedApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.FeedRepository
    public final Object a(ContinuationImpl continuationImpl) {
        FeedRepositoryImpl$getFeedForYou$1 feedRepositoryImpl$getFeedForYou$1;
        Object failure;
        if (continuationImpl instanceof FeedRepositoryImpl$getFeedForYou$1) {
            feedRepositoryImpl$getFeedForYou$1 = (FeedRepositoryImpl$getFeedForYou$1) continuationImpl;
            int i2 = feedRepositoryImpl$getFeedForYou$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                feedRepositoryImpl$getFeedForYou$1.d = i2 - Integer.MIN_VALUE;
            } else {
                feedRepositoryImpl$getFeedForYou$1 = new FeedRepositoryImpl$getFeedForYou$1(this, continuationImpl);
            }
        } else {
            feedRepositoryImpl$getFeedForYou$1 = new FeedRepositoryImpl$getFeedForYou$1(this, continuationImpl);
        }
        Object feedForYou = feedRepositoryImpl$getFeedForYou$1.f47715b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = feedRepositoryImpl$getFeedForYou$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(feedForYou);
                Result.Companion companion = Result.INSTANCE;
                FeedApi feedApi = this.f47712a;
                feedRepositoryImpl$getFeedForYou$1.d = 1;
                feedForYou = feedApi.getFeedForYou(feedRepositoryImpl$getFeedForYou$1);
                if (feedForYou == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(feedForYou);
            }
            failure = new Result(FeedMapperKt.a((FeedDto) feedForYou));
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.FeedRepository
    public final Object b(ContinuationImpl continuationImpl) {
        FeedRepositoryImpl$getFeedDiscover$1 feedRepositoryImpl$getFeedDiscover$1;
        Object failure;
        if (continuationImpl instanceof FeedRepositoryImpl$getFeedDiscover$1) {
            feedRepositoryImpl$getFeedDiscover$1 = (FeedRepositoryImpl$getFeedDiscover$1) continuationImpl;
            int i2 = feedRepositoryImpl$getFeedDiscover$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                feedRepositoryImpl$getFeedDiscover$1.d = i2 - Integer.MIN_VALUE;
            } else {
                feedRepositoryImpl$getFeedDiscover$1 = new FeedRepositoryImpl$getFeedDiscover$1(this, continuationImpl);
            }
        } else {
            feedRepositoryImpl$getFeedDiscover$1 = new FeedRepositoryImpl$getFeedDiscover$1(this, continuationImpl);
        }
        Object feedDiscover = feedRepositoryImpl$getFeedDiscover$1.f47713b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = feedRepositoryImpl$getFeedDiscover$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(feedDiscover);
                Result.Companion companion = Result.INSTANCE;
                FeedApi feedApi = this.f47712a;
                feedRepositoryImpl$getFeedDiscover$1.d = 1;
                feedDiscover = feedApi.getFeedDiscover(feedRepositoryImpl$getFeedDiscover$1);
                if (feedDiscover == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(feedDiscover);
            }
            failure = new Result(FeedMapperKt.a((FeedDto) feedDiscover));
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
