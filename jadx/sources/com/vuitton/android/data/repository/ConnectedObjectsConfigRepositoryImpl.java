package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.config.ConnectedObjectsConfigLocalDataSource;
import com.vuitton.android.data.datasource.config.ConnectedObjectsConfigRemoteDataSource;
import com.vuitton.android.data.dto.connectivity.sync.ConnectedObjectsConfigDto;
import com.vuitton.android.data.dto.connectivity.sync.mapper.ConnectedObjectsConfigMapperKt;
import com.vuitton.android.domain.repository.ConnectedObjectsConfigRepository;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;", "Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;", "Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;", "connectedObjectsConfigRemoteDataSource", "Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;", "connectedObjectsConfigLocalDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConnectedObjectsConfigRepositoryImpl implements ConnectedObjectsConfigRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConnectedObjectsConfigRemoteDataSource f47613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectedObjectsConfigLocalDataSource f47614b;

    @Inject
    public ConnectedObjectsConfigRepositoryImpl(ConnectedObjectsConfigRemoteDataSource connectedObjectsConfigRemoteDataSource, ConnectedObjectsConfigLocalDataSource connectedObjectsConfigLocalDataSource) {
        connectedObjectsConfigRemoteDataSource.getClass();
        connectedObjectsConfigLocalDataSource.getClass();
        this.f47613a = connectedObjectsConfigRemoteDataSource;
        this.f47614b = connectedObjectsConfigLocalDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ConnectedObjectsConfigRepository
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1 connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1;
        if (continuationImpl instanceof ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1) {
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1 = (ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1) continuationImpl;
            int i2 = connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1.d = i2 - Integer.MIN_VALUE;
            } else {
                connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1 = new ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1(this, continuationImpl);
            }
        } else {
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1 = new ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1(this, continuationImpl);
        }
        Object obj = connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1.f47621b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1.d = 1;
            Object objB = this.f47614b.b(connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0091  */
    /* JADX WARN: Code duplicated, block: B:41:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:44:0x00be  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00cc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ConnectedObjectsConfigRepository
    public final Object b(long j2, String str, ContinuationImpl continuationImpl) throws Throwable {
        ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1 connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;
        Object objA;
        Object objA2;
        Long l;
        Throwable thA;
        ConnectedObjectsConfigDto connectedObjectsConfigDto;
        Object objD;
        ConnectedObjectsConfigDto connectedObjectsConfigDto2;
        if (continuationImpl instanceof ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1) {
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1 = (ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1) continuationImpl;
            int i2 = connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.g = i2 - Integer.MIN_VALUE;
            } else {
                connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1 = new ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1(this, continuationImpl);
            }
        } else {
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1 = new ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1(this, continuationImpl);
        }
        Object obj = connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47619e;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47618c = str;
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47617b = j2;
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.g = 1;
            objA = a(connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1);
            if (objA != obj2) {
            }
            return obj2;
        }
        if (i3 == 1) {
            j2 = connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47617b;
            str = connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47618c;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i3 == 2) {
                j2 = connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47617b;
                ResultKt.b(obj);
                objA2 = ((Result) obj).f71708b;
                Result.Companion companion = Result.INSTANCE;
                if (!(objA2 instanceof Result.Failure)) {
                    ConnectedObjectsConfigDto connectedObjectsConfigDto3 = (ConnectedObjectsConfigDto) objA2;
                    objA2 = new ConnectedObjectsConfigDto(connectedObjectsConfigDto3.f45596a, connectedObjectsConfigDto3.f45597b, connectedObjectsConfigDto3.f45598c, new Long(j2));
                }
                thA = Result.a(objA2);
                if (thA == null) {
                    return new Result.Failure(thA);
                }
                ResultKt.b(objA2);
                connectedObjectsConfigDto = (ConnectedObjectsConfigDto) objA2;
                connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47618c = null;
                connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.d = connectedObjectsConfigDto;
                connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47617b = j2;
                connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.g = 3;
                objD = d(connectedObjectsConfigDto, connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1);
                if (objD != obj2) {
                    connectedObjectsConfigDto2 = connectedObjectsConfigDto;
                }
                return obj2;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            connectedObjectsConfigDto2 = connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.d;
            ResultKt.b(obj);
            objD = ((Result) obj).f71708b;
        }
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objD instanceof Result.Failure)) {
            return objD;
        }
        return ConnectedObjectsConfigMapperKt.a(connectedObjectsConfigDto2);
        Result.Companion companion3 = Result.INSTANCE;
        ConnectedObjectsConfig connectedObjectsConfig = (ConnectedObjectsConfig) (objA instanceof Result.Failure ? null : objA);
        if (connectedObjectsConfig != null && (l = connectedObjectsConfig.d) != null && l.longValue() == j2) {
            return objA;
        }
        connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47618c = null;
        connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47617b = j2;
        connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.g = 2;
        objA2 = this.f47613a.a(str, connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1);
        if (objA2 != obj2) {
            Result.Companion companion4 = Result.INSTANCE;
            if (!(objA2 instanceof Result.Failure)) {
                ConnectedObjectsConfigDto connectedObjectsConfigDto4 = (ConnectedObjectsConfigDto) objA2;
                objA2 = new ConnectedObjectsConfigDto(connectedObjectsConfigDto4.f45596a, connectedObjectsConfigDto4.f45597b, connectedObjectsConfigDto4.f45598c, new Long(j2));
            }
            thA = Result.a(objA2);
            if (thA == null) {
                return new Result.Failure(thA);
            }
            ResultKt.b(objA2);
            connectedObjectsConfigDto = (ConnectedObjectsConfigDto) objA2;
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47618c = null;
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.d = connectedObjectsConfigDto;
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.f47617b = j2;
            connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1.g = 3;
            objD = d(connectedObjectsConfigDto, connectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1);
            if (objD != obj2) {
                connectedObjectsConfigDto2 = connectedObjectsConfigDto;
                Result.Companion companion5 = Result.INSTANCE;
                if (!(objD instanceof Result.Failure)) {
                    return objD;
                }
                return ConnectedObjectsConfigMapperKt.a(connectedObjectsConfigDto2);
            }
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ConnectedObjectsConfigRepository
    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1 connectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1;
        if (continuationImpl instanceof ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1) {
            connectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1 = (ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1) continuationImpl;
            int i2 = connectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                connectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                connectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1 = new ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1(this, continuationImpl);
            }
        } else {
            connectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1 = new ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1(this, continuationImpl);
        }
        Object obj = connectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1.f47615b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = connectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            connectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1.d = 1;
            Object objA = this.f47614b.a(connectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(ConnectedObjectsConfigDto connectedObjectsConfigDto, ContinuationImpl continuationImpl) throws Throwable {
        ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1 connectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1;
        if (continuationImpl instanceof ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1) {
            connectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1 = (ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1) continuationImpl;
            int i2 = connectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                connectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1.d = i2 - Integer.MIN_VALUE;
            } else {
                connectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1 = new ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1(this, continuationImpl);
            }
        } else {
            connectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1 = new ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1(this, continuationImpl);
        }
        Object obj = connectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1.f47623b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = connectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            connectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1.d = 1;
            Object objC = this.f47614b.c(connectedObjectsConfigDto, connectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1);
            return objC == coroutineSingletons ? coroutineSingletons : objC;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
