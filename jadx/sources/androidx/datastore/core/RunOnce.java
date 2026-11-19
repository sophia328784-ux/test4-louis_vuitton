package androidx.datastore.core;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/datastore/core/RunOnce;", "", "<init>", "()V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class RunOnce {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutexImpl f12814a = MutexKt.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompletableDeferred f12815b = CompletableDeferredKt.a();

    public abstract Object a(ContinuationImpl continuationImpl);

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        RunOnce$runIfNeeded$1 runOnce$runIfNeeded$1;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        RunOnce runOnce;
        if (continuationImpl instanceof RunOnce$runIfNeeded$1) {
            runOnce$runIfNeeded$1 = (RunOnce$runIfNeeded$1) continuationImpl;
            int i2 = runOnce$runIfNeeded$1.f12819f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                runOnce$runIfNeeded$1.f12819f = i2 - Integer.MIN_VALUE;
            } else {
                runOnce$runIfNeeded$1 = new RunOnce$runIfNeeded$1(this, continuationImpl);
            }
        } else {
            runOnce$runIfNeeded$1 = new RunOnce$runIfNeeded$1(this, continuationImpl);
        }
        Object obj = runOnce$runIfNeeded$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = runOnce$runIfNeeded$1.f12819f;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                if (this.f12815b.isCompleted()) {
                    return Unit.f71739a;
                }
                runOnce$runIfNeeded$1.f12816b = this;
                mutex = this.f12814a;
                runOnce$runIfNeeded$1.f12817c = mutex;
                runOnce$runIfNeeded$1.f12819f = 1;
                if (mutex.c(runOnce$runIfNeeded$1) != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutex2 = runOnce$runIfNeeded$1.f12817c;
                runOnce = runOnce$runIfNeeded$1.f12816b;
                try {
                    ResultKt.b(obj);
                    CompletableDeferred completableDeferred = runOnce.f12815b;
                    Unit unit = Unit.f71739a;
                    completableDeferred.g(unit);
                    mutex2.d(null);
                    return unit;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.d(null);
                    throw th;
                }
            }
            Mutex mutex3 = runOnce$runIfNeeded$1.f12817c;
            RunOnce runOnce2 = runOnce$runIfNeeded$1.f12816b;
            ResultKt.b(obj);
            mutex = mutex3;
            this = runOnce2;
            if (this.f12815b.isCompleted()) {
                Unit unit2 = Unit.f71739a;
                mutex.d(null);
                return unit2;
            }
            runOnce$runIfNeeded$1.f12816b = this;
            runOnce$runIfNeeded$1.f12817c = mutex;
            runOnce$runIfNeeded$1.f12819f = 2;
            if (this.a(runOnce$runIfNeeded$1) != coroutineSingletons) {
                runOnce = this;
                mutex2 = mutex;
                CompletableDeferred completableDeferred2 = runOnce.f12815b;
                Unit unit3 = Unit.f71739a;
                completableDeferred2.g(unit3);
                mutex2.d(null);
                return unit3;
            }
            return coroutineSingletons;
        } catch (Throwable th3) {
            Mutex mutex4 = mutex;
            th = th3;
            mutex2 = mutex4;
            mutex2.d(null);
            throw th;
        }
    }
}
