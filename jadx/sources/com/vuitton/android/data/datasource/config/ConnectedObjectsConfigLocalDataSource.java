package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.dto.connectivity.sync.ConnectedObjectsConfigDto;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
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
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;", "", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "schedulersProvider", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConnectedObjectsConfigLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f44035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f44036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Json f44037c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$Companion;", "", "", "CONNECTED_OBJECTS_CONFIG_KEY", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public ConnectedObjectsConfigLocalDataSource(CoroutineDispatchers coroutineDispatchers, SharedPreferences sharedPreferences, Json json) {
        coroutineDispatchers.getClass();
        sharedPreferences.getClass();
        json.getClass();
        this.f44035a = coroutineDispatchers;
        this.f44036b = sharedPreferences;
        this.f44037c = json;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1 connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1;
        Object failure;
        if (continuationImpl instanceof ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1) {
            connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1 = (ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1) continuationImpl;
            int i2 = connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1 = new ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1(this, continuationImpl);
            }
        } else {
            connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1 = new ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1(this, continuationImpl);
        }
        Object obj = connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1.f44038b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44035a.getF43530b();
                ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$2$1 connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$2$1 = new ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$2$1(this, null);
                connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1.d = 1;
                if (BuildersKt.f(f43530b, connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$2$1, connectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1) == coroutineSingletons) {
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
        ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1 connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1;
        Object failure;
        if (continuationImpl instanceof ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1) {
            connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1 = (ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1) continuationImpl;
            int i2 = connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1 = new ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1(this, continuationImpl);
            }
        } else {
            connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1 = new ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1(this, continuationImpl);
        }
        Object objF = connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1.f44041b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44035a.getF43530b();
                ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1 connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1 = new ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1(this, null);
                connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1.d = 1;
                objF = BuildersKt.f(f43530b, connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1, connectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1);
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
            failure = new Result((ConnectedObjectsConfig) objF);
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
    public final Object c(ConnectedObjectsConfigDto connectedObjectsConfigDto, ContinuationImpl continuationImpl) throws Throwable {
        ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1 connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1;
        if (continuationImpl instanceof ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1) {
            connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1 = (ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1) continuationImpl;
            int i2 = connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1 = new ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1(this, continuationImpl);
            }
        } else {
            connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1 = new ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1(this, continuationImpl);
        }
        Object objF = connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1.f44044b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f44035a.getF43530b();
            ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2 connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2 = new ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2(this, connectedObjectsConfigDto, null);
            connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1.d = 1;
            objF = BuildersKt.f(f43530b, connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2, connectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1);
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
        return ((Result) objF).f71708b;
    }
}
