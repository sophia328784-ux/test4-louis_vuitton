package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.catalog.StoreModeCatalogApi;
import com.vuitton.android.data.api.bff.publication.StoreModeApi;
import com.vuitton.android.data.api.bff.user.StoreModeWelcomeApi;
import com.vuitton.android.data.dto.storemode.StoreModeAffiliationDto;
import com.vuitton.android.data.dto.storemode.StoreModeInfoDto;
import com.vuitton.android.data.dto.storemode.mapper.StoreModeMapperKt;
import com.vuitton.android.domain.repository.StoreModeRepository;
import com.vuitton.foundation.model.domain.model.storemode.StoreModeAffiliation;
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
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/repository/StoreModeRepositoryImpl;", "Lcom/vuitton/android/domain/repository/StoreModeRepository;", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lcom/vuitton/android/data/api/bff/user/StoreModeWelcomeApi;", "storeModeWelcomeApi", "Lcom/vuitton/android/data/api/bff/publication/StoreModeApi;", "storeModeApi", "Lcom/vuitton/android/data/api/bff/catalog/StoreModeCatalogApi;", "storeModeCatalogApi", "<init>", "(Ldagger/Lazy;Lcom/vuitton/android/data/api/bff/user/StoreModeWelcomeApi;Lcom/vuitton/android/data/api/bff/publication/StoreModeApi;Lcom/vuitton/android/data/api/bff/catalog/StoreModeCatalogApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreModeRepositoryImpl implements StoreModeRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f48036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StoreModeWelcomeApi f48037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StoreModeApi f48038c;
    public final StoreModeCatalogApi d;

    @Inject
    public StoreModeRepositoryImpl(Lazy<SharedPreferences> lazy, StoreModeWelcomeApi storeModeWelcomeApi, StoreModeApi storeModeApi, StoreModeCatalogApi storeModeCatalogApi) {
        lazy.getClass();
        storeModeWelcomeApi.getClass();
        storeModeApi.getClass();
        storeModeCatalogApi.getClass();
        this.f48036a = lazy;
        this.f48037b = storeModeWelcomeApi;
        this.f48038c = storeModeApi;
        this.d = storeModeCatalogApi;
    }

    @Override // com.vuitton.android.domain.repository.StoreModeRepository
    public final Object a() throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object obj = this.f48036a.get();
            obj.getClass();
            SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
            editorEdit.putBoolean("STORE_MODE_ON_GOING", false);
            editorEdit.remove("STORE_MODE_START_TIME");
            editorEdit.remove("STORE_MODE_RMS_CODE");
            editorEdit.commit();
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
    @Override // com.vuitton.android.domain.repository.StoreModeRepository
    public final Object b(String str, ContinuationImpl continuationImpl) {
        StoreModeRepositoryImpl$getStoreModeAffiliation$1 storeModeRepositoryImpl$getStoreModeAffiliation$1;
        Object failure;
        if (continuationImpl instanceof StoreModeRepositoryImpl$getStoreModeAffiliation$1) {
            storeModeRepositoryImpl$getStoreModeAffiliation$1 = (StoreModeRepositoryImpl$getStoreModeAffiliation$1) continuationImpl;
            int i2 = storeModeRepositoryImpl$getStoreModeAffiliation$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                storeModeRepositoryImpl$getStoreModeAffiliation$1.d = i2 - Integer.MIN_VALUE;
            } else {
                storeModeRepositoryImpl$getStoreModeAffiliation$1 = new StoreModeRepositoryImpl$getStoreModeAffiliation$1(this, continuationImpl);
            }
        } else {
            storeModeRepositoryImpl$getStoreModeAffiliation$1 = new StoreModeRepositoryImpl$getStoreModeAffiliation$1(this, continuationImpl);
        }
        Object storeModeAffiliation = storeModeRepositoryImpl$getStoreModeAffiliation$1.f48041b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = storeModeRepositoryImpl$getStoreModeAffiliation$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(storeModeAffiliation);
                Result.Companion companion = Result.INSTANCE;
                StoreModeWelcomeApi storeModeWelcomeApi = this.f48037b;
                storeModeRepositoryImpl$getStoreModeAffiliation$1.d = 1;
                storeModeAffiliation = storeModeWelcomeApi.getStoreModeAffiliation(str, storeModeRepositoryImpl$getStoreModeAffiliation$1);
                if (storeModeAffiliation == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(storeModeAffiliation);
            }
            StoreModeAffiliationDto storeModeAffiliationDto = (StoreModeAffiliationDto) storeModeAffiliation;
            storeModeAffiliationDto.getClass();
            failure = new Result(new StoreModeAffiliation(storeModeAffiliationDto.f46852a));
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

    @Override // com.vuitton.android.domain.repository.StoreModeRepository
    public final Boolean c() throws Throwable {
        Lazy lazy = this.f48036a;
        long j2 = ((SharedPreferences) lazy.get()).getLong("STORE_MODE_START_TIME", 0L);
        if (!((SharedPreferences) lazy.get()).getBoolean("STORE_MODE_ON_GOING", false)) {
            Result.Companion companion = Result.INSTANCE;
            return Boolean.FALSE;
        }
        if (System.currentTimeMillis() - j2 < 5400000) {
            Result.Companion companion2 = Result.INSTANCE;
            return Boolean.TRUE;
        }
        a();
        Result.Companion companion3 = Result.INSTANCE;
        return Boolean.FALSE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.StoreModeRepository
    public final Object d(String str, String str2, ContinuationImpl continuationImpl) {
        StoreModeRepositoryImpl$checkStoreModeValidity$1 storeModeRepositoryImpl$checkStoreModeValidity$1;
        Object failure;
        if (continuationImpl instanceof StoreModeRepositoryImpl$checkStoreModeValidity$1) {
            storeModeRepositoryImpl$checkStoreModeValidity$1 = (StoreModeRepositoryImpl$checkStoreModeValidity$1) continuationImpl;
            int i2 = storeModeRepositoryImpl$checkStoreModeValidity$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                storeModeRepositoryImpl$checkStoreModeValidity$1.d = i2 - Integer.MIN_VALUE;
            } else {
                storeModeRepositoryImpl$checkStoreModeValidity$1 = new StoreModeRepositoryImpl$checkStoreModeValidity$1(this, continuationImpl);
            }
        } else {
            storeModeRepositoryImpl$checkStoreModeValidity$1 = new StoreModeRepositoryImpl$checkStoreModeValidity$1(this, continuationImpl);
        }
        Object objCheckStoreModeValidity = storeModeRepositoryImpl$checkStoreModeValidity$1.f48039b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = storeModeRepositoryImpl$checkStoreModeValidity$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objCheckStoreModeValidity);
                Result.Companion companion = Result.INSTANCE;
                StoreModeCatalogApi storeModeCatalogApi = this.d;
                storeModeRepositoryImpl$checkStoreModeValidity$1.d = 1;
                objCheckStoreModeValidity = storeModeCatalogApi.checkStoreModeValidity(str, str2, storeModeRepositoryImpl$checkStoreModeValidity$1);
                if (objCheckStoreModeValidity == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objCheckStoreModeValidity);
            }
            if (!((Response) objCheckStoreModeValidity).f79449a.r) {
                throw new UnknownError();
            }
            failure = new Result(Unit.f71739a);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    @Override // com.vuitton.android.domain.repository.StoreModeRepository
    public final Object e() throws Throwable {
        try {
            Result.Companion companion = Result.INSTANCE;
            String string = ((SharedPreferences) this.f48036a.get()).getString("STORE_MODE_RMS_CODE", null);
            return string != null ? string : new Result.Failure(new Exception("No RMS Code founded"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Object failure = new Result.Failure(th);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.StoreModeRepository
    public final Object f(String str, ContinuationImpl continuationImpl) {
        StoreModeRepositoryImpl$getStoreModeInfo$1 storeModeRepositoryImpl$getStoreModeInfo$1;
        Object failure;
        if (continuationImpl instanceof StoreModeRepositoryImpl$getStoreModeInfo$1) {
            storeModeRepositoryImpl$getStoreModeInfo$1 = (StoreModeRepositoryImpl$getStoreModeInfo$1) continuationImpl;
            int i2 = storeModeRepositoryImpl$getStoreModeInfo$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                storeModeRepositoryImpl$getStoreModeInfo$1.d = i2 - Integer.MIN_VALUE;
            } else {
                storeModeRepositoryImpl$getStoreModeInfo$1 = new StoreModeRepositoryImpl$getStoreModeInfo$1(this, continuationImpl);
            }
        } else {
            storeModeRepositoryImpl$getStoreModeInfo$1 = new StoreModeRepositoryImpl$getStoreModeInfo$1(this, continuationImpl);
        }
        Object storeModeInfo = storeModeRepositoryImpl$getStoreModeInfo$1.f48043b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = storeModeRepositoryImpl$getStoreModeInfo$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(storeModeInfo);
                Result.Companion companion = Result.INSTANCE;
                StoreModeApi storeModeApi = this.f48038c;
                storeModeRepositoryImpl$getStoreModeInfo$1.d = 1;
                storeModeInfo = storeModeApi.getStoreModeInfo(str, storeModeRepositoryImpl$getStoreModeInfo$1);
                if (storeModeInfo == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(storeModeInfo);
            }
            failure = new Result(StoreModeMapperKt.a((StoreModeInfoDto) storeModeInfo));
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

    @Override // com.vuitton.android.domain.repository.StoreModeRepository
    public final Object g(long j2, String str) throws Throwable {
        Object failure;
        str.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Object obj = this.f48036a.get();
            obj.getClass();
            SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
            editorEdit.putBoolean("STORE_MODE_ON_GOING", true);
            editorEdit.putLong("STORE_MODE_START_TIME", j2);
            editorEdit.putString("STORE_MODE_RMS_CODE", str);
            editorEdit.apply();
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
