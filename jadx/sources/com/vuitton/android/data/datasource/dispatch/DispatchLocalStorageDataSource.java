package com.vuitton.android.data.datasource.dispatch;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagWithUnderscore;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0001\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;", "", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "dispatchers", "Lkotlinx/serialization/json/Json;", "json", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;Ldagger/Lazy;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DispatchLocalStorageDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f44077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f44078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f44079c;

    @Inject
    public DispatchLocalStorageDataSource(CoroutineDispatchers coroutineDispatchers, Json json, Lazy<SharedPreferences> lazy) {
        coroutineDispatchers.getClass();
        json.getClass();
        lazy.getClass();
        this.f44077a = coroutineDispatchers;
        this.f44078b = json;
        this.f44079c = lazy;
    }

    public static final Object a(DispatchLocalStorageDataSource dispatchLocalStorageDataSource, String str) throws Throwable {
        Object failure;
        String strF;
        String strF2;
        try {
            Result.Companion companion = Result.INSTANCE;
            Json json = dispatchLocalStorageDataSource.f44078b;
            if (str == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            json.getClass();
            JsonObject jsonObjectC = JsonElementKt.c((JsonElement) json.b(JsonElementSerializer.f75746a, str));
            JsonElement jsonElement = (JsonElement) jsonObjectC.get("localeKey");
            if (jsonElement == null || (strF = JsonElementKt.d(jsonElement).getD()) == null) {
                throw new IllegalStateException("Locale key is missing in the legacy dispatch");
            }
            LanguageTagWithUnderscore.f67508b.getClass();
            String strB = LanguageTagWithUnderscore.Companion.b(strF);
            JsonElement jsonElement2 = (JsonElement) jsonObjectC.get("countryKey");
            if (jsonElement2 == null || (strF2 = JsonElementKt.d(jsonElement2).getD()) == null) {
                throw new IllegalStateException("Country key is missing in the legacy dispatch");
            }
            RegionCode.f67513b.getClass();
            String strA = RegionCode.Companion.a(strF2);
            if (strA == null) {
                throw new IllegalArgumentException("Invalid ISO 3166-1 alpha-2 format: ".concat(strF2));
            }
            InAppDispatch.Id.f67485b.getClass();
            String strA2 = InAppDispatch.Id.Companion.a(strB, strA);
            InAppDispatch.Id id = strA2 != null ? new InAppDispatch.Id(strA2) : null;
            if (id == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            failure = new Result(new InAppDispatch.Id(id.f67486a));
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        DispatchLocalStorageDataSource$clearDispatchIdentifier$1 dispatchLocalStorageDataSource$clearDispatchIdentifier$1;
        Object failure;
        if (continuationImpl instanceof DispatchLocalStorageDataSource$clearDispatchIdentifier$1) {
            dispatchLocalStorageDataSource$clearDispatchIdentifier$1 = (DispatchLocalStorageDataSource$clearDispatchIdentifier$1) continuationImpl;
            int i2 = dispatchLocalStorageDataSource$clearDispatchIdentifier$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dispatchLocalStorageDataSource$clearDispatchIdentifier$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dispatchLocalStorageDataSource$clearDispatchIdentifier$1 = new DispatchLocalStorageDataSource$clearDispatchIdentifier$1(this, continuationImpl);
            }
        } else {
            dispatchLocalStorageDataSource$clearDispatchIdentifier$1 = new DispatchLocalStorageDataSource$clearDispatchIdentifier$1(this, continuationImpl);
        }
        Object obj = dispatchLocalStorageDataSource$clearDispatchIdentifier$1.f44080b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dispatchLocalStorageDataSource$clearDispatchIdentifier$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44077a.getF43530b();
                DispatchLocalStorageDataSource$clearDispatchIdentifier$2$1 dispatchLocalStorageDataSource$clearDispatchIdentifier$2$1 = new DispatchLocalStorageDataSource$clearDispatchIdentifier$2$1(this, null);
                dispatchLocalStorageDataSource$clearDispatchIdentifier$1.d = 1;
                if (BuildersKt.f(f43530b, dispatchLocalStorageDataSource$clearDispatchIdentifier$2$1, dispatchLocalStorageDataSource$clearDispatchIdentifier$1) == coroutineSingletons) {
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
    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        DispatchLocalStorageDataSource$clearLegacyDispatch$1 dispatchLocalStorageDataSource$clearLegacyDispatch$1;
        Object failure;
        if (continuationImpl instanceof DispatchLocalStorageDataSource$clearLegacyDispatch$1) {
            dispatchLocalStorageDataSource$clearLegacyDispatch$1 = (DispatchLocalStorageDataSource$clearLegacyDispatch$1) continuationImpl;
            int i2 = dispatchLocalStorageDataSource$clearLegacyDispatch$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dispatchLocalStorageDataSource$clearLegacyDispatch$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dispatchLocalStorageDataSource$clearLegacyDispatch$1 = new DispatchLocalStorageDataSource$clearLegacyDispatch$1(this, continuationImpl);
            }
        } else {
            dispatchLocalStorageDataSource$clearLegacyDispatch$1 = new DispatchLocalStorageDataSource$clearLegacyDispatch$1(this, continuationImpl);
        }
        Object obj = dispatchLocalStorageDataSource$clearLegacyDispatch$1.f44083b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dispatchLocalStorageDataSource$clearLegacyDispatch$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44077a.getF43530b();
                DispatchLocalStorageDataSource$clearLegacyDispatch$2$1 dispatchLocalStorageDataSource$clearLegacyDispatch$2$1 = new DispatchLocalStorageDataSource$clearLegacyDispatch$2$1(this, null);
                dispatchLocalStorageDataSource$clearLegacyDispatch$1.d = 1;
                if (BuildersKt.f(f43530b, dispatchLocalStorageDataSource$clearLegacyDispatch$2$1, dispatchLocalStorageDataSource$clearLegacyDispatch$1) == coroutineSingletons) {
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
    public final Object d(ContinuationImpl continuationImpl) throws Throwable {
        DispatchLocalStorageDataSource$getDispatchIdentifier$1 dispatchLocalStorageDataSource$getDispatchIdentifier$1;
        Object failure;
        if (continuationImpl instanceof DispatchLocalStorageDataSource$getDispatchIdentifier$1) {
            dispatchLocalStorageDataSource$getDispatchIdentifier$1 = (DispatchLocalStorageDataSource$getDispatchIdentifier$1) continuationImpl;
            int i2 = dispatchLocalStorageDataSource$getDispatchIdentifier$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dispatchLocalStorageDataSource$getDispatchIdentifier$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dispatchLocalStorageDataSource$getDispatchIdentifier$1 = new DispatchLocalStorageDataSource$getDispatchIdentifier$1(this, continuationImpl);
            }
        } else {
            dispatchLocalStorageDataSource$getDispatchIdentifier$1 = new DispatchLocalStorageDataSource$getDispatchIdentifier$1(this, continuationImpl);
        }
        Object objF = dispatchLocalStorageDataSource$getDispatchIdentifier$1.f44086b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dispatchLocalStorageDataSource$getDispatchIdentifier$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44077a.getF43530b();
                DispatchLocalStorageDataSource$getDispatchIdentifier$2$1 dispatchLocalStorageDataSource$getDispatchIdentifier$2$1 = new DispatchLocalStorageDataSource$getDispatchIdentifier$2$1(this, null);
                dispatchLocalStorageDataSource$getDispatchIdentifier$1.d = 1;
                objF = BuildersKt.f(f43530b, dispatchLocalStorageDataSource$getDispatchIdentifier$2$1, dispatchLocalStorageDataSource$getDispatchIdentifier$1);
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
            failure = new Result(new InAppDispatch.Id(((InAppDispatch.Id) objF).f67486a));
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
    public final Object e(ContinuationImpl continuationImpl) throws Throwable {
        DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1 dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1;
        if (continuationImpl instanceof DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1) {
            dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1 = (DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1) continuationImpl;
            int i2 = dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1 = new DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1(this, continuationImpl);
            }
        } else {
            dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1 = new DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1(this, continuationImpl);
        }
        Object objF = dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1.f44089b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f44077a.getF43530b();
            DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2 dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2 = new DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2(this, null);
            dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1.d = 1;
            objF = BuildersKt.f(f43530b, dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2, dispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(String str, ContinuationImpl continuationImpl) throws Throwable {
        DispatchLocalStorageDataSource$saveDispatchIdentifier$1 dispatchLocalStorageDataSource$saveDispatchIdentifier$1;
        Object failure;
        if (continuationImpl instanceof DispatchLocalStorageDataSource$saveDispatchIdentifier$1) {
            dispatchLocalStorageDataSource$saveDispatchIdentifier$1 = (DispatchLocalStorageDataSource$saveDispatchIdentifier$1) continuationImpl;
            int i2 = dispatchLocalStorageDataSource$saveDispatchIdentifier$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dispatchLocalStorageDataSource$saveDispatchIdentifier$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dispatchLocalStorageDataSource$saveDispatchIdentifier$1 = new DispatchLocalStorageDataSource$saveDispatchIdentifier$1(this, continuationImpl);
            }
        } else {
            dispatchLocalStorageDataSource$saveDispatchIdentifier$1 = new DispatchLocalStorageDataSource$saveDispatchIdentifier$1(this, continuationImpl);
        }
        Object obj = dispatchLocalStorageDataSource$saveDispatchIdentifier$1.f44093b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dispatchLocalStorageDataSource$saveDispatchIdentifier$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44077a.getF43530b();
                DispatchLocalStorageDataSource$saveDispatchIdentifier$2$1 dispatchLocalStorageDataSource$saveDispatchIdentifier$2$1 = new DispatchLocalStorageDataSource$saveDispatchIdentifier$2$1(this, str, null);
                dispatchLocalStorageDataSource$saveDispatchIdentifier$1.d = 1;
                if (BuildersKt.f(f43530b, dispatchLocalStorageDataSource$saveDispatchIdentifier$2$1, dispatchLocalStorageDataSource$saveDispatchIdentifier$1) == coroutineSingletons) {
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
