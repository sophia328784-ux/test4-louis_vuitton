package androidx.paging;

import defpackage.md;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\bB\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Landroidx/paging/SingleRunner;", "", "", "cancelPreviousInEqualPriority", "<init>", "(Z)V", "CancelIsolatedRunnerException", "Companion", "Holder", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SingleRunner {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f18954b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Holder f18955a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/paging/SingleRunner$CancelIsolatedRunnerException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "Landroidx/paging/SingleRunner;", "runner", "<init>", "(Landroidx/paging/SingleRunner;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class CancelIsolatedRunnerException extends CancellationException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleRunner f18956b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CancelIsolatedRunnerException(SingleRunner singleRunner) {
            super("Cancelled isolated runner");
            singleRunner.getClass();
            this.f18956b = singleRunner;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/SingleRunner$Companion;", "", "", "DEFAULT_PRIORITY", "I", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/paging/SingleRunner$Holder;", "", "Landroidx/paging/SingleRunner;", "singleRunner", "", "cancelPreviousInEqualPriority", "<init>", "(Landroidx/paging/SingleRunner;Z)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Holder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SingleRunner f18957a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f18958b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MutexImpl f18959c;
        public Job d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f18960e;

        public Holder(SingleRunner singleRunner, boolean z) {
            singleRunner.getClass();
            this.f18957a = singleRunner;
            this.f18958b = z;
            this.f18959c = MutexKt.a();
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object a(Job job, ContinuationImpl continuationImpl) {
            SingleRunner$Holder$onFinish$1 singleRunner$Holder$onFinish$1;
            MutexImpl mutexImpl;
            if (continuationImpl instanceof SingleRunner$Holder$onFinish$1) {
                singleRunner$Holder$onFinish$1 = (SingleRunner$Holder$onFinish$1) continuationImpl;
                int i2 = singleRunner$Holder$onFinish$1.g;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    singleRunner$Holder$onFinish$1.g = i2 - Integer.MIN_VALUE;
                } else {
                    singleRunner$Holder$onFinish$1 = new SingleRunner$Holder$onFinish$1(this, continuationImpl);
                }
            } else {
                singleRunner$Holder$onFinish$1 = new SingleRunner$Holder$onFinish$1(this, continuationImpl);
            }
            Object obj = singleRunner$Holder$onFinish$1.f18963e;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = singleRunner$Holder$onFinish$1.g;
            if (i3 == 0) {
                ResultKt.b(obj);
                singleRunner$Holder$onFinish$1.f18961b = this;
                singleRunner$Holder$onFinish$1.f18962c = job;
                mutexImpl = this.f18959c;
                singleRunner$Holder$onFinish$1.d = mutexImpl;
                singleRunner$Holder$onFinish$1.g = 1;
                if (mutexImpl.c(singleRunner$Holder$onFinish$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                MutexImpl mutexImpl2 = singleRunner$Holder$onFinish$1.d;
                job = singleRunner$Holder$onFinish$1.f18962c;
                Holder holder = (Holder) singleRunner$Holder$onFinish$1.f18961b;
                ResultKt.b(obj);
                mutexImpl = mutexImpl2;
                this = holder;
            }
            try {
                if (job == this.d) {
                    this.d = null;
                }
                return Unit.f71739a;
            } finally {
                mutexImpl.d(null);
            }
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object b(int i2, Job job, ContinuationImpl continuationImpl) {
            SingleRunner$Holder$tryEnqueue$1 singleRunner$Holder$tryEnqueue$1;
            Mutex mutex;
            Holder holder;
            int i3;
            Mutex mutex2;
            int i4;
            if (continuationImpl instanceof SingleRunner$Holder$tryEnqueue$1) {
                singleRunner$Holder$tryEnqueue$1 = (SingleRunner$Holder$tryEnqueue$1) continuationImpl;
                int i5 = singleRunner$Holder$tryEnqueue$1.f18969h;
                if ((i5 & Integer.MIN_VALUE) != 0) {
                    singleRunner$Holder$tryEnqueue$1.f18969h = i5 - Integer.MIN_VALUE;
                } else {
                    singleRunner$Holder$tryEnqueue$1 = new SingleRunner$Holder$tryEnqueue$1(this, continuationImpl);
                }
            } else {
                singleRunner$Holder$tryEnqueue$1 = new SingleRunner$Holder$tryEnqueue$1(this, continuationImpl);
            }
            Object obj = singleRunner$Holder$tryEnqueue$1.f18968f;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i6 = singleRunner$Holder$tryEnqueue$1.f18969h;
            boolean z = true;
            try {
                if (i6 == 0) {
                    ResultKt.b(obj);
                    singleRunner$Holder$tryEnqueue$1.f18965b = this;
                    singleRunner$Holder$tryEnqueue$1.f18966c = job;
                    mutex = this.f18959c;
                    singleRunner$Holder$tryEnqueue$1.d = mutex;
                    singleRunner$Holder$tryEnqueue$1.f18967e = i2;
                    singleRunner$Holder$tryEnqueue$1.f18969h = 1;
                    if (mutex.c(singleRunner$Holder$tryEnqueue$1) != coroutineSingletons) {
                    }
                    return coroutineSingletons;
                }
                if (i6 != 1) {
                    if (i6 != 2) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    i3 = singleRunner$Holder$tryEnqueue$1.f18967e;
                    mutex2 = singleRunner$Holder$tryEnqueue$1.d;
                    job = singleRunner$Holder$tryEnqueue$1.f18966c;
                    holder = (Holder) singleRunner$Holder$tryEnqueue$1.f18965b;
                    try {
                        ResultKt.b(obj);
                        mutex = mutex2;
                        i2 = i3;
                        this = holder;
                        this.d = job;
                        this.f18960e = i2;
                        mutex2 = mutex;
                        Boolean boolValueOf = Boolean.valueOf(z);
                        mutex2.d(null);
                        return boolValueOf;
                    } catch (Throwable th) {
                        th = th;
                        mutex2.d(null);
                        throw th;
                    }
                }
                i2 = singleRunner$Holder$tryEnqueue$1.f18967e;
                Mutex mutex3 = singleRunner$Holder$tryEnqueue$1.d;
                job = singleRunner$Holder$tryEnqueue$1.f18966c;
                Holder holder2 = (Holder) singleRunner$Holder$tryEnqueue$1.f18965b;
                ResultKt.b(obj);
                mutex = mutex3;
                this = holder2;
                Job job2 = this.d;
                if (job2 == null || !job2.isActive() || (i4 = this.f18960e) < i2 || (i4 == i2 && this.f18958b)) {
                    if (job2 != null) {
                        job2.cancel(new CancelIsolatedRunnerException(this.f18957a));
                    }
                    if (job2 != null) {
                        singleRunner$Holder$tryEnqueue$1.f18965b = this;
                        singleRunner$Holder$tryEnqueue$1.f18966c = job;
                        singleRunner$Holder$tryEnqueue$1.d = mutex;
                        singleRunner$Holder$tryEnqueue$1.f18967e = i2;
                        singleRunner$Holder$tryEnqueue$1.f18969h = 2;
                        if (job2.join(singleRunner$Holder$tryEnqueue$1) != coroutineSingletons) {
                            holder = this;
                            i3 = i2;
                            mutex2 = mutex;
                            mutex = mutex2;
                            i2 = i3;
                            this = holder;
                        }
                        return coroutineSingletons;
                    }
                    this.d = job;
                    this.f18960e = i2;
                } else {
                    z = false;
                }
                mutex2 = mutex;
                Boolean boolValueOf2 = Boolean.valueOf(z);
                mutex2.d(null);
                return boolValueOf2;
            } catch (Throwable th2) {
                th = th2;
                mutex2 = mutex;
                mutex2.d(null);
                throw th;
            }
        }
    }

    static {
        new Companion(null);
    }

    public SingleRunner(boolean z) {
        this.f18955a = new Holder(this, z);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.paging.SingleRunner] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public final Object a(int i2, Function1 function1, ContinuationImpl continuationImpl) {
        SingleRunner$runInIsolation$1 singleRunner$runInIsolation$1;
        if (continuationImpl instanceof SingleRunner$runInIsolation$1) {
            singleRunner$runInIsolation$1 = (SingleRunner$runInIsolation$1) continuationImpl;
            int i3 = singleRunner$runInIsolation$1.f18972e;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                singleRunner$runInIsolation$1.f18972e = i3 - Integer.MIN_VALUE;
            } else {
                singleRunner$runInIsolation$1 = new SingleRunner$runInIsolation$1(this, continuationImpl);
            }
        } else {
            singleRunner$runInIsolation$1 = new SingleRunner$runInIsolation$1(this, continuationImpl);
        }
        Object obj = singleRunner$runInIsolation$1.f18971c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = singleRunner$runInIsolation$1.f18972e;
        try {
            if (i4 == 0) {
                ResultKt.b(obj);
                SingleRunner$runInIsolation$2 singleRunner$runInIsolation$2 = new SingleRunner$runInIsolation$2(this, i2, function1, null);
                singleRunner$runInIsolation$1.f18970b = this;
                singleRunner$runInIsolation$1.f18972e = 1;
                Object objD = CoroutineScopeKt.d(singleRunner$runInIsolation$2, singleRunner$runInIsolation$1);
                this = objD;
                if (objD == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i4 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                SingleRunner singleRunner = singleRunner$runInIsolation$1.f18970b;
                ResultKt.b(obj);
                this = singleRunner;
            }
        } catch (CancelIsolatedRunnerException e2) {
            if (e2.f18956b != this) {
                throw e2;
            }
        }
        return Unit.f71739a;
    }

    public SingleRunner() {
        this(false, 1, null);
    }

    public /* synthetic */ SingleRunner(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z);
    }
}
