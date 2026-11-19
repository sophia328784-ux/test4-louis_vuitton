package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.dispatch.DispatchLocalStorageDataSource;
import com.vuitton.android.data.datasource.dispatch.DispatchMemCacheDataSource;
import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.DispatchAreaKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl;", "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;", "localStorageDataSource", "Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;", "memCacheDataSource", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InAppDispatchRepositoryImpl implements InAppDispatchRepository {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DispatchLocalStorageDataSource f47729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DispatchMemCacheDataSource f47730c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/InAppDispatchRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public InAppDispatchRepositoryImpl(Logger logger, DispatchLocalStorageDataSource dispatchLocalStorageDataSource, DispatchMemCacheDataSource dispatchMemCacheDataSource) {
        logger.getClass();
        dispatchLocalStorageDataSource.getClass();
        dispatchMemCacheDataSource.getClass();
        this.f47728a = logger;
        this.f47729b = dispatchLocalStorageDataSource;
        this.f47730c = dispatchMemCacheDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.InAppDispatchRepository
    public final Object a(String str, ContinuationImpl continuationImpl) {
        InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1 inAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1;
        if (continuationImpl instanceof InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1) {
            inAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1 = (InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1) continuationImpl;
            int i2 = inAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                inAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                inAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1 = new InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1(this, continuationImpl);
            }
        } else {
            inAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1 = new InAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1(this, continuationImpl);
        }
        Object obj = inAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1.f47738b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = inAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            inAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1.d = 1;
            Object objF = this.f47729b.f(str, inAppDispatchRepositoryImpl$overrideUserInAppDispatchId$1);
            return objF == coroutineSingletons ? coroutineSingletons : objF;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.InAppDispatchRepository
    public final InAppDispatch b() {
        InAppDispatch inAppDispatch = this.f47730c.f44099c;
        if (inAppDispatch != null) {
            return inAppDispatch;
        }
        md.k("Error: No cache for user in app dispatch... Please review your development work! Ensure that the user in app dispatch is properly set before use. Consider moving your logic after setting the dispatch.");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0072  */
    /* JADX WARN: Code duplicated, block: B:28:0x0077  */
    /* JADX WARN: Code duplicated, block: B:29:0x007a  */
    /* JADX WARN: Code duplicated, block: B:31:0x007d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0082 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.InAppDispatchRepository
    public final Object c(List list, Continuation continuation) throws Throwable {
        InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1 inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1;
        Object obj;
        List list2;
        InAppDispatch.Id id;
        String str;
        if (continuation instanceof InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1) {
            inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1 = (InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1) continuation;
            int i2 = inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1.f47735e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1.f47735e = i2 - Integer.MIN_VALUE;
            } else {
                inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1 = new InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1(this, (ContinuationImpl) continuation);
            }
        } else {
            inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1 = new InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1(this, (ContinuationImpl) continuation);
        }
        Object obj2 = inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1.f47734c;
        Object obj3 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1.f47735e;
        if (i3 == 0) {
            ResultKt.b(obj2);
            inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1.f47733b = list;
            inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1.f47735e = 1;
            if (f(inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1) != obj3) {
            }
            return obj3;
        }
        if (i3 == 1) {
            list = inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1.f47733b;
            ResultKt.b(obj2);
            ((Result) obj2).getClass();
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            list2 = inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1.f47733b;
            ResultKt.b(obj2);
            obj = ((Result) obj2).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (obj instanceof Result.Failure) {
            obj = null;
        }
        id = (InAppDispatch.Id) obj;
        if (id != null) {
            str = id.f67486a;
        } else {
            str = null;
        }
        if (str != null) {
            return DispatchAreaKt.a(str, list2);
        }
        return null;
        inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1.f47733b = list;
        inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1.f47735e = 2;
        Object objD = this.f47729b.d(inAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1);
        if (objD != obj3) {
            List list3 = list;
            obj = objD;
            list2 = list3;
            Result.Companion companion2 = Result.INSTANCE;
            if (obj instanceof Result.Failure) {
                obj = null;
            }
            id = (InAppDispatch.Id) obj;
            if (id != null) {
                str = id.f67486a;
            } else {
                str = null;
            }
            if (str != null) {
                return DispatchAreaKt.a(str, list2);
            }
            return null;
        }
        return obj3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.InAppDispatchRepository
    public final Object d(InAppDispatch inAppDispatch, Continuation continuation) {
        InAppDispatchRepositoryImpl$saveUserInAppDispatch$1 inAppDispatchRepositoryImpl$saveUserInAppDispatch$1;
        if (continuation instanceof InAppDispatchRepositoryImpl$saveUserInAppDispatch$1) {
            inAppDispatchRepositoryImpl$saveUserInAppDispatch$1 = (InAppDispatchRepositoryImpl$saveUserInAppDispatch$1) continuation;
            int i2 = inAppDispatchRepositoryImpl$saveUserInAppDispatch$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                inAppDispatchRepositoryImpl$saveUserInAppDispatch$1.d = i2 - Integer.MIN_VALUE;
            } else {
                inAppDispatchRepositoryImpl$saveUserInAppDispatch$1 = new InAppDispatchRepositoryImpl$saveUserInAppDispatch$1(this, (ContinuationImpl) continuation);
            }
        } else {
            inAppDispatchRepositoryImpl$saveUserInAppDispatch$1 = new InAppDispatchRepositoryImpl$saveUserInAppDispatch$1(this, (ContinuationImpl) continuation);
        }
        Object obj = inAppDispatchRepositoryImpl$saveUserInAppDispatch$1.f47740b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = inAppDispatchRepositoryImpl$saveUserInAppDispatch$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        DispatchMemCacheDataSource dispatchMemCacheDataSource = this.f47730c;
        dispatchMemCacheDataSource.getClass();
        inAppDispatch.getClass();
        dispatchMemCacheDataSource.f44099c = inAppDispatch;
        String str = inAppDispatch.f67476a;
        inAppDispatchRepositoryImpl$saveUserInAppDispatch$1.d = 1;
        Object objF = this.f47729b.f(str, inAppDispatchRepositoryImpl$saveUserInAppDispatch$1);
        return objF == coroutineSingletons ? coroutineSingletons : objF;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.InAppDispatchRepository
    public final Object e(Continuation continuation) {
        InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1 inAppDispatchRepositoryImpl$cleanUserInAppDispatch$1;
        if (continuation instanceof InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1) {
            inAppDispatchRepositoryImpl$cleanUserInAppDispatch$1 = (InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1) continuation;
            int i2 = inAppDispatchRepositoryImpl$cleanUserInAppDispatch$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                inAppDispatchRepositoryImpl$cleanUserInAppDispatch$1.d = i2 - Integer.MIN_VALUE;
            } else {
                inAppDispatchRepositoryImpl$cleanUserInAppDispatch$1 = new InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1(this, (ContinuationImpl) continuation);
            }
        } else {
            inAppDispatchRepositoryImpl$cleanUserInAppDispatch$1 = new InAppDispatchRepositoryImpl$cleanUserInAppDispatch$1(this, (ContinuationImpl) continuation);
        }
        Object obj = inAppDispatchRepositoryImpl$cleanUserInAppDispatch$1.f47731b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = inAppDispatchRepositoryImpl$cleanUserInAppDispatch$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.f47730c.f44099c = null;
        inAppDispatchRepositoryImpl$cleanUserInAppDispatch$1.d = 1;
        Object objB = this.f47729b.b(inAppDispatchRepositoryImpl$cleanUserInAppDispatch$1);
        return objB == coroutineSingletons ? coroutineSingletons : objB;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x009b  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a3 A[Catch: all -> 0x0036, TRY_ENTER, TryCatch #0 {all -> 0x0036, blocks: (B:13:0x002d, B:44:0x00ae, B:41:0x00a3), top: B:54:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ab, code lost:
    
        if (r8 == r1) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.InAppDispatchRepositoryImpl.f(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
