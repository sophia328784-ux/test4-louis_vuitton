package com.vuitton.android.data.datasource.maintenance;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.MaintenanceApi;
import com.vuitton.android.data.exception.NetworkExceptionMapperKt;
import com.vuitton.foundation.exception.NetworkException;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/maintenance/MaintenanceRemoteDataSource;", "", "Lcom/vuitton/android/data/api/bff/publication/MaintenanceApi;", "maintenanceApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/MaintenanceApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MaintenanceRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaintenanceApi f44124a;

    @Inject
    public MaintenanceRemoteDataSource(MaintenanceApi maintenanceApi) {
        maintenanceApi.getClass();
        this.f44124a = maintenanceApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        MaintenanceRemoteDataSource$isAppInMaintenance$1 maintenanceRemoteDataSource$isAppInMaintenance$1;
        Object failure;
        if (continuationImpl instanceof MaintenanceRemoteDataSource$isAppInMaintenance$1) {
            maintenanceRemoteDataSource$isAppInMaintenance$1 = (MaintenanceRemoteDataSource$isAppInMaintenance$1) continuationImpl;
            int i2 = maintenanceRemoteDataSource$isAppInMaintenance$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                maintenanceRemoteDataSource$isAppInMaintenance$1.d = i2 - Integer.MIN_VALUE;
            } else {
                maintenanceRemoteDataSource$isAppInMaintenance$1 = new MaintenanceRemoteDataSource$isAppInMaintenance$1(this, continuationImpl);
            }
        } else {
            maintenanceRemoteDataSource$isAppInMaintenance$1 = new MaintenanceRemoteDataSource$isAppInMaintenance$1(this, continuationImpl);
        }
        Object obj = maintenanceRemoteDataSource$isAppInMaintenance$1.f44125b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = maintenanceRemoteDataSource$isAppInMaintenance$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                MaintenanceApi maintenanceApi = this.f44124a;
                maintenanceRemoteDataSource$isAppInMaintenance$1.d = 1;
                if (maintenanceApi.isAppInMaintenance(maintenanceRemoteDataSource$isAppInMaintenance$1) == coroutineSingletons) {
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
        Object obj2 = ((Result) failure).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            obj2 = Boolean.FALSE;
        }
        Object objA = NetworkExceptionMapperKt.a(obj2, null);
        Throwable thA2 = Result.a(objA);
        if (thA2 == null) {
            return objA;
        }
        try {
            if (thA2 instanceof NetworkException.InMaintenance) {
                return Boolean.TRUE;
            }
            throw thA2;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th2);
        }
    }
}
