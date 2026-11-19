package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableIntervalRange extends Observable<Long> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Scheduler f70628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70629c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f70630e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f70631f;
    public final TimeUnit g;

    public static final class IntervalRangeObserver extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 1891866368734007884L;
        long count;
        final Observer<? super Long> downstream;
        final long end;

        public IntervalRangeObserver(Observer<? super Long> observer, long j2, long j3) {
            this.downstream = observer;
            this.count = j2;
            this.end = j3;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.a(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (isDisposed()) {
                return;
            }
            long j2 = this.count;
            this.downstream.onNext(Long.valueOf(j2));
            if (j2 != this.end) {
                this.count = j2 + 1;
                return;
            }
            if (!isDisposed()) {
                this.downstream.onComplete();
            }
            DisposableHelper.a(this);
        }

        public void setResource(Disposable disposable) {
            DisposableHelper.e(this, disposable);
        }
    }

    public ObservableIntervalRange(long j2, long j3, long j4, long j5, TimeUnit timeUnit, Scheduler scheduler) {
        this.f70630e = j4;
        this.f70631f = j5;
        this.g = timeUnit;
        this.f70628b = scheduler;
        this.f70629c = j2;
        this.d = j3;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        IntervalRangeObserver intervalRangeObserver = new IntervalRangeObserver(observer, this.f70629c, this.d);
        observer.onSubscribe(intervalRangeObserver);
        Scheduler scheduler = this.f70628b;
        if (!(scheduler instanceof TrampolineScheduler)) {
            intervalRangeObserver.setResource(scheduler.e(intervalRangeObserver, this.f70630e, this.f70631f, this.g));
        } else {
            Scheduler.Worker workerB = scheduler.b();
            intervalRangeObserver.setResource(workerB);
            workerB.schedulePeriodically(intervalRangeObserver, this.f70630e, this.f70631f, this.g);
        }
    }
}
