package com.vuitton.android.data.datasource.auth;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import com.vuitton.foundation.model.domain.model.authentication.SotToken;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSourceImpl;", "Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "schedulersProvider", "<init>", "(Ldagger/Lazy;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TwistTokenDataSourceImpl implements TwistTokenDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f43822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatchers f43823b;

    @Inject
    public TwistTokenDataSourceImpl(Lazy<SharedPreferences> lazy, CoroutineDispatchers coroutineDispatchers) {
        lazy.getClass();
        coroutineDispatchers.getClass();
        this.f43822a = lazy;
        this.f43823b = coroutineDispatchers;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0090  */
    /* JADX WARN: Code duplicated, block: B:25:0x0092  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a0 A[PHI: r1 r4
      0x00a0: PHI (r1v8 java.lang.Object) = (r1v7 java.lang.Object), (r1v1 java.lang.Object) binds: [B:27:0x009c, B:17:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x00a0: PHI (r4v4 java.lang.String) = (r4v2 java.lang.String), (r4v8 java.lang.String) binds: [B:27:0x009c, B:17:0x0074] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:31:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00dc A[PHI: r1 r4 r7 r8
      0x00dc: PHI (r1v18 java.lang.Object) = (r1v17 java.lang.Object), (r1v1 java.lang.Object) binds: [B:45:0x00d8, B:15:0x005f] A[DONT_GENERATE, DONT_INLINE]
      0x00dc: PHI (r4v12 java.lang.String) = (r4v9 java.lang.String), (r4v14 java.lang.String) binds: [B:45:0x00d8, B:15:0x005f] A[DONT_GENERATE, DONT_INLINE]
      0x00dc: PHI (r7v8 java.lang.String) = (r7v5 java.lang.String), (r7v9 java.lang.String) binds: [B:45:0x00d8, B:15:0x005f] A[DONT_GENERATE, DONT_INLINE]
      0x00dc: PHI (r8v3 java.lang.String) = (r8v1 java.lang.String), (r8v5 java.lang.String) binds: [B:45:0x00d8, B:15:0x005f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:50:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:58:0x0117  */
    /* JADX WARN: Code duplicated, block: B:61:0x0128  */
    /* JADX WARN: Code duplicated, block: B:63:0x012e  */
    /* JADX WARN: Code duplicated, block: B:72:0x014e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.vuitton.android.data.datasource.auth.TwistTokenDataSource
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        TwistTokenDataSourceImpl$getToken$1 twistTokenDataSourceImpl$getToken$1;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        Object objJ;
        String str9;
        String str10;
        String str11;
        Object objE;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        if (continuationImpl instanceof TwistTokenDataSourceImpl$getToken$1) {
            twistTokenDataSourceImpl$getToken$1 = (TwistTokenDataSourceImpl$getToken$1) continuationImpl;
            int i2 = twistTokenDataSourceImpl$getToken$1.f43855k;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistTokenDataSourceImpl$getToken$1.f43855k = i2 - Integer.MIN_VALUE;
            } else {
                twistTokenDataSourceImpl$getToken$1 = new TwistTokenDataSourceImpl$getToken$1(this, continuationImpl);
            }
        } else {
            twistTokenDataSourceImpl$getToken$1 = new TwistTokenDataSourceImpl$getToken$1(this, continuationImpl);
        }
        Object objD = twistTokenDataSourceImpl$getToken$1.f43853i;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (twistTokenDataSourceImpl$getToken$1.f43855k) {
            case 0:
                ResultKt.b(objD);
                twistTokenDataSourceImpl$getToken$1.f43855k = 1;
                objD = d(twistTokenDataSourceImpl$getToken$1);
                if (objD != obj) {
                    str = (String) objD;
                    if (str == null) {
                        str2 = "";
                    } else {
                        str2 = str;
                    }
                    twistTokenDataSourceImpl$getToken$1.f43848b = str2;
                    twistTokenDataSourceImpl$getToken$1.f43855k = 2;
                    objD = h(twistTokenDataSourceImpl$getToken$1);
                    if (objD != obj) {
                        str3 = (String) objD;
                        if (str3 == null) {
                            str3 = "";
                        }
                        if (StringsKt.w(str2) && !StringsKt.w(str3)) {
                            twistTokenDataSourceImpl$getToken$1.f43848b = str2;
                            twistTokenDataSourceImpl$getToken$1.f43849c = str3;
                            twistTokenDataSourceImpl$getToken$1.f43855k = 3;
                            Object objG = g(twistTokenDataSourceImpl$getToken$1);
                            if (objG != obj) {
                                str5 = str3;
                                objD = objG;
                                str6 = (String) objD;
                                if (str6 == null) {
                                    str7 = "";
                                } else {
                                    str7 = str6;
                                }
                                twistTokenDataSourceImpl$getToken$1.f43848b = null;
                                twistTokenDataSourceImpl$getToken$1.f43849c = str5;
                                twistTokenDataSourceImpl$getToken$1.d = str7;
                                twistTokenDataSourceImpl$getToken$1.f43850e = str2;
                                twistTokenDataSourceImpl$getToken$1.f43855k = 4;
                                objD = f(twistTokenDataSourceImpl$getToken$1);
                                if (objD != obj) {
                                    String str17 = (String) objD;
                                    str8 = str17 != null ? str17 : "";
                                    twistTokenDataSourceImpl$getToken$1.f43848b = null;
                                    twistTokenDataSourceImpl$getToken$1.f43849c = null;
                                    twistTokenDataSourceImpl$getToken$1.d = str7;
                                    twistTokenDataSourceImpl$getToken$1.f43850e = str2;
                                    twistTokenDataSourceImpl$getToken$1.f43851f = str8;
                                    twistTokenDataSourceImpl$getToken$1.g = str5;
                                    twistTokenDataSourceImpl$getToken$1.f43855k = 5;
                                    objJ = j(twistTokenDataSourceImpl$getToken$1);
                                    if (objJ != obj) {
                                        String str18 = str5;
                                        str9 = str2;
                                        str10 = str18;
                                        str11 = (String) objJ;
                                        twistTokenDataSourceImpl$getToken$1.f43848b = null;
                                        twistTokenDataSourceImpl$getToken$1.f43849c = null;
                                        twistTokenDataSourceImpl$getToken$1.d = str7;
                                        twistTokenDataSourceImpl$getToken$1.f43850e = str9;
                                        twistTokenDataSourceImpl$getToken$1.f43851f = str8;
                                        twistTokenDataSourceImpl$getToken$1.g = str10;
                                        twistTokenDataSourceImpl$getToken$1.f43852h = str11;
                                        twistTokenDataSourceImpl$getToken$1.f43855k = 6;
                                        objE = e(twistTokenDataSourceImpl$getToken$1);
                                        if (objE != obj) {
                                            str12 = str11;
                                            str13 = str10;
                                            str14 = str8;
                                            str15 = str7;
                                            str16 = str9;
                                            objD = objE;
                                            return new AuthToken.Twist.User(str15, str16, str14, str13, str12, (Instant) objD, null);
                                        }
                                    }
                                }
                            }
                        } else {
                            if (StringsKt.w(str2) || StringsKt.w(str3)) {
                                return null;
                            }
                            twistTokenDataSourceImpl$getToken$1.f43848b = null;
                            twistTokenDataSourceImpl$getToken$1.f43849c = null;
                            twistTokenDataSourceImpl$getToken$1.d = str3;
                            twistTokenDataSourceImpl$getToken$1.f43855k = 7;
                            Object objI = i(twistTokenDataSourceImpl$getToken$1);
                            if (objI != obj) {
                                String str19 = str3;
                                objD = objI;
                                str4 = str19;
                                String str20 = (String) objD;
                                return new AuthToken.Twist.Guest(str4, str20 != null ? str20 : "");
                            }
                        }
                    }
                }
                return obj;
            case 1:
                ResultKt.b(objD);
                str = (String) objD;
                if (str == null) {
                    str2 = "";
                } else {
                    str2 = str;
                }
                twistTokenDataSourceImpl$getToken$1.f43848b = str2;
                twistTokenDataSourceImpl$getToken$1.f43855k = 2;
                objD = h(twistTokenDataSourceImpl$getToken$1);
                if (objD != obj) {
                    str3 = (String) objD;
                    if (str3 == null) {
                        str3 = "";
                    }
                    if (StringsKt.w(str2)) {
                        if (StringsKt.w(str2)) {
                            break;
                        }
                        return null;
                    }
                    if (StringsKt.w(str2)) {
                        break;
                    }
                    return null;
                }
                return obj;
            case 2:
                str2 = twistTokenDataSourceImpl$getToken$1.f43848b;
                ResultKt.b(objD);
                str3 = (String) objD;
                if (str3 == null) {
                    str3 = "";
                }
                if (StringsKt.w(str2)) {
                    if (StringsKt.w(str2)) {
                        break;
                    }
                    return null;
                }
                if (StringsKt.w(str2)) {
                    break;
                }
                return null;
                return obj;
            case 3:
                String str21 = twistTokenDataSourceImpl$getToken$1.f43849c;
                String str22 = twistTokenDataSourceImpl$getToken$1.f43848b;
                ResultKt.b(objD);
                str5 = str21;
                str2 = str22;
                str6 = (String) objD;
                if (str6 == null) {
                    str7 = "";
                } else {
                    str7 = str6;
                }
                twistTokenDataSourceImpl$getToken$1.f43848b = null;
                twistTokenDataSourceImpl$getToken$1.f43849c = str5;
                twistTokenDataSourceImpl$getToken$1.d = str7;
                twistTokenDataSourceImpl$getToken$1.f43850e = str2;
                twistTokenDataSourceImpl$getToken$1.f43855k = 4;
                objD = f(twistTokenDataSourceImpl$getToken$1);
                if (objD != obj) {
                    String str110 = (String) objD;
                    if (str110 != null) {
                    }
                    twistTokenDataSourceImpl$getToken$1.f43848b = null;
                    twistTokenDataSourceImpl$getToken$1.f43849c = null;
                    twistTokenDataSourceImpl$getToken$1.d = str7;
                    twistTokenDataSourceImpl$getToken$1.f43850e = str2;
                    twistTokenDataSourceImpl$getToken$1.f43851f = str8;
                    twistTokenDataSourceImpl$getToken$1.g = str5;
                    twistTokenDataSourceImpl$getToken$1.f43855k = 5;
                    objJ = j(twistTokenDataSourceImpl$getToken$1);
                    if (objJ != obj) {
                        String str111 = str5;
                        str9 = str2;
                        str10 = str111;
                        str11 = (String) objJ;
                        twistTokenDataSourceImpl$getToken$1.f43848b = null;
                        twistTokenDataSourceImpl$getToken$1.f43849c = null;
                        twistTokenDataSourceImpl$getToken$1.d = str7;
                        twistTokenDataSourceImpl$getToken$1.f43850e = str9;
                        twistTokenDataSourceImpl$getToken$1.f43851f = str8;
                        twistTokenDataSourceImpl$getToken$1.g = str10;
                        twistTokenDataSourceImpl$getToken$1.f43852h = str11;
                        twistTokenDataSourceImpl$getToken$1.f43855k = 6;
                        objE = e(twistTokenDataSourceImpl$getToken$1);
                        if (objE != obj) {
                            str12 = str11;
                            str13 = str10;
                            str14 = str8;
                            str15 = str7;
                            str16 = str9;
                            objD = objE;
                            return new AuthToken.Twist.User(str15, str16, str14, str13, str12, (Instant) objD, null);
                        }
                    }
                }
                return obj;
            case 4:
                str2 = twistTokenDataSourceImpl$getToken$1.f43850e;
                str7 = twistTokenDataSourceImpl$getToken$1.d;
                str5 = twistTokenDataSourceImpl$getToken$1.f43849c;
                ResultKt.b(objD);
                String str112 = (String) objD;
                if (str112 != null) {
                }
                twistTokenDataSourceImpl$getToken$1.f43848b = null;
                twistTokenDataSourceImpl$getToken$1.f43849c = null;
                twistTokenDataSourceImpl$getToken$1.d = str7;
                twistTokenDataSourceImpl$getToken$1.f43850e = str2;
                twistTokenDataSourceImpl$getToken$1.f43851f = str8;
                twistTokenDataSourceImpl$getToken$1.g = str5;
                twistTokenDataSourceImpl$getToken$1.f43855k = 5;
                objJ = j(twistTokenDataSourceImpl$getToken$1);
                if (objJ != obj) {
                    String str113 = str5;
                    str9 = str2;
                    str10 = str113;
                    str11 = (String) objJ;
                    twistTokenDataSourceImpl$getToken$1.f43848b = null;
                    twistTokenDataSourceImpl$getToken$1.f43849c = null;
                    twistTokenDataSourceImpl$getToken$1.d = str7;
                    twistTokenDataSourceImpl$getToken$1.f43850e = str9;
                    twistTokenDataSourceImpl$getToken$1.f43851f = str8;
                    twistTokenDataSourceImpl$getToken$1.g = str10;
                    twistTokenDataSourceImpl$getToken$1.f43852h = str11;
                    twistTokenDataSourceImpl$getToken$1.f43855k = 6;
                    objE = e(twistTokenDataSourceImpl$getToken$1);
                    if (objE != obj) {
                        str12 = str11;
                        str13 = str10;
                        str14 = str8;
                        str15 = str7;
                        str16 = str9;
                        objD = objE;
                        return new AuthToken.Twist.User(str15, str16, str14, str13, str12, (Instant) objD, null);
                    }
                }
                return obj;
            case 5:
                str10 = twistTokenDataSourceImpl$getToken$1.g;
                str8 = twistTokenDataSourceImpl$getToken$1.f43851f;
                String str23 = twistTokenDataSourceImpl$getToken$1.f43850e;
                String str24 = twistTokenDataSourceImpl$getToken$1.d;
                ResultKt.b(objD);
                objJ = ((SotToken) objD).f66608a;
                str9 = str23;
                str7 = str24;
                str11 = (String) objJ;
                twistTokenDataSourceImpl$getToken$1.f43848b = null;
                twistTokenDataSourceImpl$getToken$1.f43849c = null;
                twistTokenDataSourceImpl$getToken$1.d = str7;
                twistTokenDataSourceImpl$getToken$1.f43850e = str9;
                twistTokenDataSourceImpl$getToken$1.f43851f = str8;
                twistTokenDataSourceImpl$getToken$1.g = str10;
                twistTokenDataSourceImpl$getToken$1.f43852h = str11;
                twistTokenDataSourceImpl$getToken$1.f43855k = 6;
                objE = e(twistTokenDataSourceImpl$getToken$1);
                if (objE != obj) {
                    str12 = str11;
                    str13 = str10;
                    str14 = str8;
                    str15 = str7;
                    str16 = str9;
                    objD = objE;
                    return new AuthToken.Twist.User(str15, str16, str14, str13, str12, (Instant) objD, null);
                }
                return obj;
            case 6:
                String str25 = twistTokenDataSourceImpl$getToken$1.f43852h;
                String str26 = twistTokenDataSourceImpl$getToken$1.g;
                String str27 = twistTokenDataSourceImpl$getToken$1.f43851f;
                String str28 = twistTokenDataSourceImpl$getToken$1.f43850e;
                String str29 = twistTokenDataSourceImpl$getToken$1.d;
                ResultKt.b(objD);
                str12 = str25;
                str15 = str29;
                str13 = str26;
                str14 = str27;
                str16 = str28;
                return new AuthToken.Twist.User(str15, str16, str14, str13, str12, (Instant) objD, null);
            case 7:
                str4 = twistTokenDataSourceImpl$getToken$1.d;
                ResultKt.b(objD);
                String str210 = (String) objD;
                return new AuthToken.Twist.Guest(str4, str210 != null ? str210 : "");
            default:
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.data.datasource.auth.TwistTokenDataSource
    public final Object b(ContinuationImpl continuationImpl) {
        TwistTokenDataSourceImpl$clearToken$1 twistTokenDataSourceImpl$clearToken$1;
        Object failure;
        if (continuationImpl instanceof TwistTokenDataSourceImpl$clearToken$1) {
            twistTokenDataSourceImpl$clearToken$1 = (TwistTokenDataSourceImpl$clearToken$1) continuationImpl;
            int i2 = twistTokenDataSourceImpl$clearToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistTokenDataSourceImpl$clearToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistTokenDataSourceImpl$clearToken$1 = new TwistTokenDataSourceImpl$clearToken$1(this, continuationImpl);
            }
        } else {
            twistTokenDataSourceImpl$clearToken$1 = new TwistTokenDataSourceImpl$clearToken$1(this, continuationImpl);
        }
        Object obj = twistTokenDataSourceImpl$clearToken$1.f43824b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistTokenDataSourceImpl$clearToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43823b.getF43530b();
                TwistTokenDataSourceImpl$clearToken$2$1 twistTokenDataSourceImpl$clearToken$2$1 = new TwistTokenDataSourceImpl$clearToken$2$1(this, null);
                twistTokenDataSourceImpl$clearToken$1.d = 1;
                if (BuildersKt.f(f43530b, twistTokenDataSourceImpl$clearToken$2$1, twistTokenDataSourceImpl$clearToken$1) == coroutineSingletons) {
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
    @Override // com.vuitton.android.data.datasource.auth.TwistTokenDataSource
    public final Object c(AuthToken.Twist twist, ContinuationImpl continuationImpl) throws Throwable {
        TwistTokenDataSourceImpl$saveToken$1 twistTokenDataSourceImpl$saveToken$1;
        Object failure;
        if (continuationImpl instanceof TwistTokenDataSourceImpl$saveToken$1) {
            twistTokenDataSourceImpl$saveToken$1 = (TwistTokenDataSourceImpl$saveToken$1) continuationImpl;
            int i2 = twistTokenDataSourceImpl$saveToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistTokenDataSourceImpl$saveToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistTokenDataSourceImpl$saveToken$1 = new TwistTokenDataSourceImpl$saveToken$1(this, continuationImpl);
            }
        } else {
            twistTokenDataSourceImpl$saveToken$1 = new TwistTokenDataSourceImpl$saveToken$1(this, continuationImpl);
        }
        Object obj = twistTokenDataSourceImpl$saveToken$1.f43856b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistTokenDataSourceImpl$saveToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43823b.getF43530b();
                TwistTokenDataSourceImpl$saveToken$2$1 twistTokenDataSourceImpl$saveToken$2$1 = new TwistTokenDataSourceImpl$saveToken$2$1(this, twist, null);
                twistTokenDataSourceImpl$saveToken$1.d = 1;
                if (BuildersKt.f(f43530b, twistTokenDataSourceImpl$saveToken$2$1, twistTokenDataSourceImpl$saveToken$1) == coroutineSingletons) {
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
        TwistTokenDataSourceImpl$getSFIDAccessToken$1 twistTokenDataSourceImpl$getSFIDAccessToken$1;
        Object failure;
        if (continuationImpl instanceof TwistTokenDataSourceImpl$getSFIDAccessToken$1) {
            twistTokenDataSourceImpl$getSFIDAccessToken$1 = (TwistTokenDataSourceImpl$getSFIDAccessToken$1) continuationImpl;
            int i2 = twistTokenDataSourceImpl$getSFIDAccessToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistTokenDataSourceImpl$getSFIDAccessToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistTokenDataSourceImpl$getSFIDAccessToken$1 = new TwistTokenDataSourceImpl$getSFIDAccessToken$1(this, continuationImpl);
            }
        } else {
            twistTokenDataSourceImpl$getSFIDAccessToken$1 = new TwistTokenDataSourceImpl$getSFIDAccessToken$1(this, continuationImpl);
        }
        Object objF = twistTokenDataSourceImpl$getSFIDAccessToken$1.f43827b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistTokenDataSourceImpl$getSFIDAccessToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43823b.getF43530b();
                TwistTokenDataSourceImpl$getSFIDAccessToken$2$1 twistTokenDataSourceImpl$getSFIDAccessToken$2$1 = new TwistTokenDataSourceImpl$getSFIDAccessToken$2$1(this, null);
                twistTokenDataSourceImpl$getSFIDAccessToken$1.d = 1;
                objF = BuildersKt.f(f43530b, twistTokenDataSourceImpl$getSFIDAccessToken$2$1, twistTokenDataSourceImpl$getSFIDAccessToken$1);
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
        TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1 twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1;
        Object failure;
        if (continuationImpl instanceof TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1) {
            twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1 = (TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1) continuationImpl;
            int i2 = twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1 = new TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1(this, continuationImpl);
            }
        } else {
            twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1 = new TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1(this, continuationImpl);
        }
        Object objF = twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1.f43830b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43823b.getF43530b();
                TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$2$1 twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$2$1 = new TwistTokenDataSourceImpl$getSFIDAccessTokenExpiration$2$1(this, null);
                twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1.d = 1;
                objF = BuildersKt.f(f43530b, twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$2$1, twistTokenDataSourceImpl$getSFIDAccessTokenExpiration$1);
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
    public final Object f(ContinuationImpl continuationImpl) throws Throwable {
        TwistTokenDataSourceImpl$getSFIDRefreshToken$1 twistTokenDataSourceImpl$getSFIDRefreshToken$1;
        Object failure;
        if (continuationImpl instanceof TwistTokenDataSourceImpl$getSFIDRefreshToken$1) {
            twistTokenDataSourceImpl$getSFIDRefreshToken$1 = (TwistTokenDataSourceImpl$getSFIDRefreshToken$1) continuationImpl;
            int i2 = twistTokenDataSourceImpl$getSFIDRefreshToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistTokenDataSourceImpl$getSFIDRefreshToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistTokenDataSourceImpl$getSFIDRefreshToken$1 = new TwistTokenDataSourceImpl$getSFIDRefreshToken$1(this, continuationImpl);
            }
        } else {
            twistTokenDataSourceImpl$getSFIDRefreshToken$1 = new TwistTokenDataSourceImpl$getSFIDRefreshToken$1(this, continuationImpl);
        }
        Object objF = twistTokenDataSourceImpl$getSFIDRefreshToken$1.f43833b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistTokenDataSourceImpl$getSFIDRefreshToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43823b.getF43530b();
                TwistTokenDataSourceImpl$getSFIDRefreshToken$2$1 twistTokenDataSourceImpl$getSFIDRefreshToken$2$1 = new TwistTokenDataSourceImpl$getSFIDRefreshToken$2$1(this, null);
                twistTokenDataSourceImpl$getSFIDRefreshToken$1.d = 1;
                objF = BuildersKt.f(f43530b, twistTokenDataSourceImpl$getSFIDRefreshToken$2$1, twistTokenDataSourceImpl$getSFIDRefreshToken$1);
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
    public final Object g(ContinuationImpl continuationImpl) throws Throwable {
        TwistTokenDataSourceImpl$getSFIDUserId$1 twistTokenDataSourceImpl$getSFIDUserId$1;
        Object failure;
        if (continuationImpl instanceof TwistTokenDataSourceImpl$getSFIDUserId$1) {
            twistTokenDataSourceImpl$getSFIDUserId$1 = (TwistTokenDataSourceImpl$getSFIDUserId$1) continuationImpl;
            int i2 = twistTokenDataSourceImpl$getSFIDUserId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistTokenDataSourceImpl$getSFIDUserId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistTokenDataSourceImpl$getSFIDUserId$1 = new TwistTokenDataSourceImpl$getSFIDUserId$1(this, continuationImpl);
            }
        } else {
            twistTokenDataSourceImpl$getSFIDUserId$1 = new TwistTokenDataSourceImpl$getSFIDUserId$1(this, continuationImpl);
        }
        Object objF = twistTokenDataSourceImpl$getSFIDUserId$1.f43836b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistTokenDataSourceImpl$getSFIDUserId$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43823b.getF43530b();
                TwistTokenDataSourceImpl$getSFIDUserId$2$1 twistTokenDataSourceImpl$getSFIDUserId$2$1 = new TwistTokenDataSourceImpl$getSFIDUserId$2$1(this, null);
                twistTokenDataSourceImpl$getSFIDUserId$1.d = 1;
                objF = BuildersKt.f(f43530b, twistTokenDataSourceImpl$getSFIDUserId$2$1, twistTokenDataSourceImpl$getSFIDUserId$1);
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
    public final Object h(ContinuationImpl continuationImpl) throws Throwable {
        TwistTokenDataSourceImpl$getSLASAccessToken$1 twistTokenDataSourceImpl$getSLASAccessToken$1;
        Object failure;
        if (continuationImpl instanceof TwistTokenDataSourceImpl$getSLASAccessToken$1) {
            twistTokenDataSourceImpl$getSLASAccessToken$1 = (TwistTokenDataSourceImpl$getSLASAccessToken$1) continuationImpl;
            int i2 = twistTokenDataSourceImpl$getSLASAccessToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistTokenDataSourceImpl$getSLASAccessToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistTokenDataSourceImpl$getSLASAccessToken$1 = new TwistTokenDataSourceImpl$getSLASAccessToken$1(this, continuationImpl);
            }
        } else {
            twistTokenDataSourceImpl$getSLASAccessToken$1 = new TwistTokenDataSourceImpl$getSLASAccessToken$1(this, continuationImpl);
        }
        Object objF = twistTokenDataSourceImpl$getSLASAccessToken$1.f43839b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistTokenDataSourceImpl$getSLASAccessToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43823b.getF43530b();
                TwistTokenDataSourceImpl$getSLASAccessToken$2$1 twistTokenDataSourceImpl$getSLASAccessToken$2$1 = new TwistTokenDataSourceImpl$getSLASAccessToken$2$1(this, null);
                twistTokenDataSourceImpl$getSLASAccessToken$1.d = 1;
                objF = BuildersKt.f(f43530b, twistTokenDataSourceImpl$getSLASAccessToken$2$1, twistTokenDataSourceImpl$getSLASAccessToken$1);
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
    public final Object i(ContinuationImpl continuationImpl) throws Throwable {
        TwistTokenDataSourceImpl$getSLASUserId$1 twistTokenDataSourceImpl$getSLASUserId$1;
        Object failure;
        if (continuationImpl instanceof TwistTokenDataSourceImpl$getSLASUserId$1) {
            twistTokenDataSourceImpl$getSLASUserId$1 = (TwistTokenDataSourceImpl$getSLASUserId$1) continuationImpl;
            int i2 = twistTokenDataSourceImpl$getSLASUserId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistTokenDataSourceImpl$getSLASUserId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistTokenDataSourceImpl$getSLASUserId$1 = new TwistTokenDataSourceImpl$getSLASUserId$1(this, continuationImpl);
            }
        } else {
            twistTokenDataSourceImpl$getSLASUserId$1 = new TwistTokenDataSourceImpl$getSLASUserId$1(this, continuationImpl);
        }
        Object objF = twistTokenDataSourceImpl$getSLASUserId$1.f43842b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistTokenDataSourceImpl$getSLASUserId$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43823b.getF43530b();
                TwistTokenDataSourceImpl$getSLASUserId$2$1 twistTokenDataSourceImpl$getSLASUserId$2$1 = new TwistTokenDataSourceImpl$getSLASUserId$2$1(this, null);
                twistTokenDataSourceImpl$getSLASUserId$1.d = 1;
                objF = BuildersKt.f(f43530b, twistTokenDataSourceImpl$getSLASUserId$2$1, twistTokenDataSourceImpl$getSLASUserId$1);
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
    public final Object j(ContinuationImpl continuationImpl) throws Throwable {
        TwistTokenDataSourceImpl$getSotToken$1 twistTokenDataSourceImpl$getSotToken$1;
        Object failure;
        if (continuationImpl instanceof TwistTokenDataSourceImpl$getSotToken$1) {
            twistTokenDataSourceImpl$getSotToken$1 = (TwistTokenDataSourceImpl$getSotToken$1) continuationImpl;
            int i2 = twistTokenDataSourceImpl$getSotToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistTokenDataSourceImpl$getSotToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistTokenDataSourceImpl$getSotToken$1 = new TwistTokenDataSourceImpl$getSotToken$1(this, continuationImpl);
            }
        } else {
            twistTokenDataSourceImpl$getSotToken$1 = new TwistTokenDataSourceImpl$getSotToken$1(this, continuationImpl);
        }
        Object objF = twistTokenDataSourceImpl$getSotToken$1.f43845b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistTokenDataSourceImpl$getSotToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f43823b.getF43530b();
                TwistTokenDataSourceImpl$getSotToken$2$1 twistTokenDataSourceImpl$getSotToken$2$1 = new TwistTokenDataSourceImpl$getSotToken$2$1(this, null);
                twistTokenDataSourceImpl$getSotToken$1.d = 1;
                objF = BuildersKt.f(f43530b, twistTokenDataSourceImpl$getSotToken$2$1, twistTokenDataSourceImpl$getSotToken$1);
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
            failure = new Result(new SotToken(((SotToken) objF).f66608a));
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
        Object sotToken = ((Result) failure).f71708b;
        if (Result.a(sotToken) != null) {
            sotToken = new SotToken("");
        }
        return ((SotToken) sotToken).f66608a;
    }
}
