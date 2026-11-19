package com.vuitton.android.data.datasource.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.ConfigurationApi;
import com.vuitton.android.data.dto.connectivity.sync.ConnectedObjectsConfigDto;
import com.vuitton.android.data.exception.NetworkExceptionMapperKt;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;", "", "Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;", "configurationApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConnectedObjectsConfigRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationApi f44048a;

    @Inject
    public ConnectedObjectsConfigRemoteDataSource(ConfigurationApi configurationApi) {
        configurationApi.getClass();
        this.f44048a = configurationApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        ConnectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1 connectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1;
        Object failure;
        if (continuationImpl instanceof ConnectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1) {
            connectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1 = (ConnectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1) continuationImpl;
            int i2 = connectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                connectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                connectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1 = new ConnectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1(this, continuationImpl);
            }
        } else {
            connectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1 = new ConnectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1(this, continuationImpl);
        }
        Object connectedObjectsConfig = connectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1.f44049b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = connectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(connectedObjectsConfig);
                Result.Companion companion = Result.INSTANCE;
                ConfigurationApi configurationApi = this.f44048a;
                connectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1.d = 1;
                connectedObjectsConfig = configurationApi.getConnectedObjectsConfig(str, connectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1);
                if (connectedObjectsConfig == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(connectedObjectsConfig);
            }
            failure = new Result((ConnectedObjectsConfigDto) connectedObjectsConfig);
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
        return NetworkExceptionMapperKt.a(((Result) failure).f71708b, null);
    }
}
