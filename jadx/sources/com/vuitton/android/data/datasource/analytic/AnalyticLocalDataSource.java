package com.vuitton.android.data.datasource.analytic;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;", "", "<init>", "()V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnalyticLocalDataSource {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource$Companion;", "", "", "HASH_ALGORITHM", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, String str2, ContinuationImpl continuationImpl) {
        AnalyticLocalDataSource$getUserIdProperty$1 analyticLocalDataSource$getUserIdProperty$1;
        Object failure;
        if (continuationImpl instanceof AnalyticLocalDataSource$getUserIdProperty$1) {
            analyticLocalDataSource$getUserIdProperty$1 = (AnalyticLocalDataSource$getUserIdProperty$1) continuationImpl;
            int i2 = analyticLocalDataSource$getUserIdProperty$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                analyticLocalDataSource$getUserIdProperty$1.d = i2 - Integer.MIN_VALUE;
            } else {
                analyticLocalDataSource$getUserIdProperty$1 = new AnalyticLocalDataSource$getUserIdProperty$1(this, continuationImpl);
            }
        } else {
            analyticLocalDataSource$getUserIdProperty$1 = new AnalyticLocalDataSource$getUserIdProperty$1(this, continuationImpl);
        }
        Object objF = analyticLocalDataSource$getUserIdProperty$1.f43753b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = analyticLocalDataSource$getUserIdProperty$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                AnalyticLocalDataSource$getUserIdProperty$2$1 analyticLocalDataSource$getUserIdProperty$2$1 = new AnalyticLocalDataSource$getUserIdProperty$2$1(str, str2, null);
                analyticLocalDataSource$getUserIdProperty$1.d = 1;
                objF = BuildersKt.f(defaultIoScheduler, analyticLocalDataSource$getUserIdProperty$2$1, analyticLocalDataSource$getUserIdProperty$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objF);
            }
            failure = new Result((String) objF);
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
