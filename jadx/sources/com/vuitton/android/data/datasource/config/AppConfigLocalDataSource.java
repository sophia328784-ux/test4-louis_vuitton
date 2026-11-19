package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;", "", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "schedulersProvider", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppConfigLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f43974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f43975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Json f43976c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$Companion;", "", "", "APP_CONFIG_KEY", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public AppConfigLocalDataSource(CoroutineDispatchers coroutineDispatchers, SharedPreferences sharedPreferences, Json json) {
        coroutineDispatchers.getClass();
        sharedPreferences.getClass();
        json.getClass();
        this.f43974a = coroutineDispatchers;
        this.f43975b = sharedPreferences;
        this.f43976c = json;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        AppConfigLocalDataSource$clearAppConfig$1 appConfigLocalDataSource$clearAppConfig$1;
        Object failure;
        if (continuationImpl instanceof AppConfigLocalDataSource$clearAppConfig$1) {
            appConfigLocalDataSource$clearAppConfig$1 = (AppConfigLocalDataSource$clearAppConfig$1) continuationImpl;
            int i2 = appConfigLocalDataSource$clearAppConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appConfigLocalDataSource$clearAppConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appConfigLocalDataSource$clearAppConfig$1 = new AppConfigLocalDataSource$clearAppConfig$1(this, continuationImpl);
            }
        } else {
            appConfigLocalDataSource$clearAppConfig$1 = new AppConfigLocalDataSource$clearAppConfig$1(this, continuationImpl);
        }
        Object obj = appConfigLocalDataSource$clearAppConfig$1.f43977b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appConfigLocalDataSource$clearAppConfig$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43974a.getF43530b();
                AppConfigLocalDataSource$clearAppConfig$2$1 appConfigLocalDataSource$clearAppConfig$2$1 = new AppConfigLocalDataSource$clearAppConfig$2$1(this, null);
                appConfigLocalDataSource$clearAppConfig$1.d = 1;
                if (BuildersKt.f(f43530b, appConfigLocalDataSource$clearAppConfig$2$1, appConfigLocalDataSource$clearAppConfig$1) == coroutineSingletons) {
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ContinuationImpl continuationImpl) {
        AppConfigLocalDataSource$getAppConfig$1 appConfigLocalDataSource$getAppConfig$1;
        Object failure;
        if (continuationImpl instanceof AppConfigLocalDataSource$getAppConfig$1) {
            appConfigLocalDataSource$getAppConfig$1 = (AppConfigLocalDataSource$getAppConfig$1) continuationImpl;
            int i2 = appConfigLocalDataSource$getAppConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appConfigLocalDataSource$getAppConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appConfigLocalDataSource$getAppConfig$1 = new AppConfigLocalDataSource$getAppConfig$1(this, continuationImpl);
            }
        } else {
            appConfigLocalDataSource$getAppConfig$1 = new AppConfigLocalDataSource$getAppConfig$1(this, continuationImpl);
        }
        Object objF = appConfigLocalDataSource$getAppConfig$1.f43980b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appConfigLocalDataSource$getAppConfig$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43974a.getF43530b();
                AppConfigLocalDataSource$getAppConfig$2$1 appConfigLocalDataSource$getAppConfig$2$1 = new AppConfigLocalDataSource$getAppConfig$2$1(this, null);
                appConfigLocalDataSource$getAppConfig$1.d = 1;
                objF = BuildersKt.f(f43530b, appConfigLocalDataSource$getAppConfig$2$1, appConfigLocalDataSource$getAppConfig$1);
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
            failure = new Result((AppConfig) objF);
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

    public final AppConfig c() {
        Object obj = ((Result) BuildersKt.e(EmptyCoroutineContext.f71840b, new AppConfigLocalDataSource$getAppConfigOrNull$1(this, null))).f71708b;
        return (AppConfig) (obj instanceof Result.Failure ? null : obj);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(AppConfig appConfig, ContinuationImpl continuationImpl) throws Throwable {
        AppConfigLocalDataSource$upsertAppConfig$1 appConfigLocalDataSource$upsertAppConfig$1;
        Object failure;
        if (continuationImpl instanceof AppConfigLocalDataSource$upsertAppConfig$1) {
            appConfigLocalDataSource$upsertAppConfig$1 = (AppConfigLocalDataSource$upsertAppConfig$1) continuationImpl;
            int i2 = appConfigLocalDataSource$upsertAppConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appConfigLocalDataSource$upsertAppConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appConfigLocalDataSource$upsertAppConfig$1 = new AppConfigLocalDataSource$upsertAppConfig$1(this, continuationImpl);
            }
        } else {
            appConfigLocalDataSource$upsertAppConfig$1 = new AppConfigLocalDataSource$upsertAppConfig$1(this, continuationImpl);
        }
        Object obj = appConfigLocalDataSource$upsertAppConfig$1.f43985b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appConfigLocalDataSource$upsertAppConfig$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43974a.getF43530b();
                AppConfigLocalDataSource$upsertAppConfig$2$1 appConfigLocalDataSource$upsertAppConfig$2$1 = new AppConfigLocalDataSource$upsertAppConfig$2$1(this, appConfig, null);
                appConfigLocalDataSource$upsertAppConfig$1.d = 1;
                if (BuildersKt.f(f43530b, appConfigLocalDataSource$upsertAppConfig$2$1, appConfigLocalDataSource$upsertAppConfig$1) == coroutineSingletons) {
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
