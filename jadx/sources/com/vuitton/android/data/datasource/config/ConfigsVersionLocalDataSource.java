package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
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
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0001\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;", "", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "schedulersProvider", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConfigsVersionLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f44019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f44020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Json f44021c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource$Companion;", "", "", "CONFIGS_VERSION_KEY", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public ConfigsVersionLocalDataSource(CoroutineDispatchers coroutineDispatchers, Lazy<SharedPreferences> lazy, Json json) {
        coroutineDispatchers.getClass();
        lazy.getClass();
        json.getClass();
        this.f44019a = coroutineDispatchers;
        this.f44020b = lazy;
        this.f44021c = json;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        ConfigsVersionLocalDataSource$clearConfigsVersion$1 configsVersionLocalDataSource$clearConfigsVersion$1;
        Object failure;
        if (continuationImpl instanceof ConfigsVersionLocalDataSource$clearConfigsVersion$1) {
            configsVersionLocalDataSource$clearConfigsVersion$1 = (ConfigsVersionLocalDataSource$clearConfigsVersion$1) continuationImpl;
            int i2 = configsVersionLocalDataSource$clearConfigsVersion$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                configsVersionLocalDataSource$clearConfigsVersion$1.d = i2 - Integer.MIN_VALUE;
            } else {
                configsVersionLocalDataSource$clearConfigsVersion$1 = new ConfigsVersionLocalDataSource$clearConfigsVersion$1(this, continuationImpl);
            }
        } else {
            configsVersionLocalDataSource$clearConfigsVersion$1 = new ConfigsVersionLocalDataSource$clearConfigsVersion$1(this, continuationImpl);
        }
        Object obj = configsVersionLocalDataSource$clearConfigsVersion$1.f44022b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = configsVersionLocalDataSource$clearConfigsVersion$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44019a.getF43530b();
                ConfigsVersionLocalDataSource$clearConfigsVersion$2$1 configsVersionLocalDataSource$clearConfigsVersion$2$1 = new ConfigsVersionLocalDataSource$clearConfigsVersion$2$1(this, null);
                configsVersionLocalDataSource$clearConfigsVersion$1.d = 1;
                if (BuildersKt.f(f43530b, configsVersionLocalDataSource$clearConfigsVersion$2$1, configsVersionLocalDataSource$clearConfigsVersion$1) == coroutineSingletons) {
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
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        ConfigsVersionLocalDataSource$getConfigsVersion$1 configsVersionLocalDataSource$getConfigsVersion$1;
        Object failure;
        if (continuationImpl instanceof ConfigsVersionLocalDataSource$getConfigsVersion$1) {
            configsVersionLocalDataSource$getConfigsVersion$1 = (ConfigsVersionLocalDataSource$getConfigsVersion$1) continuationImpl;
            int i2 = configsVersionLocalDataSource$getConfigsVersion$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                configsVersionLocalDataSource$getConfigsVersion$1.d = i2 - Integer.MIN_VALUE;
            } else {
                configsVersionLocalDataSource$getConfigsVersion$1 = new ConfigsVersionLocalDataSource$getConfigsVersion$1(this, continuationImpl);
            }
        } else {
            configsVersionLocalDataSource$getConfigsVersion$1 = new ConfigsVersionLocalDataSource$getConfigsVersion$1(this, continuationImpl);
        }
        Object objF = configsVersionLocalDataSource$getConfigsVersion$1.f44025b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = configsVersionLocalDataSource$getConfigsVersion$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44019a.getF43530b();
                ConfigsVersionLocalDataSource$getConfigsVersion$2$1 configsVersionLocalDataSource$getConfigsVersion$2$1 = new ConfigsVersionLocalDataSource$getConfigsVersion$2$1(this, null);
                configsVersionLocalDataSource$getConfigsVersion$1.d = 1;
                objF = BuildersKt.f(f43530b, configsVersionLocalDataSource$getConfigsVersion$2$1, configsVersionLocalDataSource$getConfigsVersion$1);
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
            failure = new Result((ConfigsVersion) objF);
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
    public final Object c(ConfigsVersion configsVersion, ContinuationImpl continuationImpl) throws Throwable {
        ConfigsVersionLocalDataSource$upsertConfigsVersion$1 configsVersionLocalDataSource$upsertConfigsVersion$1;
        Object failure;
        if (continuationImpl instanceof ConfigsVersionLocalDataSource$upsertConfigsVersion$1) {
            configsVersionLocalDataSource$upsertConfigsVersion$1 = (ConfigsVersionLocalDataSource$upsertConfigsVersion$1) continuationImpl;
            int i2 = configsVersionLocalDataSource$upsertConfigsVersion$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                configsVersionLocalDataSource$upsertConfigsVersion$1.d = i2 - Integer.MIN_VALUE;
            } else {
                configsVersionLocalDataSource$upsertConfigsVersion$1 = new ConfigsVersionLocalDataSource$upsertConfigsVersion$1(this, continuationImpl);
            }
        } else {
            configsVersionLocalDataSource$upsertConfigsVersion$1 = new ConfigsVersionLocalDataSource$upsertConfigsVersion$1(this, continuationImpl);
        }
        Object obj = configsVersionLocalDataSource$upsertConfigsVersion$1.f44028b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = configsVersionLocalDataSource$upsertConfigsVersion$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44019a.getF43530b();
                ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1 configsVersionLocalDataSource$upsertConfigsVersion$2$1 = new ConfigsVersionLocalDataSource$upsertConfigsVersion$2$1(this, configsVersion, null);
                configsVersionLocalDataSource$upsertConfigsVersion$1.d = 1;
                if (BuildersKt.f(f43530b, configsVersionLocalDataSource$upsertConfigsVersion$2$1, configsVersionLocalDataSource$upsertConfigsVersion$1) == coroutineSingletons) {
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
