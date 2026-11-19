package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.repository.AppVersionProvider;
import com.vuitton.android.domain.repository.AppVersionRepository;
import dagger.Lazy;
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
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0001\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/repository/AppVersionRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AppVersionRepository;", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "schedulersProvider", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lcom/vuitton/android/domain/repository/AppVersionProvider;", "appVersionProvider", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Ldagger/Lazy;Lcom/vuitton/android/domain/repository/AppVersionProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppVersionRepositoryImpl implements AppVersionRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f47262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f47263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppVersionProvider f47264c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/AppVersionRepositoryImpl$Companion;", "", "", "APP_VERSION_KEY", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public AppVersionRepositoryImpl(CoroutineDispatchers coroutineDispatchers, Lazy<SharedPreferences> lazy, AppVersionProvider appVersionProvider) {
        coroutineDispatchers.getClass();
        lazy.getClass();
        appVersionProvider.getClass();
        this.f47262a = coroutineDispatchers;
        this.f47263b = lazy;
        this.f47264c = appVersionProvider;
    }

    @Override // com.vuitton.android.domain.repository.AppVersionRepository
    public final Integer a() {
        return new Integer(this.f47264c.a());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppVersionRepository
    public final Object b(int i2, ContinuationImpl continuationImpl) {
        AppVersionRepositoryImpl$persistAppVersion$1 appVersionRepositoryImpl$persistAppVersion$1;
        Object failure;
        if (continuationImpl instanceof AppVersionRepositoryImpl$persistAppVersion$1) {
            appVersionRepositoryImpl$persistAppVersion$1 = (AppVersionRepositoryImpl$persistAppVersion$1) continuationImpl;
            int i3 = appVersionRepositoryImpl$persistAppVersion$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                appVersionRepositoryImpl$persistAppVersion$1.d = i3 - Integer.MIN_VALUE;
            } else {
                appVersionRepositoryImpl$persistAppVersion$1 = new AppVersionRepositoryImpl$persistAppVersion$1(this, continuationImpl);
            }
        } else {
            appVersionRepositoryImpl$persistAppVersion$1 = new AppVersionRepositoryImpl$persistAppVersion$1(this, continuationImpl);
        }
        Object obj = appVersionRepositoryImpl$persistAppVersion$1.f47268b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = appVersionRepositoryImpl$persistAppVersion$1.d;
        try {
            if (i4 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f47262a.getF43530b();
                AppVersionRepositoryImpl$persistAppVersion$2$1 appVersionRepositoryImpl$persistAppVersion$2$1 = new AppVersionRepositoryImpl$persistAppVersion$2$1(this, i2, null);
                appVersionRepositoryImpl$persistAppVersion$1.d = 1;
                if (BuildersKt.f(f43530b, appVersionRepositoryImpl$persistAppVersion$2$1, appVersionRepositoryImpl$persistAppVersion$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i4 != 1) {
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppVersionRepository
    public final Object c(ContinuationImpl continuationImpl) {
        AppVersionRepositoryImpl$getCachedAppVersion$1 appVersionRepositoryImpl$getCachedAppVersion$1;
        Object failure;
        if (continuationImpl instanceof AppVersionRepositoryImpl$getCachedAppVersion$1) {
            appVersionRepositoryImpl$getCachedAppVersion$1 = (AppVersionRepositoryImpl$getCachedAppVersion$1) continuationImpl;
            int i2 = appVersionRepositoryImpl$getCachedAppVersion$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appVersionRepositoryImpl$getCachedAppVersion$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appVersionRepositoryImpl$getCachedAppVersion$1 = new AppVersionRepositoryImpl$getCachedAppVersion$1(this, continuationImpl);
            }
        } else {
            appVersionRepositoryImpl$getCachedAppVersion$1 = new AppVersionRepositoryImpl$getCachedAppVersion$1(this, continuationImpl);
        }
        Object objF = appVersionRepositoryImpl$getCachedAppVersion$1.f47265b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appVersionRepositoryImpl$getCachedAppVersion$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f47262a.getF43530b();
                AppVersionRepositoryImpl$getCachedAppVersion$2$1 appVersionRepositoryImpl$getCachedAppVersion$2$1 = new AppVersionRepositoryImpl$getCachedAppVersion$2$1(this, null);
                appVersionRepositoryImpl$getCachedAppVersion$1.d = 1;
                objF = BuildersKt.f(f43530b, appVersionRepositoryImpl$getCachedAppVersion$2$1, appVersionRepositoryImpl$getCachedAppVersion$1);
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
            failure = new Result(new Integer(((Number) objF).intValue()));
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
