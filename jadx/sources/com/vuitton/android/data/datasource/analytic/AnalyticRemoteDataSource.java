package com.vuitton.android.data.datasource.analytic;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.logger.Logger;
import defpackage.md;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/google/firebase/analytics/FirebaseAnalytics;", "firebaseAnalytics", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/google/firebase/analytics/FirebaseAnalytics;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnalyticRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f43757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FirebaseAnalytics f43758b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource$Companion;", "", "", "TAG", "Ljava/lang/String;", "USER_ID_PROPERTY_NAME", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public AnalyticRemoteDataSource(Logger logger, FirebaseAnalytics firebaseAnalytics) {
        logger.getClass();
        firebaseAnalytics.getClass();
        this.f43757a = logger;
        this.f43758b = firebaseAnalytics;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        AnalyticRemoteDataSource$upsertUserIdProperty$1 analyticRemoteDataSource$upsertUserIdProperty$1;
        Object failure;
        if (continuationImpl instanceof AnalyticRemoteDataSource$upsertUserIdProperty$1) {
            analyticRemoteDataSource$upsertUserIdProperty$1 = (AnalyticRemoteDataSource$upsertUserIdProperty$1) continuationImpl;
            int i2 = analyticRemoteDataSource$upsertUserIdProperty$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                analyticRemoteDataSource$upsertUserIdProperty$1.d = i2 - Integer.MIN_VALUE;
            } else {
                analyticRemoteDataSource$upsertUserIdProperty$1 = new AnalyticRemoteDataSource$upsertUserIdProperty$1(this, continuationImpl);
            }
        } else {
            analyticRemoteDataSource$upsertUserIdProperty$1 = new AnalyticRemoteDataSource$upsertUserIdProperty$1(this, continuationImpl);
        }
        Object obj = analyticRemoteDataSource$upsertUserIdProperty$1.f43759b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = analyticRemoteDataSource$upsertUserIdProperty$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                AnalyticRemoteDataSource$upsertUserIdProperty$2$1 analyticRemoteDataSource$upsertUserIdProperty$2$1 = new AnalyticRemoteDataSource$upsertUserIdProperty$2$1(this, str, null);
                analyticRemoteDataSource$upsertUserIdProperty$1.d = 1;
                if (BuildersKt.f(defaultIoScheduler, analyticRemoteDataSource$upsertUserIdProperty$2$1, analyticRemoteDataSource$upsertUserIdProperty$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
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
