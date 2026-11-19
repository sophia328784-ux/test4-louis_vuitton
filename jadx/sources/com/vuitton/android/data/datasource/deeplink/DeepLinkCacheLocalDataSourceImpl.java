package com.vuitton.android.data.datasource.deeplink;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.model.domain.model.time.TimeProvider;
import com.vuitton.foundation.util.ResultExtKt;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;", "Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "schedulersProvider", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;", "timeProvider", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeepLinkCacheLocalDataSourceImpl implements DeepLinkCacheDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f44056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f44057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TimeProvider f44058c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$Companion;", "", "", "DEEP_LINK_KEY", "Ljava/lang/String;", "TIMESTAMP_KEY", "", "ONE_HOUR_MS", "J", "CACHE_DURATION_MS", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public DeepLinkCacheLocalDataSourceImpl(CoroutineDispatchers coroutineDispatchers, SharedPreferences sharedPreferences, TimeProvider timeProvider) {
        coroutineDispatchers.getClass();
        sharedPreferences.getClass();
        timeProvider.getClass();
        this.f44056a = coroutineDispatchers;
        this.f44057b = sharedPreferences;
        this.f44058c = timeProvider;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object d(DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl, ContinuationImpl continuationImpl) throws Throwable {
        DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1 deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1;
        Object failure;
        if (continuationImpl instanceof DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1) {
            deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1 = (DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1) continuationImpl;
            int i2 = deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1.d = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1 = new DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1(deepLinkCacheLocalDataSourceImpl, continuationImpl);
            }
        } else {
            deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1 = new DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1(deepLinkCacheLocalDataSourceImpl, continuationImpl);
        }
        Object objF = deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1.f44067b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = deepLinkCacheLocalDataSourceImpl.f44056a.getF43530b();
                DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1 deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1 = new DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1(deepLinkCacheLocalDataSourceImpl, null);
                deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1.d = 1;
                objF = BuildersKt.f(f43530b, deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1, deepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1);
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
            Boolean bool = (Boolean) objF;
            bool.getClass();
            failure = new Result(bool);
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
        Boolean bool2 = Boolean.FALSE;
        Object obj = ((Result) failure).f71708b;
        return obj instanceof Result.Failure ? bool2 : obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.data.datasource.deeplink.DeepLinkCacheDataSource
    public final Object a(ContinuationImpl continuationImpl) {
        DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1 deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1;
        Object failure;
        if (continuationImpl instanceof DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1) {
            deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1 = (DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1) continuationImpl;
            int i2 = deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1.d = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1 = new DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1(this, continuationImpl);
            }
        } else {
            deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1 = new DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1(this, continuationImpl);
        }
        Object obj = deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1.f44059b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44056a.getF43530b();
                DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$2$1 deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$2$1 = new DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$2$1(this, null);
                deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1.d = 1;
                if (BuildersKt.f(f43530b, deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$2$1, deepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1) == coroutineSingletons) {
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
        return ResultExtKt.a(((Result) failure).f71708b);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.data.datasource.deeplink.DeepLinkCacheDataSource
    public final Object b(String str, ContinuationImpl continuationImpl) throws Throwable {
        DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1 deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1;
        Object failure;
        if (continuationImpl instanceof DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1) {
            deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1 = (DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1) continuationImpl;
            int i2 = deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1.d = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1 = new DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1(this, continuationImpl);
            }
        } else {
            deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1 = new DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1(this, continuationImpl);
        }
        Object obj = deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1.f44070b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44056a.getF43530b();
                DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1 deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1 = new DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1(str, this, null);
                deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1.d = 1;
                if (BuildersKt.f(f43530b, deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1, deepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1) == coroutineSingletons) {
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
        return ResultExtKt.a(((Result) failure).f71708b);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009a  */
    /* JADX WARN: Code duplicated, block: B:47:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.data.datasource.deeplink.DeepLinkCacheDataSource
    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1 deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;
        Object failure;
        Object obj;
        Object obj2;
        if (continuationImpl instanceof DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1) {
            deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1 = (DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1) continuationImpl;
            int i2 = deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1.f44064e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1.f44064e = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1 = new DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1(this, continuationImpl);
            }
        } else {
            deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1 = new DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1(this, continuationImpl);
        }
        Object objF = deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1.f44063c;
        Object obj3 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1.f44064e;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44056a.getF43530b();
                DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1 deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1 = new DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1(this, null);
                deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1.f44064e = 1;
                objF = BuildersKt.f(f43530b, deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1, deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1);
                if (objF == obj3) {
                }
                return obj3;
            }
            if (i3 == 1) {
                ResultKt.b(objF);
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                obj2 = deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1.f44062b;
                ResultKt.b(objF);
                ((Result) objF).getClass();
            }
            obj = obj2;
            Result.Companion companion2 = Result.INSTANCE;
            if (obj instanceof Result.Failure) {
                return null;
            }
            return obj;
            failure = new Result((String) objF);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        obj = ((Result) failure).f71708b;
        if (Result.a(obj) != null) {
            deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1.f44062b = obj;
            deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1.f44064e = 2;
            if (a(deepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1) != obj3) {
                obj2 = obj;
                obj = obj2;
            }
            return obj3;
        }
        Result.Companion companion4 = Result.INSTANCE;
        if (obj instanceof Result.Failure) {
            return null;
        }
        return obj;
    }
}
