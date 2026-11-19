package com.vuitton.android.data.datasource.auth;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
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
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSourceImpl;", "Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "schedulersProvider", "<init>", "(Ldagger/Lazy;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SalesforceTokenDataSourceImpl implements SalesforceTokenDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f43796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatchers f43797b;

    @Inject
    public SalesforceTokenDataSourceImpl(Lazy<SharedPreferences> lazy, CoroutineDispatchers coroutineDispatchers) {
        lazy.getClass();
        coroutineDispatchers.getClass();
        this.f43796a = lazy;
        this.f43797b = coroutineDispatchers;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x007d  */
    /* JADX WARN: Code duplicated, block: B:38:0x008b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0093  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.data.datasource.auth.SalesforceTokenDataSource
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        SalesforceTokenDataSourceImpl$getToken$1 salesforceTokenDataSourceImpl$getToken$1;
        String str;
        String str2;
        Object objD;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        if (continuationImpl instanceof SalesforceTokenDataSourceImpl$getToken$1) {
            salesforceTokenDataSourceImpl$getToken$1 = (SalesforceTokenDataSourceImpl$getToken$1) continuationImpl;
            int i2 = salesforceTokenDataSourceImpl$getToken$1.f43814h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                salesforceTokenDataSourceImpl$getToken$1.f43814h = i2 - Integer.MIN_VALUE;
            } else {
                salesforceTokenDataSourceImpl$getToken$1 = new SalesforceTokenDataSourceImpl$getToken$1(this, continuationImpl);
            }
        } else {
            salesforceTokenDataSourceImpl$getToken$1 = new SalesforceTokenDataSourceImpl$getToken$1(this, continuationImpl);
        }
        Object objE = salesforceTokenDataSourceImpl$getToken$1.f43813f;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = salesforceTokenDataSourceImpl$getToken$1.f43814h;
        if (i3 == 0) {
            ResultKt.b(objE);
            salesforceTokenDataSourceImpl$getToken$1.f43814h = 1;
            objE = e(salesforceTokenDataSourceImpl$getToken$1);
            if (objE != obj) {
            }
            return obj;
        }
        if (i3 == 1) {
            ResultKt.b(objE);
        } else {
            if (i3 == 2) {
                str = salesforceTokenDataSourceImpl$getToken$1.f43810b;
                ResultKt.b(objE);
                str2 = (String) objE;
                if (str2 == null) {
                    str2 = "";
                }
                salesforceTokenDataSourceImpl$getToken$1.f43810b = str;
                salesforceTokenDataSourceImpl$getToken$1.f43811c = str2;
                salesforceTokenDataSourceImpl$getToken$1.f43814h = 3;
                objD = d(salesforceTokenDataSourceImpl$getToken$1);
                if (objD != obj) {
                    str3 = str2;
                    objE = objD;
                    String str8 = (String) objE;
                    if (str8 != null) {
                    }
                    salesforceTokenDataSourceImpl$getToken$1.f43810b = null;
                    salesforceTokenDataSourceImpl$getToken$1.f43811c = str3;
                    salesforceTokenDataSourceImpl$getToken$1.d = str4;
                    salesforceTokenDataSourceImpl$getToken$1.f43812e = str;
                    salesforceTokenDataSourceImpl$getToken$1.f43814h = 4;
                    objE = f(salesforceTokenDataSourceImpl$getToken$1);
                    if (objE != obj) {
                        str5 = str;
                        str6 = str4;
                        str7 = str3;
                    }
                }
                return obj;
            }
            if (i3 == 3) {
                String str9 = salesforceTokenDataSourceImpl$getToken$1.f43811c;
                String str10 = salesforceTokenDataSourceImpl$getToken$1.f43810b;
                ResultKt.b(objE);
                str3 = str9;
                str = str10;
                String str11 = (String) objE;
                str4 = str11 != null ? str11 : "";
                salesforceTokenDataSourceImpl$getToken$1.f43810b = null;
                salesforceTokenDataSourceImpl$getToken$1.f43811c = str3;
                salesforceTokenDataSourceImpl$getToken$1.d = str4;
                salesforceTokenDataSourceImpl$getToken$1.f43812e = str;
                salesforceTokenDataSourceImpl$getToken$1.f43814h = 4;
                objE = f(salesforceTokenDataSourceImpl$getToken$1);
                if (objE != obj) {
                    str5 = str;
                    str6 = str4;
                    str7 = str3;
                }
                return obj;
            }
            if (i3 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str5 = salesforceTokenDataSourceImpl$getToken$1.f43812e;
            str6 = salesforceTokenDataSourceImpl$getToken$1.d;
            str7 = salesforceTokenDataSourceImpl$getToken$1.f43811c;
            ResultKt.b(objE);
        }
        return new AuthToken.Atg(str7, str6, str5, (Instant) objE);
        str = (String) objE;
        if (str == null || str.length() == 0) {
            return null;
        }
        salesforceTokenDataSourceImpl$getToken$1.f43810b = str;
        salesforceTokenDataSourceImpl$getToken$1.f43814h = 2;
        objE = g(salesforceTokenDataSourceImpl$getToken$1);
        if (objE != obj) {
            str2 = (String) objE;
            if (str2 == null) {
                str2 = "";
            }
            salesforceTokenDataSourceImpl$getToken$1.f43810b = str;
            salesforceTokenDataSourceImpl$getToken$1.f43811c = str2;
            salesforceTokenDataSourceImpl$getToken$1.f43814h = 3;
            objD = d(salesforceTokenDataSourceImpl$getToken$1);
            if (objD != obj) {
                str3 = str2;
                objE = objD;
                String str12 = (String) objE;
                if (str12 != null) {
                }
                salesforceTokenDataSourceImpl$getToken$1.f43810b = null;
                salesforceTokenDataSourceImpl$getToken$1.f43811c = str3;
                salesforceTokenDataSourceImpl$getToken$1.d = str4;
                salesforceTokenDataSourceImpl$getToken$1.f43812e = str;
                salesforceTokenDataSourceImpl$getToken$1.f43814h = 4;
                objE = f(salesforceTokenDataSourceImpl$getToken$1);
                if (objE != obj) {
                    str5 = str;
                    str6 = str4;
                    str7 = str3;
                    return new AuthToken.Atg(str7, str6, str5, (Instant) objE);
                }
            }
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.data.datasource.auth.SalesforceTokenDataSource
    public final Object b(ContinuationImpl continuationImpl) {
        SalesforceTokenDataSourceImpl$clearToken$1 salesforceTokenDataSourceImpl$clearToken$1;
        Object failure;
        if (continuationImpl instanceof SalesforceTokenDataSourceImpl$clearToken$1) {
            salesforceTokenDataSourceImpl$clearToken$1 = (SalesforceTokenDataSourceImpl$clearToken$1) continuationImpl;
            int i2 = salesforceTokenDataSourceImpl$clearToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                salesforceTokenDataSourceImpl$clearToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                salesforceTokenDataSourceImpl$clearToken$1 = new SalesforceTokenDataSourceImpl$clearToken$1(this, continuationImpl);
            }
        } else {
            salesforceTokenDataSourceImpl$clearToken$1 = new SalesforceTokenDataSourceImpl$clearToken$1(this, continuationImpl);
        }
        Object obj = salesforceTokenDataSourceImpl$clearToken$1.f43798b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = salesforceTokenDataSourceImpl$clearToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43797b.getF43530b();
                SalesforceTokenDataSourceImpl$clearToken$2$1 salesforceTokenDataSourceImpl$clearToken$2$1 = new SalesforceTokenDataSourceImpl$clearToken$2$1(this, null);
                salesforceTokenDataSourceImpl$clearToken$1.d = 1;
                if (BuildersKt.f(f43530b, salesforceTokenDataSourceImpl$clearToken$2$1, salesforceTokenDataSourceImpl$clearToken$1) == coroutineSingletons) {
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
    @Override // com.vuitton.android.data.datasource.auth.SalesforceTokenDataSource
    public final Object c(AuthToken.Atg atg, ContinuationImpl continuationImpl) throws Throwable {
        SalesforceTokenDataSourceImpl$saveToken$1 salesforceTokenDataSourceImpl$saveToken$1;
        Object failure;
        if (continuationImpl instanceof SalesforceTokenDataSourceImpl$saveToken$1) {
            salesforceTokenDataSourceImpl$saveToken$1 = (SalesforceTokenDataSourceImpl$saveToken$1) continuationImpl;
            int i2 = salesforceTokenDataSourceImpl$saveToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                salesforceTokenDataSourceImpl$saveToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                salesforceTokenDataSourceImpl$saveToken$1 = new SalesforceTokenDataSourceImpl$saveToken$1(this, continuationImpl);
            }
        } else {
            salesforceTokenDataSourceImpl$saveToken$1 = new SalesforceTokenDataSourceImpl$saveToken$1(this, continuationImpl);
        }
        Object obj = salesforceTokenDataSourceImpl$saveToken$1.f43818b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = salesforceTokenDataSourceImpl$saveToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43797b.getF43530b();
                SalesforceTokenDataSourceImpl$saveToken$2$1 salesforceTokenDataSourceImpl$saveToken$2$1 = new SalesforceTokenDataSourceImpl$saveToken$2$1(this, atg, null);
                salesforceTokenDataSourceImpl$saveToken$1.d = 1;
                if (BuildersKt.f(f43530b, salesforceTokenDataSourceImpl$saveToken$2$1, salesforceTokenDataSourceImpl$saveToken$1) == coroutineSingletons) {
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
        SalesforceTokenDataSourceImpl$getAccessToken$1 salesforceTokenDataSourceImpl$getAccessToken$1;
        Object failure;
        if (continuationImpl instanceof SalesforceTokenDataSourceImpl$getAccessToken$1) {
            salesforceTokenDataSourceImpl$getAccessToken$1 = (SalesforceTokenDataSourceImpl$getAccessToken$1) continuationImpl;
            int i2 = salesforceTokenDataSourceImpl$getAccessToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                salesforceTokenDataSourceImpl$getAccessToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                salesforceTokenDataSourceImpl$getAccessToken$1 = new SalesforceTokenDataSourceImpl$getAccessToken$1(this, continuationImpl);
            }
        } else {
            salesforceTokenDataSourceImpl$getAccessToken$1 = new SalesforceTokenDataSourceImpl$getAccessToken$1(this, continuationImpl);
        }
        Object objF = salesforceTokenDataSourceImpl$getAccessToken$1.f43801b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = salesforceTokenDataSourceImpl$getAccessToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43797b.getF43530b();
                SalesforceTokenDataSourceImpl$getAccessToken$2$1 salesforceTokenDataSourceImpl$getAccessToken$2$1 = new SalesforceTokenDataSourceImpl$getAccessToken$2$1(this, null);
                salesforceTokenDataSourceImpl$getAccessToken$1.d = 1;
                objF = BuildersKt.f(f43530b, salesforceTokenDataSourceImpl$getAccessToken$2$1, salesforceTokenDataSourceImpl$getAccessToken$1);
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
            failure = new Result((String) objF);
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
        Object obj = ((Result) failure).f71708b;
        if (obj instanceof Result.Failure) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(ContinuationImpl continuationImpl) throws Throwable {
        SalesforceTokenDataSourceImpl$getRefreshToken$1 salesforceTokenDataSourceImpl$getRefreshToken$1;
        Object failure;
        if (continuationImpl instanceof SalesforceTokenDataSourceImpl$getRefreshToken$1) {
            salesforceTokenDataSourceImpl$getRefreshToken$1 = (SalesforceTokenDataSourceImpl$getRefreshToken$1) continuationImpl;
            int i2 = salesforceTokenDataSourceImpl$getRefreshToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                salesforceTokenDataSourceImpl$getRefreshToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                salesforceTokenDataSourceImpl$getRefreshToken$1 = new SalesforceTokenDataSourceImpl$getRefreshToken$1(this, continuationImpl);
            }
        } else {
            salesforceTokenDataSourceImpl$getRefreshToken$1 = new SalesforceTokenDataSourceImpl$getRefreshToken$1(this, continuationImpl);
        }
        Object objF = salesforceTokenDataSourceImpl$getRefreshToken$1.f43804b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = salesforceTokenDataSourceImpl$getRefreshToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43797b.getF43530b();
                SalesforceTokenDataSourceImpl$getRefreshToken$2$1 salesforceTokenDataSourceImpl$getRefreshToken$2$1 = new SalesforceTokenDataSourceImpl$getRefreshToken$2$1(this, null);
                salesforceTokenDataSourceImpl$getRefreshToken$1.d = 1;
                objF = BuildersKt.f(f43530b, salesforceTokenDataSourceImpl$getRefreshToken$2$1, salesforceTokenDataSourceImpl$getRefreshToken$1);
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
            failure = new Result((String) objF);
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
        Object obj = ((Result) failure).f71708b;
        if (obj instanceof Result.Failure) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(ContinuationImpl continuationImpl) throws Throwable {
        SalesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1 salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;
        Object failure;
        if (continuationImpl instanceof SalesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1) {
            salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1 = (SalesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1) continuationImpl;
            int i2 = salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1.d = i2 - Integer.MIN_VALUE;
            } else {
                salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1 = new SalesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1(this, continuationImpl);
            }
        } else {
            salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1 = new SalesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1(this, continuationImpl);
        }
        Object objF = salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1.f43807b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43797b.getF43530b();
                SalesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$2$1 salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$2$1 = new SalesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$2$1(this, null);
                salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1.d = 1;
                objF = BuildersKt.f(f43530b, salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$2$1, salesforceTokenDataSourceImpl$getSFIDAccessTokenExpiration$1);
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
            failure = new Result((Instant) objF);
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
        Object obj = ((Result) failure).f71708b;
        if (obj instanceof Result.Failure) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(ContinuationImpl continuationImpl) throws Throwable {
        SalesforceTokenDataSourceImpl$getUserId$1 salesforceTokenDataSourceImpl$getUserId$1;
        Object failure;
        if (continuationImpl instanceof SalesforceTokenDataSourceImpl$getUserId$1) {
            salesforceTokenDataSourceImpl$getUserId$1 = (SalesforceTokenDataSourceImpl$getUserId$1) continuationImpl;
            int i2 = salesforceTokenDataSourceImpl$getUserId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                salesforceTokenDataSourceImpl$getUserId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                salesforceTokenDataSourceImpl$getUserId$1 = new SalesforceTokenDataSourceImpl$getUserId$1(this, continuationImpl);
            }
        } else {
            salesforceTokenDataSourceImpl$getUserId$1 = new SalesforceTokenDataSourceImpl$getUserId$1(this, continuationImpl);
        }
        Object objF = salesforceTokenDataSourceImpl$getUserId$1.f43815b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = salesforceTokenDataSourceImpl$getUserId$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43797b.getF43530b();
                SalesforceTokenDataSourceImpl$getUserId$2$1 salesforceTokenDataSourceImpl$getUserId$2$1 = new SalesforceTokenDataSourceImpl$getUserId$2$1(this, null);
                salesforceTokenDataSourceImpl$getUserId$1.d = 1;
                objF = BuildersKt.f(f43530b, salesforceTokenDataSourceImpl$getUserId$2$1, salesforceTokenDataSourceImpl$getUserId$1);
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
            failure = new Result((String) objF);
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
        Object obj = ((Result) failure).f71708b;
        if (obj instanceof Result.Failure) {
            return null;
        }
        return obj;
    }
}
