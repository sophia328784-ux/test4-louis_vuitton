package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.OpenAppTimestampRepository;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.time.TimeSource;

/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/repository/OpenAppTimestampRepositoryImpl;", "Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OpenAppTimestampRepositoryImpl implements OpenAppTimestampRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TimeSource.Monotonic.ValueTimeMark f47810a;

    @Inject
    public OpenAppTimestampRepositoryImpl() {
    }

    @Override // com.vuitton.android.domain.repository.OpenAppTimestampRepository
    public final void a(long j2) {
        this.f47810a = new TimeSource.Monotonic.ValueTimeMark(j2);
    }

    @Override // com.vuitton.android.domain.repository.OpenAppTimestampRepository
    public final Object b() throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            TimeSource.Monotonic.ValueTimeMark valueTimeMark = this.f47810a;
            if (valueTimeMark == null) {
                throw new IllegalStateException("Start timestamp is not set");
            }
            valueTimeMark.getClass();
            failure = new Result(new TimeSource.Monotonic.ValueTimeMark(valueTimeMark.f74590b));
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    @Override // com.vuitton.android.domain.repository.OpenAppTimestampRepository
    public final void c() {
        this.f47810a = null;
    }
}
