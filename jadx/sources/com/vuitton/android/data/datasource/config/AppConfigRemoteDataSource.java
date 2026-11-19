package com.vuitton.android.data.datasource.config;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.ConfigurationApi;
import com.vuitton.android.data.dto.config.AppConfigDto;
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;", "", "Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;", "configurationApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppConfigRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigurationApi f43989a;

    @Inject
    public AppConfigRemoteDataSource(ConfigurationApi configurationApi) {
        configurationApi.getClass();
        this.f43989a = configurationApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(long j2, ContinuationImpl continuationImpl) {
        AppConfigRemoteDataSource$getAppConfig$1 appConfigRemoteDataSource$getAppConfig$1;
        Object failure;
        if (continuationImpl instanceof AppConfigRemoteDataSource$getAppConfig$1) {
            appConfigRemoteDataSource$getAppConfig$1 = (AppConfigRemoteDataSource$getAppConfig$1) continuationImpl;
            int i2 = appConfigRemoteDataSource$getAppConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appConfigRemoteDataSource$getAppConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appConfigRemoteDataSource$getAppConfig$1 = new AppConfigRemoteDataSource$getAppConfig$1(this, continuationImpl);
            }
        } else {
            appConfigRemoteDataSource$getAppConfig$1 = new AppConfigRemoteDataSource$getAppConfig$1(this, continuationImpl);
        }
        Object appConfig = appConfigRemoteDataSource$getAppConfig$1.f43990b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appConfigRemoteDataSource$getAppConfig$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(appConfig);
                Result.Companion companion = Result.INSTANCE;
                ConfigurationApi configurationApi = this.f43989a;
                appConfigRemoteDataSource$getAppConfig$1.d = 1;
                appConfig = configurationApi.getAppConfig(j2, appConfigRemoteDataSource$getAppConfig$1);
                if (appConfig == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(appConfig);
            }
            failure = new Result((AppConfigDto) appConfig);
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
