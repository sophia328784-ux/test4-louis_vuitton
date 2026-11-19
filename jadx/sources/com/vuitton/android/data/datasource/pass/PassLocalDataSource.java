package com.vuitton.android.data.datasource.pass;

import android.content.Context;
import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.dto.pass.ContentDispositionName;
import com.vuitton.foundation.util.ResultExtKt;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.md;
import java.io.ByteArrayInputStream;
import java.io.File;
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
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB%\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource;", "", "Landroid/content/SharedPreferences;", "sharedPreferences", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatchers", "<init>", "(Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PassLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f44182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f44183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatchers f44184c;
    public boolean d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/pass/PassLocalDataSource$Companion;", "", "", "IS_USER_ELIGIBLE_FOR_PASS_KEY", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public PassLocalDataSource(SharedPreferences sharedPreferences, @ApplicationContext Context context, CoroutineDispatchers coroutineDispatchers) {
        sharedPreferences.getClass();
        context.getClass();
        coroutineDispatchers.getClass();
        this.f44182a = sharedPreferences;
        this.f44183b = context;
        this.f44184c = coroutineDispatchers;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContentDispositionName contentDispositionName, ContinuationImpl continuationImpl) throws Throwable {
        PassLocalDataSource$getCacheFile$1 passLocalDataSource$getCacheFile$1;
        Object failure;
        if (continuationImpl instanceof PassLocalDataSource$getCacheFile$1) {
            passLocalDataSource$getCacheFile$1 = (PassLocalDataSource$getCacheFile$1) continuationImpl;
            int i2 = passLocalDataSource$getCacheFile$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                passLocalDataSource$getCacheFile$1.d = i2 - Integer.MIN_VALUE;
            } else {
                passLocalDataSource$getCacheFile$1 = new PassLocalDataSource$getCacheFile$1(this, continuationImpl);
            }
        } else {
            passLocalDataSource$getCacheFile$1 = new PassLocalDataSource$getCacheFile$1(this, continuationImpl);
        }
        Object objF = passLocalDataSource$getCacheFile$1.f44185b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = passLocalDataSource$getCacheFile$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44184c.getF43530b();
                PassLocalDataSource$getCacheFile$2$1 passLocalDataSource$getCacheFile$2$1 = new PassLocalDataSource$getCacheFile$2$1(contentDispositionName, this, null);
                passLocalDataSource$getCacheFile$1.d = 1;
                objF = BuildersKt.f(f43530b, passLocalDataSource$getCacheFile$2$1, passLocalDataSource$getCacheFile$1);
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
            failure = new Result((File) objF);
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
        PassLocalDataSource$getCached3DPass$1 passLocalDataSource$getCached3DPass$1;
        if (continuationImpl instanceof PassLocalDataSource$getCached3DPass$1) {
            passLocalDataSource$getCached3DPass$1 = (PassLocalDataSource$getCached3DPass$1) continuationImpl;
            int i2 = passLocalDataSource$getCached3DPass$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                passLocalDataSource$getCached3DPass$1.d = i2 - Integer.MIN_VALUE;
            } else {
                passLocalDataSource$getCached3DPass$1 = new PassLocalDataSource$getCached3DPass$1(this, continuationImpl);
            }
        } else {
            passLocalDataSource$getCached3DPass$1 = new PassLocalDataSource$getCached3DPass$1(this, continuationImpl);
        }
        Object objF = passLocalDataSource$getCached3DPass$1.f44189b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = passLocalDataSource$getCached3DPass$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f44184c.getF43530b();
            PassLocalDataSource$getCached3DPass$2 passLocalDataSource$getCached3DPass$2 = new PassLocalDataSource$getCached3DPass$2(this, null);
            passLocalDataSource$getCached3DPass$1.d = 1;
            objF = BuildersKt.f(f43530b, passLocalDataSource$getCached3DPass$2, passLocalDataSource$getCached3DPass$1);
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
    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        PassLocalDataSource$hasPassEligibility$1 passLocalDataSource$hasPassEligibility$1;
        Object failure;
        if (continuationImpl instanceof PassLocalDataSource$hasPassEligibility$1) {
            passLocalDataSource$hasPassEligibility$1 = (PassLocalDataSource$hasPassEligibility$1) continuationImpl;
            int i2 = passLocalDataSource$hasPassEligibility$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                passLocalDataSource$hasPassEligibility$1.d = i2 - Integer.MIN_VALUE;
            } else {
                passLocalDataSource$hasPassEligibility$1 = new PassLocalDataSource$hasPassEligibility$1(this, continuationImpl);
            }
        } else {
            passLocalDataSource$hasPassEligibility$1 = new PassLocalDataSource$hasPassEligibility$1(this, continuationImpl);
        }
        Object objF = passLocalDataSource$hasPassEligibility$1.f44201b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = passLocalDataSource$hasPassEligibility$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44184c.getF43530b();
                PassLocalDataSource$hasPassEligibility$2$1 passLocalDataSource$hasPassEligibility$2$1 = new PassLocalDataSource$hasPassEligibility$2$1(this, null);
                passLocalDataSource$hasPassEligibility$1.d = 1;
                objF = BuildersKt.f(f43530b, passLocalDataSource$hasPassEligibility$2$1, passLocalDataSource$hasPassEligibility$1);
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
            Boolean bool = (Boolean) objF;
            bool.getClass();
            failure = new Result(bool);
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
        PassLocalDataSource$resetCache$1 passLocalDataSource$resetCache$1;
        Object failure;
        if (continuationImpl instanceof PassLocalDataSource$resetCache$1) {
            passLocalDataSource$resetCache$1 = (PassLocalDataSource$resetCache$1) continuationImpl;
            int i2 = passLocalDataSource$resetCache$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                passLocalDataSource$resetCache$1.d = i2 - Integer.MIN_VALUE;
            } else {
                passLocalDataSource$resetCache$1 = new PassLocalDataSource$resetCache$1(this, continuationImpl);
            }
        } else {
            passLocalDataSource$resetCache$1 = new PassLocalDataSource$resetCache$1(this, continuationImpl);
        }
        Object obj = passLocalDataSource$resetCache$1.f44204b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = passLocalDataSource$resetCache$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44184c.getF43530b();
                PassLocalDataSource$resetCache$2$1 passLocalDataSource$resetCache$2$1 = new PassLocalDataSource$resetCache$2$1(this, null);
                passLocalDataSource$resetCache$1.d = 1;
                if (BuildersKt.f(f43530b, passLocalDataSource$resetCache$2$1, passLocalDataSource$resetCache$1) == coroutineSingletons) {
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
        return ResultExtKt.a(((Result) failure).f71708b);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(ByteArrayInputStream byteArrayInputStream, ContentDispositionName contentDispositionName, ContinuationImpl continuationImpl) throws Throwable {
        PassLocalDataSource$saveCacheFile$1 passLocalDataSource$saveCacheFile$1;
        Object failure;
        if (continuationImpl instanceof PassLocalDataSource$saveCacheFile$1) {
            passLocalDataSource$saveCacheFile$1 = (PassLocalDataSource$saveCacheFile$1) continuationImpl;
            int i2 = passLocalDataSource$saveCacheFile$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                passLocalDataSource$saveCacheFile$1.d = i2 - Integer.MIN_VALUE;
            } else {
                passLocalDataSource$saveCacheFile$1 = new PassLocalDataSource$saveCacheFile$1(this, continuationImpl);
            }
        } else {
            passLocalDataSource$saveCacheFile$1 = new PassLocalDataSource$saveCacheFile$1(this, continuationImpl);
        }
        Object objF = passLocalDataSource$saveCacheFile$1.f44207b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = passLocalDataSource$saveCacheFile$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44184c.getF43530b();
                PassLocalDataSource$saveCacheFile$2$1 passLocalDataSource$saveCacheFile$2$1 = new PassLocalDataSource$saveCacheFile$2$1(this, contentDispositionName, byteArrayInputStream, null);
                passLocalDataSource$saveCacheFile$1.d = 1;
                objF = BuildersKt.f(f43530b, passLocalDataSource$saveCacheFile$2$1, passLocalDataSource$saveCacheFile$1);
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
            this.d = true;
            failure = new Result((File) objF);
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
    public final Object f(ContinuationImpl continuationImpl) throws Throwable {
        PassLocalDataSource$setUserAsEligibleForPass$1 passLocalDataSource$setUserAsEligibleForPass$1;
        Object failure;
        if (continuationImpl instanceof PassLocalDataSource$setUserAsEligibleForPass$1) {
            passLocalDataSource$setUserAsEligibleForPass$1 = (PassLocalDataSource$setUserAsEligibleForPass$1) continuationImpl;
            int i2 = passLocalDataSource$setUserAsEligibleForPass$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                passLocalDataSource$setUserAsEligibleForPass$1.d = i2 - Integer.MIN_VALUE;
            } else {
                passLocalDataSource$setUserAsEligibleForPass$1 = new PassLocalDataSource$setUserAsEligibleForPass$1(this, continuationImpl);
            }
        } else {
            passLocalDataSource$setUserAsEligibleForPass$1 = new PassLocalDataSource$setUserAsEligibleForPass$1(this, continuationImpl);
        }
        Object obj = passLocalDataSource$setUserAsEligibleForPass$1.f44211b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = passLocalDataSource$setUserAsEligibleForPass$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                DefaultIoScheduler f43530b = this.f44184c.getF43530b();
                PassLocalDataSource$setUserAsEligibleForPass$2$1 passLocalDataSource$setUserAsEligibleForPass$2$1 = new PassLocalDataSource$setUserAsEligibleForPass$2$1(this, null);
                passLocalDataSource$setUserAsEligibleForPass$1.d = 1;
                if (BuildersKt.f(f43530b, passLocalDataSource$setUserAsEligibleForPass$2$1, passLocalDataSource$setUserAsEligibleForPass$1) == coroutineSingletons) {
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
        return ResultExtKt.a(((Result) failure).f71708b);
    }
}
