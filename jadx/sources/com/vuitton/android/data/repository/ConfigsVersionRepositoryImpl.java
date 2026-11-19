package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.config.ConfigsVersionLocalDataSource;
import com.vuitton.android.data.datasource.config.ConfigsVersionRemoteDataSource;
import com.vuitton.android.data.dto.config.version.ConfigsVersionDto;
import com.vuitton.android.domain.repository.ConfigsVersionRepository;
import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;", "Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;", "Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;", "configsVersionRemoteDataSource", "Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;", "configsVersionLocalDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConfigsVersionRepositoryImpl implements ConfigsVersionRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigsVersionRemoteDataSource f47600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigsVersionLocalDataSource f47601b;

    @Inject
    public ConfigsVersionRepositoryImpl(ConfigsVersionRemoteDataSource configsVersionRemoteDataSource, ConfigsVersionLocalDataSource configsVersionLocalDataSource) {
        configsVersionRemoteDataSource.getClass();
        configsVersionLocalDataSource.getClass();
        this.f47600a = configsVersionRemoteDataSource;
        this.f47601b = configsVersionLocalDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ConfigsVersionRepository
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1 configsVersionRepositoryImpl$getConfigsVersionFromCache$1;
        if (continuationImpl instanceof ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1) {
            configsVersionRepositoryImpl$getConfigsVersionFromCache$1 = (ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1) continuationImpl;
            int i2 = configsVersionRepositoryImpl$getConfigsVersionFromCache$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                configsVersionRepositoryImpl$getConfigsVersionFromCache$1.d = i2 - Integer.MIN_VALUE;
            } else {
                configsVersionRepositoryImpl$getConfigsVersionFromCache$1 = new ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1(this, continuationImpl);
            }
        } else {
            configsVersionRepositoryImpl$getConfigsVersionFromCache$1 = new ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1(this, continuationImpl);
        }
        Object obj = configsVersionRepositoryImpl$getConfigsVersionFromCache$1.f47607b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = configsVersionRepositoryImpl$getConfigsVersionFromCache$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            configsVersionRepositoryImpl$getConfigsVersionFromCache$1.d = 1;
            Object objB = this.f47601b.b(configsVersionRepositoryImpl$getConfigsVersionFromCache$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006a  */
    /* JADX WARN: Code duplicated, block: B:29:0x006d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ConfigsVersionRepository
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        ConfigsVersionRepositoryImpl$getConfigsVersion$1 configsVersionRepositoryImpl$getConfigsVersion$1;
        Object objD;
        Object obj;
        ConfigsVersion configsVersion;
        if (continuationImpl instanceof ConfigsVersionRepositoryImpl$getConfigsVersion$1) {
            configsVersionRepositoryImpl$getConfigsVersion$1 = (ConfigsVersionRepositoryImpl$getConfigsVersion$1) continuationImpl;
            int i2 = configsVersionRepositoryImpl$getConfigsVersion$1.f47606e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                configsVersionRepositoryImpl$getConfigsVersion$1.f47606e = i2 - Integer.MIN_VALUE;
            } else {
                configsVersionRepositoryImpl$getConfigsVersion$1 = new ConfigsVersionRepositoryImpl$getConfigsVersion$1(this, continuationImpl);
            }
        } else {
            configsVersionRepositoryImpl$getConfigsVersion$1 = new ConfigsVersionRepositoryImpl$getConfigsVersion$1(this, continuationImpl);
        }
        Object obj2 = configsVersionRepositoryImpl$getConfigsVersion$1.f47605c;
        Object obj3 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = configsVersionRepositoryImpl$getConfigsVersion$1.f47606e;
        if (i3 == 0) {
            ResultKt.b(obj2);
            configsVersionRepositoryImpl$getConfigsVersion$1.f47606e = 1;
            objD = d(configsVersionRepositoryImpl$getConfigsVersion$1);
            if (objD != obj3) {
            }
            return obj3;
        }
        if (i3 == 1) {
            ResultKt.b(obj2);
            objD = ((Result) obj2).f71708b;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            configsVersion = configsVersionRepositoryImpl$getConfigsVersion$1.f47604b;
            ResultKt.b(obj2);
            obj = ((Result) obj2).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj instanceof Result.Failure)) {
            return obj;
        }
        return configsVersion;
        Throwable thA = Result.a(objD);
        if (thA != null) {
            return new Result.Failure(thA);
        }
        ResultKt.b(objD);
        ConfigsVersion configsVersion2 = (ConfigsVersion) objD;
        configsVersionRepositoryImpl$getConfigsVersion$1.f47604b = configsVersion2;
        configsVersionRepositoryImpl$getConfigsVersion$1.f47606e = 2;
        Object objE = e(configsVersion2, configsVersionRepositoryImpl$getConfigsVersion$1);
        if (objE != obj3) {
            obj = objE;
            configsVersion = configsVersion2;
            Result.Companion companion2 = Result.INSTANCE;
            if (!(obj instanceof Result.Failure)) {
                return obj;
            }
            return configsVersion;
        }
        return obj3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ConfigsVersionRepository
    public final Object c(ContinuationImpl continuationImpl) {
        ConfigsVersionRepositoryImpl$clearConfigsVersion$1 configsVersionRepositoryImpl$clearConfigsVersion$1;
        if (continuationImpl instanceof ConfigsVersionRepositoryImpl$clearConfigsVersion$1) {
            configsVersionRepositoryImpl$clearConfigsVersion$1 = (ConfigsVersionRepositoryImpl$clearConfigsVersion$1) continuationImpl;
            int i2 = configsVersionRepositoryImpl$clearConfigsVersion$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                configsVersionRepositoryImpl$clearConfigsVersion$1.d = i2 - Integer.MIN_VALUE;
            } else {
                configsVersionRepositoryImpl$clearConfigsVersion$1 = new ConfigsVersionRepositoryImpl$clearConfigsVersion$1(this, continuationImpl);
            }
        } else {
            configsVersionRepositoryImpl$clearConfigsVersion$1 = new ConfigsVersionRepositoryImpl$clearConfigsVersion$1(this, continuationImpl);
        }
        Object obj = configsVersionRepositoryImpl$clearConfigsVersion$1.f47602b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = configsVersionRepositoryImpl$clearConfigsVersion$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            configsVersionRepositoryImpl$clearConfigsVersion$1.d = 1;
            Object objA = this.f47601b.a(configsVersionRepositoryImpl$clearConfigsVersion$1);
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
    public final Object d(ContinuationImpl continuationImpl) {
        ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1 configsVersionRepositoryImpl$getConfigsVersionFromNetwork$1;
        Object objA;
        Integer intOrNull;
        if (continuationImpl instanceof ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1) {
            configsVersionRepositoryImpl$getConfigsVersionFromNetwork$1 = (ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1) continuationImpl;
            int i2 = configsVersionRepositoryImpl$getConfigsVersionFromNetwork$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                configsVersionRepositoryImpl$getConfigsVersionFromNetwork$1.d = i2 - Integer.MIN_VALUE;
            } else {
                configsVersionRepositoryImpl$getConfigsVersionFromNetwork$1 = new ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1(this, continuationImpl);
            }
        } else {
            configsVersionRepositoryImpl$getConfigsVersionFromNetwork$1 = new ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1(this, continuationImpl);
        }
        Object obj = configsVersionRepositoryImpl$getConfigsVersionFromNetwork$1.f47609b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = configsVersionRepositoryImpl$getConfigsVersionFromNetwork$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            configsVersionRepositoryImpl$getConfigsVersionFromNetwork$1.d = 1;
            objA = this.f47600a.a(configsVersionRepositoryImpl$getConfigsVersionFromNetwork$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            return objA;
        }
        try {
            ConfigsVersionDto configsVersionDto = (ConfigsVersionDto) objA;
            configsVersionDto.getClass();
            long j2 = configsVersionDto.f45552a;
            long j3 = configsVersionDto.f45553b;
            String str = configsVersionDto.f45554c;
            Integer num = configsVersionDto.d;
            int iIntValue = 0;
            int iIntValue2 = num != null ? num.intValue() : 0;
            String str2 = configsVersionDto.f45555e;
            String str3 = configsVersionDto.f45556f;
            if (str3 != null && (intOrNull = StringsKt.toIntOrNull(str3)) != null) {
                iIntValue = intOrNull.intValue();
            }
            return new ConfigsVersion(j2, j3, str, iIntValue2, str2, iIntValue, configsVersionDto.g, configsVersionDto.f45557h);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(ConfigsVersion configsVersion, ContinuationImpl continuationImpl) throws Throwable {
        ConfigsVersionRepositoryImpl$persistConfigsVersion$1 configsVersionRepositoryImpl$persistConfigsVersion$1;
        if (continuationImpl instanceof ConfigsVersionRepositoryImpl$persistConfigsVersion$1) {
            configsVersionRepositoryImpl$persistConfigsVersion$1 = (ConfigsVersionRepositoryImpl$persistConfigsVersion$1) continuationImpl;
            int i2 = configsVersionRepositoryImpl$persistConfigsVersion$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                configsVersionRepositoryImpl$persistConfigsVersion$1.d = i2 - Integer.MIN_VALUE;
            } else {
                configsVersionRepositoryImpl$persistConfigsVersion$1 = new ConfigsVersionRepositoryImpl$persistConfigsVersion$1(this, continuationImpl);
            }
        } else {
            configsVersionRepositoryImpl$persistConfigsVersion$1 = new ConfigsVersionRepositoryImpl$persistConfigsVersion$1(this, continuationImpl);
        }
        Object obj = configsVersionRepositoryImpl$persistConfigsVersion$1.f47611b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = configsVersionRepositoryImpl$persistConfigsVersion$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            configsVersionRepositoryImpl$persistConfigsVersion$1.d = 1;
            Object objC = this.f47601b.c(configsVersion, configsVersionRepositoryImpl$persistConfigsVersion$1);
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
